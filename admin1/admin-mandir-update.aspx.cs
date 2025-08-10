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
    int fetchId;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        m = new mandir(Application);
        fetchId = Convert.ToInt32(Request.QueryString["manId"]);
        if(!IsPostBack)
        loadData();
    }
    public void loadData()
    {

        update_mandir.DataSource = rr.read("select * from Mandirs where manId='" + fetchId + "'");
        update_mandir.DataBind();
    }
    protected void mandir_update_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        RepeaterItem item = (RepeaterItem)btn.NamingContainer;

        string manName = ((TextBox)item.FindControl("manName")).Text;
        string manImg = ((FileUpload)item.FindControl("manImg")).FileName;
        string oldImg = ((HiddenField)item.FindControl("oldImg")).Value;
        string manAdd = ((TextBox)item.FindControl("manAdd")).Text;
        string manDetail = ((TextBox)item.FindControl("manDetail")).Text;
        string manCity = ((TextBox)item.FindControl("manCity")).Text;
        string manMap = ((TextBox)item.FindControl("manMap")).Text;

        int row = 0;
        if (manImg == "")
        {
            row = m.update(fetchId, manName, oldImg, manAdd, manDetail, manCity, manMap);
        }
        else
        {
            row = m.update(fetchId, manName, manImg, manAdd, manDetail, manCity, manMap);
            ((FileUpload)item.FindControl("manImg")).SaveAs(Server.MapPath("../photos/mandir/") +manImg);
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