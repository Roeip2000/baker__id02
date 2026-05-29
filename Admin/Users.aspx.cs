using System;
using System.Data;

namespace baker_ido
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // חוסם משתמשים שאינם מחוברים
            if (Session["uName"] == null)
            {
                Response.Redirect("~/Course/Login.aspx");
                return;
            }

            // בודק אם המשתמש המחובר הוא מנהל
            bool isAdmin = Session["isAdmin"] != null && (bool)Session["isAdmin"];

            // משתמשים רגילים נשלחים לדף "אין הרשאה"
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
                // שאילתת SELECT זו מביאה את העמודות שמוצגות בטבלת הניהול
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
