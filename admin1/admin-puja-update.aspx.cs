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
    puja p;
    int fetchId;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        p = new puja(Application);
        fetchId = Convert.ToInt32(Request.QueryString["pujaId"]);
      
        if(!IsPostBack )
            loadData();
      
    }

    public void loadData()
    {
        
        Response.Write("<script> alert("+fetchId+")</script>");
        update_puja.DataSource = rr.read("select * from Pujas where pujaId='"+fetchId+"'");
        update_puja.DataBind();
    }
   
    protected void update_puja_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        DropDownList manId = (DropDownList)e.Item.FindControl("manId");
        manId.DataSource = rr.read("select * from Mandirs");
        manId.DataTextField = "manName";
        manId.DataValueField = "manId";
        manId.DataBind();
        DataSet ds = rr.read("select * from Pujas where pujaId='"+fetchId+"'");
        manId.SelectedValue = ds.Tables[0].Rows[0].ItemArray[6].ToString(); 
    }
    protected void puja_update_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        RepeaterItem item = (RepeaterItem)btn.NamingContainer;
        string pujaName = ((TextBox)item.FindControl("pujaName")).Text;
        string pujaSchedule = ((TextBox)item.FindControl("pujaSchedule")).Text;
        string pujaImg = ((FileUpload)item.FindControl("pujaImg")).FileName;
        string oldImg = ((HiddenField )item.FindControl("oldImg")).Value ;
        int pujaPrice=Convert.ToInt32 (((TextBox)item.FindControl ("pujaPrice")).Text);
        string pujaDetail = ((TextBox)item.FindControl("pujaDetail")).Text;
        int  manId =Convert.ToInt32( ((DropDownList)item.FindControl("manId")).Text);
        int row  = 0;
       if(pujaImg == "")
       {
           row = p.update(fetchId, pujaName, pujaSchedule, oldImg, pujaPrice, pujaDetail, manId);
       }
       else
       {
           row = p.update(fetchId, pujaName, pujaSchedule, pujaImg, pujaPrice, pujaDetail, manId);
           ((FileUpload)item.FindControl("pujaImg")).SaveAs(Server.MapPath("../photos/puja/") + pujaImg);
       }
       
        if(row>0)
        {
            Response.Write("<script>alert('Updated')</script>");
        }
        else
        {
            Response.Write("<script>alert('Not Updated')</script>");
        }
        loadData();
    }
}