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
            btnLogout.Visible = Session["uName"] != null;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Course/Login.aspx");
        }
    }
}
