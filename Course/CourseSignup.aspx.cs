using System;
using System.Data.SqlClient;
using System.Drawing;
using baker__id02.DAL;

namespace baker__id02
{
    public partial class CourseSignup : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = @"INSERT INTO Users
                               (uName, fName, lName, email, yearBorn, prefix, phone, city, pw, hob1, hob2, hob3, hob4, hob5)
                               VALUES
                               (@uName, @fName, @lName, @email, @yearBorn, @prefix, @phone, @city, @pw, @hob1, @hob2, @hob3, @hob4, @hob5)";

                using (SqlConnection conn = DBHelper.GetConnection())
                {
                    SqlCommand cmd = new SqlCommand(sql, conn);

                    cmd.Parameters.AddWithValue("@uName",    uName.Text.Trim());
                    cmd.Parameters.AddWithValue("@fName",    fName.Text.Trim());
                    cmd.Parameters.AddWithValue("@lName",    lName.Text.Trim());
                    cmd.Parameters.AddWithValue("@email",    email.Text.Trim());
                    cmd.Parameters.AddWithValue("@yearBorn", int.Parse(yearBorn.Text));
                    cmd.Parameters.AddWithValue("@prefix",   prefix.SelectedValue);
                    cmd.Parameters.AddWithValue("@phone",    phone.Text.Trim());
                    cmd.Parameters.AddWithValue("@city",     city.Text.Trim());
                    cmd.Parameters.AddWithValue("@pw",       pw.Text);

                    cmd.Parameters.AddWithValue("@hob1", hob1.Checked ? 1 : 0);
                    cmd.Parameters.AddWithValue("@hob2", hob2.Checked ? 1 : 0);
                    cmd.Parameters.AddWithValue("@hob3", hob3.Checked ? 1 : 0);
                    cmd.Parameters.AddWithValue("@hob4", hob4.Checked ? 1 : 0);
                    cmd.Parameters.AddWithValue("@hob5", hob5.Checked ? 1 : 0);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }

                lblMsg.Text      = "ההרשמה בוצעה בהצלחה! הנתונים נשמרו בטבלת המשתמשים.";
                lblMsg.ForeColor = Color.Green;
            }
            catch (Exception ex)
            {
                lblMsg.Text      = "שגיאה בשמירה: " + ex.Message;
                lblMsg.ForeColor = Color.Red;
            }
        }
    }
}
