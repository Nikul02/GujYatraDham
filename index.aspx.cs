using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    readRepeater rr;
    int fetch;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        fetch = Convert.ToInt16(Request.QueryString["mId"]);
        loadData();
        loadPuja();
        loadReview();
    }

    public void loadData()
    {
        readMandir.DataSource = rr.read("select TOP 3 * from Mandirs ORDER BY NEWID()");
        readMandir.DataBind();
    }
    public void loadPuja()
    {
        readPuja.DataSource = rr.read("select TOP 3 * from Pujas ORDER BY NEWID()");
        readPuja.DataBind();
    }

    public void loadReview()
    {
        readAllReview.DataSource = rr.read("select TOP 4 r.*,u.* from Reviews r,Users u where r.userId=u.userId ORDER BY NEWID()");
        readAllReview.DataBind();
    }
}