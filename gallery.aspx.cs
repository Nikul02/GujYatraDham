using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gallery : System.Web.UI.Page
{
    readRepeater rr;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        loadData();
    }
    public void loadData()
    {
       // g.DataSource = rr.read("select TOP 4 * from Gallerys ");
        //g.DataBind();

        man.DataSource = rr.read("select TOP 4 * from Mandirs ORDER BY NEWID()");
        man.DataBind();
        gal.DataSource = rr.read("select TOP 4 * from Rooms ORDER BY NEWID()");
        gal.DataBind();
        dharm.DataSource = rr.read("select TOP 4 * from Dharmshalas ORDER BY NEWID()");
        dharm.DataBind();
        puja.DataSource = rr.read("select TOP 4 * from Pujas ORDER BY NEWID()");
        puja.DataBind();
    
    }
}