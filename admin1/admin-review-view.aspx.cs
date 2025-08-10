using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        loadReview();
    }
    public void loadReview()
    {
        readAllreview.DataSource = rr.read("select rw.*,u.* from Reviews rw,Users u where rw.userId=u.userId");
        readAllreview.DataBind();
    }
}