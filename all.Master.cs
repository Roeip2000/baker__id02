using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace baker_ido
{
    public partial class all : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // אם המשתמש מחובר, מציגים קישור לאזור הקורס וכפתור התנתקות
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
            // ניקוי פרטי ההתחברות וחזרה לדף הראשי
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/main.aspx");
        }
    }
}
