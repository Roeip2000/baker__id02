using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace baker__id02
{
    public partial class CourseSignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string connStr =
                ConfigurationManager.ConnectionStrings["Database1ConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = @"INSERT INTO [Table]
                (uName, fName, lName, email, yearBorn, gender, prefix, phone, city,
                 hob1, hob2, hob3, hob4, hob5, pw)
                VALUES
                (@uName, @fName, @lName, @email, @yearBorn, @gender, @prefix, @phone, @city,
                 @hob1, @hob2, @hob3, @hob4, @hob5, @pw)";

                SqlCommand cmd = new SqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@uName", uName.Text);
                cmd.Parameters.AddWithValue("@fName", fName.Text);
                cmd.Parameters.AddWithValue("@lName", lName.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@yearBorn", int.Parse(yearBorn.Text));
                cmd.Parameters.AddWithValue("@gender", gender.SelectedValue);
                cmd.Parameters.AddWithValue("@prefix", prefix.SelectedValue);
                cmd.Parameters.AddWithValue("@phone", phone.Text);
                cmd.Parameters.AddWithValue("@city", city.Text);

                cmd.Parameters.AddWithValue("@hob1", hob1.Checked ? "1" : (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@hob2", hob2.Checked ? "1" : (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@hob3", hob3.Checked ? "1" : (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@hob4", hob4.Checked ? "1" : (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@hob5", hob5.Checked ? "1" : (object)DBNull.Value);

                cmd.Parameters.AddWithValue("@pw", pw.Text);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            lblMsg.Text = "ההרשמה בוצעה בהצלחה!";
        }
    }
}
    }
}