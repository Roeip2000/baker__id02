using System;
using System.Data.SqlClient;

public partial class CourseSignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // עוצר את ההרשמה אם שדות החובה ריקים
        if (!Page.IsValid) return;

        // פותח את מסד הנתונים ומוסיף את המשתמש החדש לטבלת Users
        using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
        {
            conn.Open();

            string sql = "INSERT INTO Users (uName, fName, gender, pw) VALUES (@uName, @fName, @gender, @pw)";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@uName", txtUserName.Text.Trim());
            cmd.Parameters.AddWithValue("@fName", txtFirstName.Text.Trim());
            cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
            cmd.Parameters.AddWithValue("@pw", txtPassword.Text.Trim());

            cmd.ExecuteNonQuery();
        }

        // הודעת הצלחה למשתמש
        lblMsg.ForeColor = System.Drawing.Color.Green;
        lblMsg.Text = "ההרשמה בוצעה בהצלחה!";
    }
}
