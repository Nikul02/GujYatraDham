using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    status s;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
            loadData();
            s = new status(Application);
    }

    public void loadData()
    {
        //room_booking.DataSource = rr.read("select r.*,rc.catName,d.dharmName,bkr.*,u.userName from Rooms r,Roomcate rc,Dharmshalas d,Bookrooms bkr,Users u where bkr.dharmId=d.dharmId and bkr.rid=r.rId and bkr.userId=u.userId");
        room_booking.DataSource = rr.read("select bkr.*,u.userName,d.dharmName,r.rId,rc.catName from Bookrooms bkr,Users u,Dharmshalas d,Rooms r,Roomcate rc where bkr.userId=u.userId and bkr.dharmId=d.dharmId and bkr.rId=r.rId and r.rCatId=rc.catId");
        room_booking.DataBind();
    }
    protected void chgstatus_Click(object sender, EventArgs e)
    {
        LinkButton btn = sender as LinkButton;
        int bookingId = Convert.ToInt32(btn.CommandArgument);
        int currentStatus = s.getStatus(bookingId);
        if(currentStatus == 0)
        {
            s.changeStatus(bookingId, 1);
        }
        else
        {
            s.changeStatus(bookingId, 0);
        }
        loadData();
    }
}