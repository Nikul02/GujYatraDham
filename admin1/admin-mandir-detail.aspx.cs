using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    mandir m;
    int fetch;
    protected void Page_Load(object sender, EventArgs e)
    {
        fetch = Convert.ToInt32(Request.QueryString["manId"]);
        rr = new readRepeater(Application);
        m = new mandir(Application);
        if (!IsPostBack)
            loadData();
    }

    public void loadData()
    {
        mandirRepeater.DataSource = rr.read("select * from Mandirs where manId="+fetch);
        mandirRepeater.DataBind();
    }
}