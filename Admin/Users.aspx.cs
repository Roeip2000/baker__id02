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
            // 1. אבטחה: מוודא שהמשתמש מחובר
            if (Session["uName"] == null)
            {
                Response.Redirect("~/Course/Login.aspx");
                return;
            }

            // 2. הרשאות: מוודא שרק מנהל (isAdmin=1) נכנס לדף
            if (Session["isAdmin"] == null || (bool)Session["isAdmin"] == false)
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
            // שם קובץ ה-Database בתיקיית App_Data
            string fileName = "Database1.mdf";

            // שאילתה עם שמות העמודות המדויקים מה-SQL שלך
            string sql = "SELECT uName, fName, lName, email, city, pw, isAdmin FROM Users";

            // קריאה ל-Helper (שם הפעולה חייב להיות ExecuteDataTable)
            DataTable dt = Helper.ExecuteDataTable(fileName, sql);

            if (dt != null)
            {
                // קישור הנתונים לטבלה gvUsers
                gvUsers.DataSource = dt;
                gvUsers.DataBind();

                // עדכון המונה lblCount
                if (lblCount != null)
                {
                    lblCount.Text = "סה\"כ נרשמים באתר: " + dt.Rows.Count.ToString();
                }
            }
        }
    }
}