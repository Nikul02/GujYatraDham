using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class about_us : System.Web.UI.Page
{
    readRepeater rr;
    protected void Page_Load(object sender, EventArgs e)
    {

        rr = new readRepeater(Application);
        loadMandir();
        loadDharmshala();
        loadPuja();
        loadRoom();
    }

    public void loadMandir()
    {
        readMandir.DataSource = rr.read("select TOP 1 * from Mandirs ORDER BY NEWID() ");
        readMandir.DataBind();
    }

    public void loadDharmshala()
    {
        readDharmshala.DataSource = rr.read("select TOP 1 * from Dharmshalas ORDER BY NEWID() ");
        readDharmshala.DataBind();
    }
    public void loadPuja()
    {
        readPuja.DataSource = rr.read("select TOP 1 * from Pujas ORDER BY NEWID() ");
        readPuja.DataBind();
    }
    public void loadRoom()
    {
        readRoom.DataSource = rr.read("select TOP 1 * from Rooms ORDER BY NEWID() ");
        readRoom.DataBind();
    }
}