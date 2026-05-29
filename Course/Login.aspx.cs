using System;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // אם המשתמש כבר מחובר, שולחים אותו לאזור הקורס
        if (Session["uName"] != null)
        {
            Response.Redirect("~/Course/CourseArea.aspx");
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // עוצר את ההתחברות אם שדות החובה ריקים
        if (!Page.IsValid) return;

        string uName = txtUserName.Text.Trim();
        string pw = txtPassword.Text.Trim();
        bool isAdmin = false;

        // פותח את מסד הנתונים ובודק אם שם המשתמש והסיסמה תואמים למשתמש
        using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
        {
            string sql = "SELECT uName, fName, isAdmin FROM Users WHERE uName=@uName AND pw=@pw";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@uName", uName);
            cmd.Parameters.AddWithValue("@pw", pw);

            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            // אם לא נמצאה שורה - שם המשתמש או הסיסמה שגויים
            if (dt.Rows.Count == 0)
            {
                lblError.Text = "שם משתמש או סיסמה לא נכונים";
                lblError.Visible = true;
                return;
            }

            // ה-Session זוכר את המשתמש המחובר בזמן שהוא עובר בין דפים
            Session["uName"] = dt.Rows[0]["uName"].ToString();
            Session["fName"] = dt.Rows[0]["fName"].ToString();

            // בודק אם המשתמש מנהל (אם השדה ריק במסד נחשב כלא מנהל)
            isAdmin = dt.Rows[0]["isAdmin"] != DBNull.Value && Convert.ToBoolean(dt.Rows[0]["isAdmin"]);
            Session["isAdmin"] = isAdmin;
        }

        // מנהל עובר לדף הניהול, ומשתמש רגיל עובר לאזור הקורס
        if (isAdmin)
        {
            Response.Redirect("~/Admin/Users.aspx");
        }
        else
        {
            Response.Redirect("~/Course/CourseArea.aspx");
        }
    }
}
