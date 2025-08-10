using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
 
    int fetch;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        fetch = Convert.ToInt32(Request.QueryString["rId"]);
        if (!IsPostBack)
            loadData();
    }
    public void loadData()
    {
        readRoom.DataSource = rr.read("select r.*,rc.*,d.* from Rooms r,Roomcate rc,Dharmshalas d where r.rCatId=rc.catId and r.dharmId=d.dharmId and r.rId="+fetch);
        readRoom.DataBind();
    }
}