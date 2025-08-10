using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    readRepeater rr;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        if (!IsPostBack)
            loadData();
    }

    public void loadData()
    {
        mandir.DataSource = rr.read("select * from Mandirs");
        mandir.DataBind();
    }
}