using System;

namespace baker_ido
{
    public partial class all : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This changes the menu according to whether the user is logged in
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
            // This clears Session so the user is logged out
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/main.aspx");
            return;
        }
    }
}
