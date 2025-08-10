using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    gallery g;
    readRepeater rr;
    protected void Page_Load(object sender, EventArgs e)
    {
        g = new gallery(Application);
        rr = new readRepeater(Application);
        if (!IsPostBack)
            loadData();
    }
    public void loadData()
    {
        manId.DataSource = rr.read("select * from Mandirs");
        manId.DataTextField = "manName";
        manId.DataValueField = "manId";
        manId.DataBind();
    }
    protected void gallery_add_Click(object sender, EventArgs e)
    {
        if(galImg.HasFile)
        {
            int row = g.add(galImg.FileName, galTitle.Text, Convert.ToInt32(manId.Text));
            if(row>0)
            {
                galImg.SaveAs(Server.MapPath("../photos/gallery/" + galImg.FileName));
                Response.Write("<script>alert('Gallery Inserted')</script>");
            }
        }
    }
}