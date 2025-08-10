using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Summary description for puja
/// </summary>
public class puja
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;

    public puja(HttpApplicationState Application)
	{

        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
		//
		// TODO: Add constructor logic here
		//
	}

    public int add(string pujaName,string pujaSchedule,string pujaImg,int pujaPrice,string pujaDetail,int manId)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Pujas(pujaName,pujaSchedule,pujaImg,pujaPrice,pujaDetail,manId) values('" + pujaName + "','" + pujaSchedule + "','" + pujaImg + "','" + pujaPrice + "','" + pujaDetail + "','"+manId+"')";
        return cmd.ExecuteNonQuery();
    }

    public Hashtable read(int pujaId)
    {
        Hashtable h = new Hashtable();
        cmd.Connection = con;
        cmd.CommandText = "select * from Pujas where pujaId='" + pujaId + "'";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            h.Add("pujaId", dr["pujaId"]);
            h.Add("pujaName", dr["pujaName"]);
            h.Add("pujaSchedule", dr["pujaSchedule"]);
            h.Add("pujaImg", dr["pujaImg"]);
            h.Add("pujaPrice", dr["pujaPrice"]);
            h.Add("pujaDetail", dr["pujaDetail"]);
            h.Add("manId", dr["manId"]);
        }
        dr.Close();
        return h;
    }

    public ArrayList readAllId()
    {
        ArrayList al = new ArrayList();
        cmd.Connection = con;
        cmd.CommandText = "select * from Pujas";

        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            al.Add("pujaId");
        }
        dr.Close();

        return al;
    }

    public int update(int pujaId,string pujaName, string pujaSchedule, string pujaImg, int pujaPrice, string pujaDetail,int manId)
    {
        cmd.Connection = con;
        cmd.CommandText = "update Pujas set pujaName='" + pujaName + "',pujaSchedule='" + pujaSchedule + "',pujaImg='" + pujaImg + "',pujaPrice='" + pujaPrice + "',pujaDetail='" + pujaDetail + "',manId='"+manId+"' where pujaId='" + pujaId + "' ";

        return cmd.ExecuteNonQuery();
    }

    public int delete(int pujaId)
    {
        cmd.Connection = con;
        cmd.CommandText = "delete from Pujas where pujaId='" + pujaId + "'";
        return cmd.ExecuteNonQuery();
    }
}