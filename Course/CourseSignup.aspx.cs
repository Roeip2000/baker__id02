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

        try
        {
            // פותח את מסד הנתונים ומוסיף את המשתמש החדש לטבלת Users
            using (SqlConnection conn = Helper.ConnectToDb("Database1.mdf"))
            {
                conn.Open();

                // מוסיף משתמש רק אם שם המשתמש לא קיים כבר
                string sql = @"INSERT INTO Users (uName, fName, gender, pw)
                               SELECT @uName, @fName, @gender, @pw
                               WHERE NOT EXISTS (SELECT 1 FROM Users WHERE uName=@uName)";

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@uName", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@fName", txtFirstName.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@pw", txtPassword.Text.Trim());

                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected == 0)
                {
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                    lblMsg.Text = "שם משתמש כבר קיים, בחר שם אחר";
                    return;
                }
            }

            // הודעת הצלחה למשתמש
            lblMsg.ForeColor = System.Drawing.Color.Green;
            lblMsg.Text = "ההרשמה בוצעה בהצלחה!";
        }
        catch (SqlException ex)
        {
            // אם שם המשתמש נוסף כבר, מציג הודעה ברורה במקום שגיאת מסד נתונים
            if (ex.Number == 2627 || ex.Number == 2601)
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "שם משתמש כבר קיים, בחר שם אחר";
                return;
            }

            lblMsg.ForeColor = System.Drawing.Color.Red;
            lblMsg.Text = "שגיאה בהרשמה, נסה שוב";
        }
        catch (Exception)
        {
            // אם בכל זאת קרתה שגיאה במסד הנתונים - מציג הודעה ידידותית במקום לקרוס
            lblMsg.ForeColor = System.Drawing.Color.Red;
            lblMsg.Text = "שגיאה בהרשמה, נסה שוב";
        }
    }
}
