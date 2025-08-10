using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    dharmshala d;
    int fetch;
    protected void Page_Load(object sender, EventArgs e)
    {
        fetch = Convert.ToInt32(Request.QueryString["dharmId"]);
        rr = new readRepeater(Application);
        d = new dharmshala(Application);
        if (!IsPostBack)
            loadData();
    }

    public void loadData()
    {
        dharmRepeater.DataSource = rr.read("select d.*,m.* from Dharmshalas d,Mandirs m where d.manId=m.manId and d.dharmId="+fetch);
        dharmRepeater.DataBind();
    }
}