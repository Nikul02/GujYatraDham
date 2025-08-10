using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Collections;

/// <summary>
/// Summary description for dharmshala
/// </summary>
public class dharmshala
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public dharmshala(HttpApplicationState  Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
		//
		// TODO: Add constructor logic here
		//
	}

    public int add(string dharmName, string dharmImg, string dharmCity, string dharmMap, string dharmDetail, string dharmContact,string dharmAdd,int manId)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Dharmshalas(dharmName,dharmImg,dharmCity,dharmMap,dharmDetail,dharmContact,dharmAdd,manId) values ('" + dharmName + "','" + dharmImg + "','" + dharmCity + "','" + dharmMap + "','" + dharmDetail + "','" + dharmContact + "','" + dharmAdd + "','" + manId + "')";

        return cmd.ExecuteNonQuery();
    }

    public Hashtable read(int dharmId)
    {
        Hashtable h = new Hashtable();
        cmd.Connection = con;
        cmd.CommandText = "select * from Dharmshalas where dharmId='" + dharmId + "'";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            h.Add("dharmId", dr["dharmId"]);
            h.Add("dharmName", dr["dharmName"]);
            h.Add("dharmImg", dr["dharmImg"]);
            h.Add("dharmCity", dr["dharmCity"]);
            h.Add("dharmMap", dr["dharmMap"]);
            h.Add("dharmDetail", dr["dharmDetail"]);
            h.Add("dharmContact", dr["dharmContact"]);
            h.Add("dharmAdd", dr["dharmAdd"]);
            h.Add("manId", dr["manId"]);
        }
        dr.Close();
        return h;
    }
    


    public ArrayList readAllId()
    {
        ArrayList al = new ArrayList();
        cmd.Connection = con;
        cmd.CommandText = "select * from Dharmshalas";

        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            al.Add("dharmId");
        }
        dr.Close();
        return al;
    }

    public int update(int dharmId,string dharmName, string dharmImg, string dharmCity, string dharmMap, string dharmDetail, string dharmContact,string dharmAdd,int manId)
    {
        cmd.Connection = con;
        cmd.CommandText = "update Dharmshalas set dharmName='" + dharmName + "',dharmImg='" + dharmImg + "',dharmCity='" + dharmCity + "',dharmMap='" + dharmMap + "',dharmDetail='" + dharmDetail + "',dharmContact='" + dharmContact + "',dharmAdd='" + dharmAdd + "',manId='" + manId + "' where dharmId='" + dharmId + "' ";

        return cmd.ExecuteNonQuery();
    }

    public int delete(int dharmId)
    {
        cmd.Connection = con;
        cmd.CommandText = "delete from Dharmshalas where dharmId='" + dharmId + "'";
        return cmd.ExecuteNonQuery();
    }
}