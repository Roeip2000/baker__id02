using System;

public partial class CourseArea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // דף זה נפתח רק אם המשתמש מחובר
        if (Session["uName"] == null)
        {
            Response.Redirect("~/Course/Login.aspx");
            return;
        }

        if (!IsPostBack)
        {
            // מציג את שם המשתמש הפרטי אם הוא נשמר ב-Session
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
