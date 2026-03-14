using System;
using System.Data;
using System.Web;
using System.Web.UI;

namespace baker_ido
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string sql = "SELECT uName, fName, lName, email, city FROM Users ORDER BY fName ASC";
                DataTable table = Helper.ExecuteDataTable("Database1.mdf", sql);
                int length = table.Rows.Count;

                if (length > 0)
                {
                    string html = "<table style='border:1px solid lightgray; border-collapse:collapse; width:100%;'>";
                    html += "<tr style='background:skyblue; color:white;'>";
                    html += "<th style='padding:8px;'>#</th>";
                    html += "<th style='padding:8px;'>שם משתמש</th>";
                    html += "<th style='padding:8px;'>שם פרטי</th>";
                    html += "<th style='padding:8px;'>שם משפחה</th>";
                    html += "<th style='padding:8px;'>אימייל</th>";
                    html += "<th style='padding:8px;'>עיר</th>";
                    html += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        html += "<tr style='border-bottom:1px solid #eee;'>";
                        html += "<td style='padding:8px;'>" + (i + 1) + "</td>";
                        html += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["uName"]) + "</td>";
                        html += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["fName"]) + "</td>";
                        html += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["lName"]) + "</td>";
                        html += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["email"]) + "</td>";
                        html += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["city"]) + "</td>";
                        html += "</tr>";
                    }

                    html += "</table>";
                    litUsers.Text = html;
                    litCount.Text = length.ToString();
                }
                else
                {
                    litUsers.Text = "<p>אין נרשמים עדיין.</p>";
                    litCount.Text = "0";
                }
            }
            catch (Exception ex)
            {
                litUsers.Text = "<p style='color:red;'>שגיאה בטעינת הנתונים: " + HttpUtility.HtmlEncode(ex.Message) + "</p>";
                litCount.Text = "0";
            }
        }
    }
}
