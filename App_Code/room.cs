using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Summary description for bkroom
/// </summary>
public class room
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public room(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
		//
		// TODO: Add constructor logic here
		//
	}
    
    public int add(string rDetail, string rImg, int rRant,int dharmId,int rCatId,int rTotal)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Rooms (rDetail,rImg,rRant,dharmId,rCatId,rTotal) values('" + rDetail + "','" + rImg + "','" + rRant + "','" + dharmId + "','" + rCatId + "','" + rTotal + "')";
        return cmd.ExecuteNonQuery();
    }

    public Hashtable read(int rId)
    {
        Hashtable h = new Hashtable();

        cmd.Connection = con;
        cmd.CommandText = "select * from Rooms where rId='" + rId + "'";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            h.Add("rId", dr["rId"]);
            h.Add("rDetail", dr["rDetail"]);
            h.Add("rImg", dr["rImg"]);
            h.Add("rRant", dr["rRant"]);
            h.Add("dharmId", dr["dharmId"]);
            h.Add("rCatId", dr["rCatId"]);
            h.Add("rTotal", dr["rTotal"]);
        }
        return h;
    }

    public ArrayList readAllId()
    {
        ArrayList al = new ArrayList();
        cmd.Connection = con;
        cmd.CommandText = "select * from Rooms";
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            al.Add("rId");
        }
        dr.Close();
        return al;
    }

    public int update(int rId, string rDetail, string rImg, int rRant,int dharmId,int rCatId,int rTotal)
    {
        cmd.Connection = con;
        cmd.CommandText = "update Rooms set rDetail='" + rDetail + "',rImg='" + rImg + "',rRant='" + rRant + "',dharmId='" + dharmId + "',rCatId='" + rCatId + "',rTotal='" + rTotal + "' where rId='" + rId + "'";

        return cmd.ExecuteNonQuery();
    }

    public int delete(int rId)
    {
        cmd.Connection = con;
        cmd.CommandText = "delete from Rooms where rId='" + rId + "'";
        return cmd.ExecuteNonQuery();
    }   

}