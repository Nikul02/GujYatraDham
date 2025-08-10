using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Summary description for review
/// </summary>
public class review
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    public review(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
        //
        // TODO: Add constructor logic here
        //
    }

    public int add(string userComm, string revDate, string userId, string manId)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Reviews (userComm,revDate,userId,manId) values ('" + userComm + "','" + revDate + "','" + userId + "','" + manId + "')";

        return cmd.ExecuteNonQuery();
    }

		//
		// TODO: Add constructor logic here
		//
	
}