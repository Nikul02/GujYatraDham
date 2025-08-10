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
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        m = new mandir(Application);
        if(!IsPostBack)
        loadData();
    }

    public void loadData()
    {
        mandirRepeater.DataSource = rr.read("select * from Mandirs");
        mandirRepeater.DataBind();
    }
    
    protected void mandir_delete_Click(object sender, EventArgs e)
    {
        Button btnmandir = (sender as Button);
        int manId = Convert.ToInt32(btnmandir.CommandArgument);

        int row = m.delete(manId);
        if (row > 0)
        {
            Response.Redirect("admin-mandir-view.aspx");
            Response.Write("<script> alert('Mandir Deleted')</script>");
        }
        else
        {
            Response.Write("<script> alert('Mandir Not Deleted')");
        }
    }
}