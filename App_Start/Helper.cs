using System.Data;
using System.Data.SqlClient;
using System.Web;

// מחלקת עזר ישנה לחיבור לבסיס נתונים לפי שם קובץ.
// לחיבור הראשי של האתר — השתמש ב-DAL/DBHelper.cs.
public class Helper
{
    public static SqlConnection ConnectToDb(string fileName)
    {
        string path = HttpContext.Current.Server.MapPath("App_Data/") + fileName;
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";
        return new SqlConnection(connString);
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
            return data.Read();
        }
    }

    public static DataTable ExecuteDataTable(string fileName, string sql)
    {
        SqlConnection conn = ConnectToDb(fileName);
        conn.Open();
        DataTable dt = new DataTable();
        SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn);
        tableAdapter.Fill(dt);
        return dt;
    }
}
