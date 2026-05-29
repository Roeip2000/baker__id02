using System;
using System.Data.SqlClient;

public partial class CourseSignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // This stops the register code if the ASP.NET validators failed
        if (!Page.IsValid) return;

        // This checks that the birth year is a real number and a normal year
        int yearBorn;
        if (!int.TryParse(txtYearBorn.Text.Trim(), out yearBorn))
        {
            lblMsg.ForeColor = System.Drawing.Color.Red;
            lblMsg.Text = "שנת לידה חייבת להיות מספר";
            return;
        }

        if (yearBorn < 1900 || yearBorn > DateTime.Now.Year)
        {
            lblMsg.ForeColor = System.Drawing.Color.Red;
            lblMsg.Text = "יש להכניס שנת לידה תקינה";
            return;
        }

        try
        {
            // This opens the local database file used by the project
            using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
            {
                conn.Open();

                // This checks that the username is not already taken
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

                // This SQL command adds the new user to the Users table
                string sql = @"INSERT INTO Users (uName, fName, lName, email, yearBorn, gender, prefix, phone, city, pw, course, notes)
                               VALUES (@uName, @fName, @lName, @email, @yearBorn, @gender, @prefix, @phone, @city, @pw, @course, @notes)";

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@uName", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@fName", txtFirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@lName", txtLastName.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@yearBorn", yearBorn);
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
