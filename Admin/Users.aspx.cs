using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baker_ido
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // רק משתמש מחובר יכול להיכנס לדף הניהול
            if (Session["uName"] == null)
            {
                Response.Redirect("~/Course/Login.aspx");
                return;
            }

            // רק מנהל יכול לראות את רשימת המשתמשים
            bool isAdmin = false;
            if (Session["isAdmin"] != null)
            {
                try
                {
                    isAdmin = Convert.ToBoolean(Session["isAdmin"]);
                }
                catch (Exception)
                {
                    isAdmin = false;
                }
            }

            if (isAdmin == false)
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

                // לא מציגים סיסמאות בדף הניהול
                string sql = "SELECT uName, fName, lName, email, city, isAdmin FROM Users";

                DataTable dt = Helper.ExecuteDataTable(fileName, sql);

                if (dt != null)
                {
                    gvUsers.DataSource = dt;
                    gvUsers.DataBind();

                    if (lblCount != null)
                    {
                        lblCount.Text = "סה\"כ נרשמים באתר: " + dt.Rows.Count.ToString();
                    }
                }
            }
            catch (Exception)
            {
                if (lblCount != null)
                {
                    lblCount.Text = "שגיאה בטעינת רשימת המשתמשים";
                }
            }
        }
    }
}
