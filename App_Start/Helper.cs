using System;
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

	// מריץ פקודת INSERT או פקודת SQL אחרת שלא מחזירה טבלה
	public static void DoQuery(string fileName, string sql)
	{
		using (SqlConnection conn = ConnectToDb(fileName))
		{
			conn.Open();
			SqlCommand com = new SqlCommand(sql, conn);
			com.ExecuteNonQuery();
		}
	}

	// בודק אם שאילתת SELECT מצאה לפחות שורה אחת
	public static bool IsExist(string fileName, string sql)
	{
		using (SqlConnection conn = ConnectToDb(fileName))
		{
			conn.Open();
			SqlCommand com = new SqlCommand(sql, conn);
			using (SqlDataReader data = com.ExecuteReader())
			{
				bool found = data.Read();
				return found;
			}
		}
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
