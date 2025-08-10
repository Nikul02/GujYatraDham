using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for status
/// </summary>
public class status
{

    ConnectionClass con;
    readRepeater rr;
	public status(HttpApplicationState Application)
	{
        rr = new readRepeater(Application);
        con = new ConnectionClass(Application);
    }
    public string getStatusName(int status)
    {
        return status == 0 ? "Pendding" : "Payment Accepted";
    }
    public int changeStatus(int bookid,int status)
    {
        return con.allQuery("update Bookrooms set status = '"+status+"' where bookingId = " + bookid.ToString());
    }
    public int getStatus(int bookid)
    {
        return Convert.ToInt32(rr.read("select status from Bookrooms where bookingId =" + bookid).Tables[0].Rows[0]["status"]);
    }
}