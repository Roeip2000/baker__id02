using System;
using System.Data;
using System.Web.UI;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uName"] != null)
            Response.Redirect("~/Course/CourseArea.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string uName = txtUserName.Text.Trim();
        string pw = txtPassword.Text.Trim();

        string sql = "SELECT * FROM Users WHERE uName='" + uName + "' AND pw='" + pw + "'";
        DataTable dt = Helper.ExecuteDataTable("Database1.mdf", sql);

        if (dt.Rows.Count > 0)
        {
            Session["uName"] = dt.Rows[0]["uName"].ToString();
            Session["fName"] = dt.Rows[0]["fName"].ToString();
            Response.Redirect("~/Course/CourseArea.aspx");
        }
        else
        {
            lblError.Text = "שם משתמש או סיסמה שגויים";
            lblError.Visible = true;
        }
    }
}
