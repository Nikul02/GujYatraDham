using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    gallery g;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        g = new gallery(Application);
        if(!IsPostBack)
        loadData();
    }

    public void loadData()
    {
        galleryRepeater.DataSource = rr.read("select g.*,m.* from Gallerys g,Mandirs m where g.manId=m.manId");
        galleryRepeater.DataBind();
    }
    protected void gallery_delete_Click(object sender, EventArgs e)
    {
        Button btngallery = (sender as Button);
        int galId = Convert.ToInt32(btngallery.CommandArgument);

        int row = g.delete(galId);
        if(row >0)
        {
            Response.Write("<script> alert('Gallery Deleted')</script>");
            Response.Redirect("admin-gallery-view.aspx");
        }
        else
        {
            Response.Write("<script> alert('Gallery Not Deleted')</script>");
        }
    }
}