using System;
using System.Data;
using System.Data.SqlClient;

public class Helper
{
	public static SqlConnection ConnectToDb(string fileName)
	{
		string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\" + fileName + ";Integrated Security=True;Connect Timeout=30";
		SqlConnection conn = new SqlConnection(connString);
		return conn;
	}

	public static void DoQuery(string fileName, string sql)
	{
		using (SqlConnection conn = ConnectToDb(fileName))
		{
			conn.Open();
			SqlCommand com = new SqlCommand(sql, conn);
			com.ExecuteNonQuery();
		}
	}

	public static bool IsExist(string fileName, string sql)
	{
		using (SqlConnection conn = ConnectToDb(fileName))
		{
			conn.Open();
			SqlCommand com = new SqlCommand(sql, conn);
			SqlDataReader data = com.ExecuteReader();
			bool found = data.Read();
			return found;
		}
	}

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
