    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for readRepeater
/// </summary>
public class readRepeater
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public readRepeater(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
	}
    public DataSet read(string query)
    {
        SqlDataAdapter sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        return ds;
    }
}