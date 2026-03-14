using System.Configuration;
using System.Data.SqlClient;

namespace baker__id02.DAL
{
    // מחלקה סטטית שאחראית על כל החיבורים לבסיס הנתונים.
    // כל הדפים שצריכים גישה ל-DB משתמשים בה.
    public static class DBHelper
    {
        // מחרוזת החיבור נשמרת פעם אחת כאן — נשלפת מ-Web.config
        private static string ConnectionString
        {
            get { return ConfigurationManager.ConnectionStrings["CourseDB"].ConnectionString; }
        }

        // מחזיר אובייקט SqlConnection מוכן לשימוש
        public static SqlConnection GetConnection()
        {
            return new SqlConnection(ConnectionString);
        }
    }
}
