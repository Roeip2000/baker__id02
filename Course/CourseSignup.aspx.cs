using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class CourseSignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid) return;

        try
        {
            using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
            {
                conn.Open();

                // Check if username already exists
                string checkSql = "SELECT COUNT(*) FROM Users WHERE uName=@uName";
                SqlCommand checkCmd = new SqlCommand(checkSql, conn);
                checkCmd.Parameters.AddWithValue("@uName", txtUserName.Text.Trim());
                int exists = (int)checkCmd.ExecuteScalar();

                if (exists > 0)
                {
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    lblMsg.Text = "שם משתמש כבר קיים, בחר שם אחר";
                    return;
                }

                string sql = @"INSERT INTO Users (uName, fName, lName, email, yearBorn, gender, prefix, phone, city, pw, course, notes)
                               VALUES (@uName, @fName, @lName, @email, @yearBorn, @gender, @prefix, @phone, @city, @pw, @course, @notes)";

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@uName", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@fName", txtFirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@lName", txtLastName.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@yearBorn", int.Parse(txtYearBorn.Text));
                cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@prefix", ddlPrefix.SelectedValue);
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text.Trim());
                cmd.Parameters.AddWithValue("@city", txtCity.Text.Trim());
                cmd.Parameters.AddWithValue("@pw", txtPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@course", ddlCourse.SelectedValue);
                cmd.Parameters.AddWithValue("@notes", txtNotes.Text.Trim());

                cmd.ExecuteNonQuery();
            }

            lblMsg.ForeColor = System.Drawing.Color.Green;
            lblMsg.Text = "ההרשמה בוצעה בהצלחה!";
        }
        catch (Exception)
        {
            lblMsg.ForeColor = System.Drawing.Color.Red;
            lblMsg.Text = "שגיאה בהרשמה, נסה שוב";
        }
    }
}
