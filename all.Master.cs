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
                lnkLogin.Visible = false;
                lnkCourseArea.Visible = true;
                btnLogout.Visible = true;
            }
            else
            {
                lnkLogin.Visible = true;
                lnkCourseArea.Visible = false;
                btnLogout.Visible = false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // מנקה את ה-Session כדי לנתק את המשתמש
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/main.aspx");
            return;
        }
    }
}
