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
            }

            // בודק אם המשתמש המחובר הוא מנהל
            bool isAdmin = Session["isAdmin"] != null && (bool)Session["isAdmin"];

            // משתמשים רגילים נשלחים לדף "אין הרשאה"
            if (!isAdmin)
            {
                Response.Redirect("~/NoAdmin.aspx");
            }

            if (!IsPostBack)
            {
                BindUsers();
            }
        }

        private void BindUsers()
        {
            // שאילתת SELECT זו מביאה את העמודות שמוצגות בטבלת הניהול
            string sql = "SELECT uName, fName, gender, isAdmin FROM Users";
            DataTable dt = Helper.ExecuteDataTable("Database1.mdf", sql);

            gvUsers.DataSource = dt;
            gvUsers.DataBind();
            lblCount.Text = dt.Rows.Count.ToString();
        }
    }
}
