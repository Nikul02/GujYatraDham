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
        fetch = Convert.ToInt32(Request.QueryString["pujaId"]);
        if (!IsPostBack)
            loadData();
    }
    public void loadData()
    {
        readPujaDetail.DataSource = rr.read("select p.*,m.* from Pujas p,Mandirs m where p.manId=m.manId and pujaId="+fetch);
        readPujaDetail.DataBind();
    }
}