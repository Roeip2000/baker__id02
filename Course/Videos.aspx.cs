using System;

public partial class Videos : System.Web.UI.Page
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
