using System;

namespace baker_ido
{
    public partial class all : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // משנה את התפריט בהתאם לשאלה אם המשתמש מחובר
            if (Session["uName"] != null)
            {
                lnkCourseArea.Visible = true;
                btnLogout.Visible = true;
            }
            else
            {
                lnkCourseArea.Visible = false;
                btnLogout.Visible = false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // מנקה את ה-Session כדי לנתק את המשתמש
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Pages/main.aspx");
        }
    }
}
