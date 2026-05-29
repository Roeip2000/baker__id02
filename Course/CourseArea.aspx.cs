using System;

public partial class CourseArea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // This page opens only if the user is logged in
        if (Session["uName"] == null)
        {
            Response.Redirect("~/Course/Login.aspx");
            return;
        }

        if (!IsPostBack)
        {
            // This shows the user's first name if it was saved in Session
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
