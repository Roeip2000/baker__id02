using System;
using System.Data;
using System.Data.SqlClient;
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
        if (!Page.IsValid) return;

        string uName = txtUserName.Text.Trim();
        string pw = txtPassword.Text.Trim();

        using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE uName=@uName AND pw=@pw", conn);
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
                Response.Redirect("~/Course/CourseArea.aspx");
            }
            else
            {
                lblError.Text = "שם משתמש או סיסמה שגויים";
                lblError.Visible = true;
            }
        }
    }
}
