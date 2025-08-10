using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Collections;


/// <summary>
/// Summary description for user
/// </summary>
public class user
{

    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
	public user(HttpApplicationState Application)
	{
        con = new SqlConnection(Application["conn"].ToString());
        con.Open();
        cmd = new SqlCommand();
       
		//
		// TODO: Add constructor logic here
		//
	}

    public int add(string userName,string userEmail,string userGender,string userMno,string userPass,string userAdd,string userCity,string img,string idProof)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into Users (userName,userEmail,userGender,userMno,userPass,userAdd,userCity,img,idProof) values ('"+userName+"','"+userEmail+"','"+userGender+"','"+userMno+"','"+userPass+"','"+userAdd+"','"+userCity+"','"+img+"','"+idProof+"')";

        return cmd.ExecuteNonQuery();
    }

    public Hashtable read(int userId)
    {
        Hashtable h=new Hashtable(); 
        cmd.Connection = con;
        cmd.CommandText="select * from Users where userId='"+userId+"'";
        dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            h.Add("userId", dr["userId"]);
            h.Add("userName", dr["userName"]);
            h.Add("userEmail", dr["userEmail"]);
            h.Add("userGender", dr["userGender"]);
            h.Add("userMno", dr["userMno"]);
            h.Add("userPass", dr["userPass"]);
            h.Add("userAdd", dr["userAdd"]);
            h.Add("userCity", dr["userCity"]);
            h.Add("img", dr["img"]);
            h.Add("idProof", dr["idProof"]);
        }
        dr.Close();
        return h;
    }

    public ArrayList readAllId()
    {
        ArrayList al = new ArrayList();
        cmd.Connection = con;
        cmd.CommandText = "select * from Users";

        dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            al.Add("userId");
        }
        dr.Close();

        return al;
    }

    public Hashtable isAvailable(string userEmail,string pass)
    {
        Hashtable h = new Hashtable();
        cmd.Connection = con;
        cmd.CommandText = "select * from Users where userEmail='"+ userEmail +"' and userPass = '"+pass+"'";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            h.Add("userId", dr["userId"]);
            h.Add("userName", dr["userName"]);
            h.Add("userEmail", dr["userEmail"]);
            h.Add("userGender", dr["userGender"]);
            h.Add("userMno", dr["userMno"]);
            h.Add("userPass", dr["userPass"]);
            h.Add("userAdd", dr["userAdd"]);
            h.Add("userCity", dr["userCity"]);
            h.Add("img", dr["img"]);
            h.Add("idProof", dr["idProof"]);
        }
        dr.Close();
        return h;
    }

    public int update(int userId, string userName, string userEmail, string userGender, string userMno, string userPass, string userAdd, string userCity, string img, string idProof)
    {
        cmd.Connection = con;
        cmd.CommandText = "update Users set userName='"+userName+"',userEmail='"+userEmail+"',userGender='"+userGender+"',userMno='"+userMno+"',userPass='"+userPass+"',userAdd='"+userAdd+"',userCity='"+userCity+"',img='"+img+"',idProof='"+idProof+"' where userId='"+userId+"' ";

        return cmd.ExecuteNonQuery();
    }

}

