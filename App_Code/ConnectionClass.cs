using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for ConnectionClass
/// </summary>
public class ConnectionClass
{
    SqlConnection con;
    SqlCommand cmd;

	public ConnectionClass(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
    }
    public int allQuery(string query)
    {
        cmd.Connection = con;
        cmd.CommandText = query;
        return cmd.ExecuteNonQuery();
    }
    public object allScalar(string query)
    {
        cmd.Connection = con;
        cmd.CommandText = query;
        return cmd.ExecuteScalar();
    }
}