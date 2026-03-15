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
            bool loggedIn = Session["uName"] != null;
            btnLogout.Visible = loggedIn;
            lnkCourseArea.Visible = loggedIn;
            lnkLogin.Visible = !loggedIn;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Course/Login.aspx");
        }
    }
}
