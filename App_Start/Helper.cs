using System;
using System.Data;
using System.Data.SqlClient;

public class Helper
{
	// This creates the database connection for the local MDF database file
	public static SqlConnection ConnectToDb(string fileName)
	{
		string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\" + fileName + ";Integrated Security=True;Connect Timeout=30";
		SqlConnection conn = new SqlConnection(connString);
		return conn;
	}

	// This runs an INSERT or other SQL command that does not return a table
	public static void DoQuery(string fileName, string sql)
	{
		using (SqlConnection conn = ConnectToDb(fileName))
		{
			conn.Open();
			SqlCommand com = new SqlCommand(sql, conn);
			com.ExecuteNonQuery();
		}
	}

	// This checks if a SELECT query found at least one row
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

	// This returns a table of data so pages like Admin can display it
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
