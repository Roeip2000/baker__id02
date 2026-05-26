using System;

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
            if (Session["fName"] != null)
            {
                lblName.Text = Session["fName"].ToString();
            }
            else
            {
                lblName.Text = Session["uName"].ToString();
            }
        }
    }
}
