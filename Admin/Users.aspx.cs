using System;
using System.Data;

namespace baker_ido
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This blocks users who are not logged in
            if (Session["uName"] == null)
            {
                Response.Redirect("~/Course/Login.aspx");
                return;
            }

            // This checks if the logged-in user is an admin
            bool isAdmin = Session["isAdmin"] != null && (bool)Session["isAdmin"];

            // Regular users are sent to the no-permission page
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
                // This SELECT query gets the columns shown in the admin GridView
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
