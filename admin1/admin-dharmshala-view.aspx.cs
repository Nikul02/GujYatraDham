using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    dharmshala d;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        d = new dharmshala(Application);
        if(!IsPostBack)
        loadData();
    }

    public void loadData()
    {
        dharmRepeater.DataSource = rr.read("select d.*,m.* from Dharmshalas d,Mandirs m where d.manId=m.manId");
        dharmRepeater.DataBind();
     }
    protected void dharmshala_delete_Click(object sender, EventArgs e)
    {
        Button btndharmshala = (sender as Button);
        int dharmId = Convert.ToInt32(btndharmshala.CommandArgument);

        int row = d.delete(dharmId);
        if(row>0)
        {
            Response.Write("<script> alert('Dharmshala"+dharmId +" Deleted')</script>");
            Response.Redirect("admin-dharmshala-view.aspx");
        }
    }
}