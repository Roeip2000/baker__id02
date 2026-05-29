using System;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // If the user is already logged in, send them to the course area
        if (Session["uName"] != null)
        {
            Response.Redirect("~/Course/CourseArea.aspx");
            return;
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // This stops the login code if required fields are empty
        if (!Page.IsValid) return;

        string uName = txtUserName.Text.Trim();
        string pw = txtPassword.Text.Trim();
        string nextPage = "";

        try
        {
            using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
            {
                // This checks if the username and password match a user in the database
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
                    // Session remembers the logged-in user while they move between pages
                    Session["uName"] = dt.Rows[0]["uName"].ToString();
                    Session["fName"] = dt.Rows[0]["fName"].ToString();
                    bool isAdmin = false;
                    if (dt.Rows[0]["isAdmin"] != DBNull.Value)
                    {
                        isAdmin = Convert.ToBoolean(dt.Rows[0]["isAdmin"]);
                    }

                    Session["isAdmin"] = isAdmin;

                    // isAdmin decides if the user should go to the admin page or course page
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
                    lblError.Text = "שם משתמש או סיסמה לא נכונים";
                    lblError.Visible = true;
                }
            }
        }
        catch (Exception)
        {
            lblError.Text = "הייתה שגיאה. נסה שוב";
            lblError.Visible = true;
        }

        if (nextPage != "")
        {
            // This sends the user to the correct page after login
            Response.Redirect(nextPage);
            return;
        }
    }
}
