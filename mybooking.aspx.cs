using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    readRepeater rr;
 
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
       
       
            loadData();
    }

    public void loadData()
    {
        readRoom_Booking.DataSource = rr.read("select b.*,u.*,d.*,r.*,rc.* from Bookrooms b,Users u,Dharmshalas d,Rooms r,Roomcate rc where b.userId=u.userId and b.dharmId=d.dharmId and r.dharmId=r.dharmId and r.rCatId=rc.catId and b.rId=r.rId and u.userId="+Session ["uId"]);
        readRoom_Booking.DataBind();

        readPuja_Booking.DataSource = rr.read("select b.*,p.*,u.* from Bookpujas b,Pujas p,Users u where b.userId=u.userId and b.pujaId=p.pujaId and b.userId="+Session ["uId"]);
        readPuja_Booking.DataBind();
       }
}