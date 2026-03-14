using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class CourseSignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
        {
            string sql = @"INSERT INTO Users (uName, fName, lName, email, yearBorn, gender, prefix, phone, city, pw)
                           VALUES (@uName, @fName, @lName, @email, @yearBorn, @gender, @prefix, @phone, @city, @pw)";

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
            cmd.Parameters.AddWithValue("@pw", txtUserName.Text.Trim());

            conn.Open();
            cmd.ExecuteNonQuery();
        }

        lblMsg.Text = "ההרשמה בוצעה בהצלחה!";
    }
}
