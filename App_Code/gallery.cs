using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


/// <summary>
/// Summary description for gallery
/// </summary>
public class gallery
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public gallery(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();

		//
		// TODO: Add constructor logic here
		//
	}

    public int add(string galImg, string galTitle,int manId)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Gallerys (galImg,galTitle,manId) values('" + galImg + "','" + galTitle + "','" + manId + "')";

        return cmd.ExecuteNonQuery();
    }

    public Hashtable read(int galId)
    {
        Hashtable h = new Hashtable();

        cmd.Connection = con;
        cmd.CommandText = "select * from Gallerys where galId='" + galId + "'";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            h.Add("galId", dr["galId"]);
            h.Add("galImg", dr["galImg"]);
            h.Add("galTitle", dr["galTitle"]);
            h.Add("manId", dr["manId"]);
        }
        return h;
    }

    public ArrayList readAllId()
    {
        ArrayList al = new ArrayList();
        cmd.Connection = con;
        cmd.CommandText = "select * from Gallerys";
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            al.Add("galId");
        }
        dr.Close();

        return al;
    }

    public int update(int galId, string galImg, string galTitle, int manId)
    {
        cmd.Connection = con;
        cmd.CommandText = "update Gallerys set galImg='" + galImg + "',galTitle='" + galTitle + "',manId='" + manId + "' where galId='"+galId+"'";

        return cmd.ExecuteNonQuery();
    }

    public int delete(int galId)
    {
        cmd.Connection = con;
        cmd.CommandText = "delete from Gallerys where galId='" + galId + "'";
        return cmd.ExecuteNonQuery();
    }

}