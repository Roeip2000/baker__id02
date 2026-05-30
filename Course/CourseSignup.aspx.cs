using System;
using System.Data;
using System.Data.SqlClient;

public partial class CourseSignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    // הפעולה הזו רצה כשלוחצים על כפתור ההרשמה
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // אם אחד משדות החובה ריק - לא ממשיכים בהרשמה
        if (!Page.IsValid) return;

        // פותחים חיבור למסד הנתונים (נסגר אוטומטית בסוף ה-using)
        using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
        {
            conn.Open();

            // שלב 1: בודקים אם שם המשתמש כבר קיים בטבלה
            string checkSql = "SELECT uName FROM Users WHERE uName=@uName";
            SqlCommand checkCmd = new SqlCommand(checkSql, conn);
            checkCmd.Parameters.AddWithValue("@uName", txtUserName.Text.Trim());

            // ממלאים את התוצאה בטבלה זמנית בזיכרון
            SqlDataAdapter da = new SqlDataAdapter(checkCmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            // אם נמצאה שורה - השם כבר תפוס, מציגים הודעה ועוצרים
            if (dt.Rows.Count > 0)
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "שם משתמש כבר קיים, בחר שם אחר";
                return;
            }

            // שלב 2: השם פנוי - מוסיפים את המשתמש החדש לטבלת Users
            string insertSql = "INSERT INTO Users (uName, fName, gender, pw) VALUES (@uName, @fName, @gender, @pw)";
            SqlCommand insertCmd = new SqlCommand(insertSql, conn);
            insertCmd.Parameters.AddWithValue("@uName", txtUserName.Text.Trim());
            insertCmd.Parameters.AddWithValue("@fName", txtFirstName.Text.Trim());
            insertCmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
            insertCmd.Parameters.AddWithValue("@pw", txtPassword.Text.Trim());
            insertCmd.ExecuteNonQuery();
        }

        // מציגים הודעת הצלחה למשתמש
        lblMsg.ForeColor = System.Drawing.Color.Green;
        lblMsg.Text = "ההרשמה בוצעה בהצלחה!";
    }
}
