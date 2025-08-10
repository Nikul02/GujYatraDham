using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Summary description for admin
/// </summary>
public class admin
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public admin(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();

		//
		// TODO: Add constructor logic here
		//
	}

    public Hashtable read(int adminId)
    {
        Hashtable h = new Hashtable();

        cmd.Connection = con;
        cmd.CommandText = "select * from Admins where adminId='"+adminId+"'";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            h.Add("adminId", dr["adminId"]);
            h.Add("adminName", dr["adminName"]);
            h.Add("adminEmail", dr["adminEmail"]);
            h.Add("adminPass", dr["adminPass"]);
        }
        return h;
    }
    public Hashtable isAvailable(string adminEmail,string pass)
    {
        Hashtable h = new Hashtable();
        cmd.Connection = con;
        cmd.CommandText = "select * from Admins where adminEmail='" + adminEmail+ "' and adminPass = '"+pass+"'";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            h.Add("adminId", dr["adminId"]);
            h.Add("adminName", dr["adminName"]);
            h.Add("adminEmail", dr["adminEmail"]);
            h.Add("adminPass", dr["adminPass"]);
        }
        dr.Close();
        return h;
    }
    public int update(int adminId,string adminName,string adminEmail,string adminPass)
    {
        cmd.Connection = con;
        cmd.CommandText = "update Admins set adminName='"+adminName +"',adminEmail='"+adminEmail+"',adminPass='"+adminPass+"' where adminId='"+adminId+"'";

        return cmd.ExecuteNonQuery();
    }
}