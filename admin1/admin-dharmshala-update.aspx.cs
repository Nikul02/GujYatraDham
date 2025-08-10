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
    dharmshala d;
    int fetchId;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        d = new dharmshala(Application);
        fetchId = Convert.ToInt32(Request.QueryString["dharmId"]);
        if (!IsPostBack)
            loadData();
    }
    public void loadData()
    {
        Response.Write("<script>alert(" + fetchId + " )</script>");
       
        update_dharmshala.DataSource = rr.read ("select * from Dharmshalas where dharmId='"+fetchId+"'");
        update_dharmshala.DataBind();
    }
    protected void update_dharmshala_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        DropDownList manId = (DropDownList)e.Item.FindControl("manId");
        manId.DataSource = rr.read("select * from Mandirs");
        manId.DataTextField = "manName";
        manId.DataValueField = "manId";
        manId.DataBind();

        DataSet ds = rr.read("select * from Dharmshalas where dharmId='" + fetchId + "'");
        manId.SelectedValue = ds.Tables[0].Rows[0].ItemArray[8].ToString();    
    }
    protected void dharmshala_update_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        Button btn1 =(sender as Button);
        RepeaterItem item = (RepeaterItem)btn.NamingContainer;

        string dharmName = ((TextBox)item.FindControl("dharmName")).Text;
        string dharmImg = ((FileUpload)item.FindControl("dharmImg")).FileName;
        string oldImg = ((HiddenField)item.FindControl("oldImg")).Value;
        string dharmCity = ((TextBox)item.FindControl("dharmCity")).Text;
        string dharmMap = ((TextBox)item.FindControl("dharmMap")).Text;
        string dharmDetail = ((TextBox)item.FindControl("dharmDetail")).Text;
        string dharmContact = ((TextBox)item.FindControl("dharmContact")).Text;
        string dharmAdd = ((TextBox)item.FindControl("dharmAdd")).Text;
        int manId =Convert.ToInt32( ((DropDownList)item.FindControl("manId")).Text);

        int row = 0;
        if (dharmImg == "")
        {
            row = d.update(fetchId, dharmName, oldImg, dharmCity, dharmMap, dharmDetail, dharmContact, dharmAdd, manId);
         }
        else
        {
            row = d.update(fetchId, dharmName, dharmImg, dharmCity, dharmMap, dharmDetail, dharmContact, dharmAdd, manId); 
            ((FileUpload)item.FindControl("dharmImg")).SaveAs(Server.MapPath("../photos/dharmshala/") + dharmImg);
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
}