using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // אם המשתמש כבר מחובר, נעביר אותו לאזור הקורס
        if (Session["uName"] != null)
            Response.Redirect("~/Course/CourseArea.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // בדיקה שכל שדות החובה מולאו
        if (!Page.IsValid) return;

        string uName = txtUserName.Text.Trim();
        string pw = txtPassword.Text.Trim();
        string nextPage = "";

        try
        {
            using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
            {
                // שימוש בפרמטרים מגן על השאילתה מקלט לא תקין
                string sql = "SELECT uName, fName, isAdmin FROM Users WHERE uName=@uName AND pw=@pw";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@uName", uName);
                cmd.Parameters.AddWithValue("@pw", pw);

                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    Session["uName"] = dt.Rows[0]["uName"].ToString();
                    Session["fName"] = dt.Rows[0]["fName"].ToString();
                    bool isAdmin = false;
                    if (dt.Rows[0]["isAdmin"] != DBNull.Value)
                    {
                        isAdmin = Convert.ToBoolean(dt.Rows[0]["isAdmin"]);
                    }

                    Session["isAdmin"] = isAdmin;

                    if (isAdmin)
                    {
                        nextPage = "~/Admin/Users.aspx";
                    }
                    else
                    {
                        nextPage = "~/Course/CourseArea.aspx";
                    }
                }
                else
                {
                    lblError.Text = "שם משתמש או סיסמה שגויים";
                    lblError.Visible = true;
                }
            }
        }
        catch (Exception)
        {
            lblError.Text = "שגיאה בחיבור למסד הנתונים";
            lblError.Visible = true;
        }

        if (nextPage != "")
        {
            Response.Redirect(nextPage);
        }
    }
}
