using System;
using System.Data;

namespace baker_ido
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uName"] == null)
            {
                Response.Redirect("~/Course/Login.aspx");
                return;
            }

            bool isAdmin = Session["isAdmin"] != null && (bool)Session["isAdmin"];

            if (!isAdmin)
            {
                Response.Redirect("~/NoAdmin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                BindUsers();
            }
        }

        private void BindUsers()
        {
            try
            {
                string fileName = "Database1.mdf";
                string sql = "SELECT uName, fName, lName, email, city, isAdmin FROM Users";

                DataTable dt = Helper.ExecuteDataTable(fileName, sql);

                gvUsers.DataSource = dt;
                gvUsers.DataBind();
                lblCount.Text = dt.Rows.Count.ToString();
            }
            catch (Exception)
            {
                lblCount.Text = "בעיה בטעינת הנרשמים";
            }
        }
    }
}
