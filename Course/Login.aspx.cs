using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // אם המשתמש כבר מחובר, נשלח אותו ישירות לאזור הקורס
        if (Session["uName"] != null)
            Response.Redirect("~/Course/CourseArea.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // בדיקה אם כל הולידטורים (בדיקות התקינות) ב-HTML עברו
        if (!Page.IsValid) return;

        string uName = txtUserName.Text.Trim();
        string pw = txtPassword.Text.Trim();

        // שימוש ב-Helper להתחברות למסד הנתונים
        using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
        {
            // שאילתה מאובטחת עם פרמטרים למניעת SQL Injection
            SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE uName=@uName AND pw=@pw", conn);
            cmd.Parameters.AddWithValue("@uName", uName);
            cmd.Parameters.AddWithValue("@pw", pw);

            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            // אם נמצאה שורה אחת לפחות, המשתמש קיים והפרטים נכונים
            if (dt.Rows.Count > 0)
            {
                // 1. שמירת שם המשתמש ב-Session לזיהוי לאורך האתר
                Session["uName"] = dt.Rows[0]["uName"].ToString();

                // 2. שמירת השם הפרטי להצגת הודעת "ברוך הבא" אישית
                Session["fName"] = dt.Rows[0]["fName"].ToString();

                // 3. השורה החשובה: משיכת ערך המנהל מהטבלה ושמירתו
                // זה מה שמאפשר לדף ה-Admin לדעת שאתה מורשה להיכנס
                Session["isAdmin"] = (bool)dt.Rows[0]["isAdmin"];

                // 4. בדיקה לאן להפנות את המשתמש
                if ((bool)Session["isAdmin"] == true)
                {
                    // אם הוא מנהל - נשלח אותו ישר לדף ניהול המשתמשים
                    Response.Redirect("~/Admin/Users.aspx");
                }
                else
                {
                    // אם הוא משתמש רגיל - נשלח אותו לאזור הקורס
                    Response.Redirect("~/Course/CourseArea.aspx");
                }
            }
            else
            {
                // אם לא נמצא משתמש - הצגת הודעת שגיאה
                lblError.Text = "שם משתמש או סיסמה שגויים";
                lblError.Visible = true;
            }
        }
    }
}