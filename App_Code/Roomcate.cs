using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Summary description for Roomcate
/// </summary>
public class Roomcate
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public Roomcate(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
		//
		// TODO: Add constructor logic here
		//
	}

    public int add(string catName)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Roomcate (catName) values ('"+catName +"')";
        return cmd.ExecuteNonQuery();
    }

    public int update(int catId,string catName)
    {
        cmd.Connection = con;
        cmd.CommandText = "update Roomcate set catName='"+catName+"' where catId='"+catId+"'";
        return cmd.ExecuteNonQuery();
    }
    public int delete(int catId)
    {
        cmd.Connection = con;
        cmd.CommandText = "delete from Roomcate where catId='"+catId+"'";
        return cmd.ExecuteNonQuery();
    }


}