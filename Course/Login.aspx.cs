using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using baker__id02.DAL;

namespace baker__id02
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uName = txtUserName.Text.Trim();
            string pw = txtPassword.Text.Trim();

            if (uName == "" || pw == "")
            {
                lblMsg.Text = "יש למלא שם משתמש וסיסמה";
                return;
            }

            string sql = "SELECT * FROM Users WHERE uName=@uName AND pw=@pw";

            using (SqlConnection con = DBHelper.GetConnection())
            {
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@uName", uName);
                cmd.Parameters.AddWithValue("@pw", pw);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["uName"] = ds.Tables[0].Rows[0]["uName"].ToString();
                    Session["fName"] = ds.Tables[0].Rows[0]["fName"].ToString();
                    Response.Redirect("CourseArea.aspx");
                }
                else
                {
                    lblMsg.Text = "שם משתמש או סיסמה שגויים";
                }
            }
        }
    }
}
