using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    gallery g;
    int fetchId;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        g = new gallery(Application);
        fetchId = Convert.ToInt32(Request.QueryString["galId"]);
        if (!IsPostBack)
            loadData();

    }
   
    public void loadData()
    {
        Response.Write("<script>alert(" + fetchId + " )</script>");
       
        update_gallery.DataSource = rr.read("select * from Gallerys where galId='"+fetchId +"'");
        update_gallery.DataBind();
    }
    protected void gallery_update_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        RepeaterItem item = (RepeaterItem)btn.NamingContainer;
        string galImg = ((FileUpload)item.FindControl("galImg")).FileName;
        string oldImg = ((HiddenField)item.FindControl("oldImg")).Value;
        string galTitle = ((TextBox)item.FindControl("galTitle")).Text;
        int manId = Convert.ToInt32(((DropDownList)item.FindControl("manId")).Text);
        int row = 0;
        if (galImg  == "")
        {
            row = g.update(fetchId, oldImg, galTitle, manId);
          }
        else
        {
            row = g.update(fetchId, galImg, galTitle, manId);
            ((FileUpload)item.FindControl("galImg")).SaveAs(Server.MapPath("../photos/gallery/") + galImg);
        }

        if (row > 0)
        {
            Response.Write("<script>alert('Updated')</script>");
        }
        else
        {
            Response.Write("<script>alert('Not Updated')</script>");
        }
        loadData();
    
     
    }
    protected void update_gallery_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

        DropDownList manId = (DropDownList)e.Item.FindControl("manId");
        manId.DataSource = rr.read("select * from Mandirs");
        manId.DataTextField = "manName";
        manId.DataValueField = "manId";
        manId.DataBind();

        DataSet ds = rr.read("select * from Gallerys where galId='" + fetchId + "'");
        manId.SelectedValue = ds.Tables[0].Rows[0].ItemArray[3].ToString();
    }
}