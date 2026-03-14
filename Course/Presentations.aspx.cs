using System;
using System.Web.UI;

public partial class Presentations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uName"] == null)
        {
            Response.Redirect("~/Course/Login.aspx");
            return;
        }
    }
}
