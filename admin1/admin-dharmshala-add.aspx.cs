using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class admin1_Default : System.Web.UI.Page
{
    dharmshala d;
    readRepeater rr;
    protected void Page_Load(object sender, EventArgs e)
    {
        d = new dharmshala(Application);
        rr = new readRepeater(Application);
        if(!IsPostBack )
            loadData();
    }

    public void loadData()
    {
        manId.DataSource = rr.read("select * from Mandirs");
        manId.DataTextField = "manName";
        manId.DataValueField = "manId";
        manId.DataBind();
    }
    protected void dharmshala_add_Click(object sender, EventArgs e)
    {


       
        if(dharmImg.HasFile )
        {
            string detail = @""+dharmDetail.Text;

            int row = d.add(dharmName.Text, dharmImg.FileName, dharmCity.Text, dharmMap.Text, detail.Replace("'", "''"), dharmContact.Text, dharmAdd.Text, Convert.ToInt32(manId.Text));

            if(row>0)
            {
                dharmImg.SaveAs(Server.MapPath("../photos/dharmshala/" + dharmImg.FileName));
                Response.Write("<script>alert('Dharmshala Inserted')</script>");
            }
        }
    }
}