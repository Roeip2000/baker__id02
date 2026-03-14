using System;
using System.Data;
using System.Web;
using System.Web.UI;

namespace baker_ido
{
    public partial class Users : System.Web.UI.Page
    {
        public string usersList = "";
        public string usersCount = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "SELECT uName, fName, lName, email, city FROM Users ORDER BY fName ASC";
            DataTable table = Helper.ExecuteDataTable("Database1.mdf", sql);
            int length = table.Rows.Count;

            if (length > 0)
            {
                usersList += "<table style='border:1px solid lightgray; border-collapse:collapse; width:100%;'>";
                usersList += "<tr style='background:skyblue; color:white;'>";
                usersList += "<th style='padding:8px;'>#</th>";
                usersList += "<th style='padding:8px;'>שם משתמש</th>";
                usersList += "<th style='padding:8px;'>שם פרטי</th>";
                usersList += "<th style='padding:8px;'>שם משפחה</th>";
                usersList += "<th style='padding:8px;'>אימייל</th>";
                usersList += "<th style='padding:8px;'>עיר</th>";
                usersList += "</tr>";

                for (int i = 0; i < length; i++)
                {
                    usersList += "<tr style='border-bottom:1px solid #eee;'>";
                    usersList += "<td style='padding:8px;'>" + (i + 1) + "</td>";
                    usersList += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["uName"]) + "</td>";
                    usersList += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["fName"]) + "</td>";
                    usersList += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["lName"]) + "</td>";
                    usersList += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["email"]) + "</td>";
                    usersList += "<td style='padding:8px;'>" + HttpUtility.HtmlEncode(table.Rows[i]["city"]) + "</td>";
                    usersList += "</tr>";
                }

                usersList += "</table>";
                usersCount = length.ToString();
            }
        }
    }
}
