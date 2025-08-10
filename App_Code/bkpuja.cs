using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Collections;

/// <summary>
/// Summary description for bkpuja
/// </summary>
public class bkpuja
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public bkpuja(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd=new SqlCommand();
		//
		// TODO: Add constructor logic here
		//
	}

    public int add(int userId,int pujaId,string bkDate)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Bookpujas (userId,pujaId,bkDate) values ('"+userId+"','"+pujaId+"','"+bkDate+"')";
        return cmd.ExecuteNonQuery();
    }

    public Hashtable read(int bkpujaId)
    {
        Hashtable h = new Hashtable();
        cmd.Connection = con;
        cmd.CommandText = "select * from Bookpujas where bkpujaId='"+bkpujaId+"'";
        dr = cmd.ExecuteReader();
    
        while(dr.Read())
        {
            h.Add("userId", dr["userId"]);
            h.Add("pujaId", dr["pujaId"]);
            h.Add("bkDate", dr["bkDate"]);
        }
        dr.Close();
        return h;
    }

    public ArrayList readAllId()
    {
        ArrayList a = new ArrayList();
        cmd.Connection = con;
        cmd.CommandText = "select * from Bookpujas";

        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            a.Add("bkpujaId");
        }
        dr.Close();
        return a;
    }

    public int update(int bkpujaId,int userId,int pujaId,string bkDate)
    {
        cmd.Connection = con;
        cmd.CommandText = "update Bookpujas set userId='"+userId +"',pujaId='"+pujaId+"',bkDate='"+bkpujaId+"' where bkpujaId='"+bkpujaId+"'";
        return cmd.ExecuteNonQuery();
    }

    public int delete(int bkpujaId)
    {
        cmd.Connection = con;
        cmd.CommandText = "delete from Bookpujas where bkpujaId='" + bkpujaId + "'";
        return cmd.ExecuteNonQuery();
    }
}