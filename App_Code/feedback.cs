using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Collections;
/// <summary>
/// Summary description for feedback
/// </summary>
public class feedback
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    public feedback(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
		//
		// TODO: Add constructor logic here
		//
	}

    public int add(string Name, string userEmail, string feedsub, string feddMessage, string feedDate)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Users (Name,userEmail,feedsub,feddMessage,feedDate) values ('" + Name + "','" + userEmail + "','" + feedsub + "','" + feddMessage + "','" + feedDate + "')";

        return cmd.ExecuteNonQuery();
    }
}