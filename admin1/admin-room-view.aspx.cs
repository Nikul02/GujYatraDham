using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    room r;

    protected void Page_Load(object sender, EventArgs e)
    {
    
        rr = new readRepeater(Application);
        r = new room(Application);
        if(!IsPostBack )
        loadData();
    }

    public void loadData()
    {
        roomRepeater.DataSource = rr.read("select r.*,d.*,rc.* from Rooms r,Dharmshalas d,Roomcate rc where r.dharmId=d.dharmId and r.rCatId=rc.catId");
        roomRepeater.DataBind();
    }
    protected void room_delete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int fetch = Convert.ToInt32(btn.CommandArgument);

        int row = r.delete(fetch);
        if (row > 0)
        {
            loadData();
            Response.Write("<script> alert('Room Deleted')</script>");
        }
        else
        {
            Response.Write("<script> alert('Room Not Deleted')");
        }
    }
}