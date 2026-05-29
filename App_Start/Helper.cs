using System.Data;
using System.Data.SqlClient;

public class Helper
{
	// יוצר את החיבור למסד הנתונים המקומי מסוג MDF
	public static SqlConnection ConnectToDb(string fileName)
	{
		string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\" + fileName + ";Integrated Security=True;Connect Timeout=30";
		SqlConnection conn = new SqlConnection(connString);
		return conn;
	}

	// מחזיר טבלת נתונים כדי שדפים כמו אזור הניהול יוכלו להציג אותה
	public static DataTable ExecuteDataTable(string fileName, string sql)
	{
		using (SqlConnection conn = ConnectToDb(fileName))
		{
			conn.Open();
			DataTable dt = new DataTable();
			SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn);
			tableAdapter.Fill(dt);
			return dt;
		}
	}
}
