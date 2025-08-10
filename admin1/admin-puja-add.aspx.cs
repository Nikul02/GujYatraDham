using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    puja p;
    readRepeater rr;
    protected void Page_Load(object sender, EventArgs e)
    {
        p = new puja(Application);
        rr = new readRepeater(Application);
        if(!IsPostBack)
        loadData();
    }

    public void loadData()
    {
        manId.DataSource = rr.read("select * from Mandirs");
        manId.DataTextField = "manName";
        manId.DataValueField = "manId";
        manId.DataBind();
    }
    protected void puja_add_Click(object sender, EventArgs e)
    {
        if(pujaImg.HasFile)
        {
            string date = String.Format("{0:dd-MM-yyyy}", pujaSchedule.Text);
            int row = p.add(pujaName.Text,pujaSchedule.Text,pujaImg.FileName,Convert.ToInt32(pujaPrice.Text),pujaDetail.Text,Convert.ToInt32(manId.Text));
            if(row>0)
            {
                pujaImg.SaveAs(Server.MapPath("../photos/puja/" + pujaImg.FileName));
                Response.Write("<script>alert('puja Inserted')</script>");
            }
        }
    }
}