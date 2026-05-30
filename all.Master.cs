using System;

namespace baker_ido
{
    public partial class all : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // משנה את התפריט בהתאם לשאלה אם המשתמש מחובר
            lnkCourseArea.Visible = Session["uName"] != null;
        }
    }
}
