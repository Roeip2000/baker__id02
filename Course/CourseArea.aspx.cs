using System;
using System.Web.UI;

public partial class CourseArea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uName"] == null)
        {
            Response.Redirect("~/Course/Login.aspx");
            return;
        }

        if (!IsPostBack)
        {
            lblName.Text = Session["fName"] != null
                ? Session["fName"].ToString()
                : Session["uName"].ToString();
        }
    }
}
