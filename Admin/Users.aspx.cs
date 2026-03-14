using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using baker__id02.DAL;

namespace baker__id02
{
    public partial class Users : Page
    {
        // משתנים גלובליים — נשלפים מה-Code-Behind ומוצגים ב-ASPX
        public string usersTableHtml = "";
        public string usersCount     = "0";

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection con = DBHelper.GetConnection())
                {
                    string sql = "SELECT uName, fName, lName, email, city FROM Users";
                    using (SqlDataAdapter da = new SqlDataAdapter(sql, con))
                    {
                        da.Fill(dt);
                    }
                }

                usersCount = dt.Rows.Count.ToString();

                if (dt.Rows.Count > 0)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append("<table style='width:100%; border-collapse:collapse; text-align:center;'>");

                    // כותרת הטבלה
                    sb.Append("<tr style='background-color:#8B4513; color:white; height:40px;'>");
                    sb.Append("<th>שם משתמש</th><th>שם פרטי</th><th>שם משפחה</th><th>אימייל</th><th>עיר</th>");
                    sb.Append("</tr>");

                    // שורות הנתונים בצבעים מתחלפים
                    int rowIndex = 0;
                    foreach (DataRow row in dt.Rows)
                    {
                        string bgColor = (rowIndex % 2 == 0) ? "#ffffff" : "#fff9f2";
                        sb.Append($"<tr style='background-color:{bgColor}; border-bottom:1px solid #e0e0e0; height:35px;'>");
                        sb.Append($"<td>{row["uName"]}</td>");
                        sb.Append($"<td>{row["fName"]}</td>");
                        sb.Append($"<td>{row["lName"]}</td>");
                        sb.Append($"<td>{row["email"]}</td>");
                        sb.Append($"<td>{row["city"]}</td>");
                        sb.Append("</tr>");
                        rowIndex++;
                    }

                    sb.Append("</table>");
                    usersTableHtml = sb.ToString();
                }
                else
                {
                    usersTableHtml = "<h3 style='color:#8B4513; padding:20px;'>לא נמצאו לקוחות רשומים במסד הנתונים.</h3>";
                }
            }
            catch (Exception ex)
            {
                usersTableHtml = $"<div style='color:red; padding:20px; border:1px solid red;'>" +
                                 $"<b>שגיאת מערכת:</b> {ex.Message}</div>";
            }
        }
    }
}
