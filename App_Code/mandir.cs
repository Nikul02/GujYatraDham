using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Summary description for mandir
/// </summary>
public class mandir
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public mandir(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
		//
		// TODO: Add constructor logic here
		//
	}

    public int add(string manName,string manImg,string manAdd,string manDetail,string manCity,string manMap)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Mandirs (manName,manImg,manAdd,manDetail,manCity,manMap) values('"+manName +"','"+manImg+"','"+manAdd+"','"+manDetail +"','"+manCity+"','"+manMap+"')";

        return cmd.ExecuteNonQuery();
    }

    public Hashtable read(int manId)
    {
        Hashtable h = new Hashtable();

        cmd.Connection = con;
        cmd.CommandText = "select * from Mandirs where manId='"+manId+"'";
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            h.Add("manId", dr["manId"]);
            h.Add("manName", dr["manName"]);
            h.Add("manAdd", dr["manAdd"]);
            h.Add("manDetail", dr["manDetail"]);
            h.Add("manCity", dr["manCity"]);
            h.Add("manMap", dr["manMap"]);
        }
        dr.Close();
        return h;
    }

    public ArrayList readAllId()
    {
        ArrayList al = new ArrayList();

        cmd.Connection = con;
        cmd.CommandText = "select * from Mandirs";
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            al.Add("manId");
        }
        dr.Close();
        return al;
    }
    
    public int update(int manId,string manName,string manImg,string manAdd,string manDetail,string manCity,string manMap)
    {
        cmd.Connection = con;
        cmd.CommandText = "update Mandirs set manName='" + manName + "',manImg='"+manImg+"',manAdd='"+manAdd+"',manDetail='"+manDetail+"',manCity='"+manCity+"',manMap='"+manMap+"' where manId='"+manId+"'";

        return cmd.ExecuteNonQuery();
    }

    public int delete(int manId)
    {
        cmd.Connection = con;
        cmd.CommandText = "delete from Mandirs where manId='" + manId + "'";
        return cmd.ExecuteNonQuery();
    }
}