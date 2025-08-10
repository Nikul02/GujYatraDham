using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    puja p;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        p = new puja(Application);
        if(!IsPostBack )
        loadData();
    }

    public void loadData()
    {
        pujaRepeater.DataSource = rr.read("select p.*,m.* from Pujas p,Mandirs m where p.manId=m.manId");
        pujaRepeater.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void puja_delete_Click(object sender, EventArgs e)
    {
        Button btnpuja = (sender as Button);
        int pujaId =Convert.ToInt32 ( btnpuja.CommandArgument);

        int row = p.delete(pujaId);
        if(row >0)
        {
            Response.Write("Record Delted " + pujaId);
            Response.Redirect("admin-puja-view.aspx");
        }
        else
        {
            Response.Write("Record not Deleted");
        }
    }
}