using System;
using System.Data;
using System.Web.UI;

namespace baker_ido
{
    public partial class Users : System.Web.UI.Page
    {
        public string usersList = "";
        public string usersCount = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "Database1.mdf";

            string selectQuery = "SELECT * FROM [dbo].[CourseRegistrations] ORDER BY Id ASC";

            DataTable table = Helper.ExecuteDataTable(fileName, selectQuery);
            int length = table.Rows.Count;

            if (length > 0)
            {
                usersList += "<table style='border:3px double red'>";
                usersList += "<tr>";
                usersList += "<th>#</th>";
                usersList += "<th>שם מלא</th>";
                usersList += "<th>אימייל</th>";
                usersList += "<th>טלפון</th>";
                usersList += "<th>קורס</th>";
                usersList += "<th>נרשם בתאריך</th>";
                usersList += "</tr>";

                for (int i = 0; i < length; i++)
                {
                    usersList += "<tr>";
                    usersList += "<td>" + table.Rows[i]["Id"] + "</td>";
                    usersList += "<td>" + table.Rows[i]["FullName"] + "</td>";
                    usersList += "<td>" + table.Rows[i]["Email"] + "</td>";
                    usersList += "<td>" + table.Rows[i]["Phone"] + "</td>";
                    usersList += "<td>" + table.Rows[i]["CourseName"] + "</td>";
                    usersList += "<td>" + table.Rows[i]["CreatedAt"] + "</td>";
                    usersList += "</tr>";
                }

                usersList += "</table>";
                usersCount = length.ToString();
            }
        }
    }
}
