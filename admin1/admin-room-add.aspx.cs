using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    room r;
    readRepeater rr;
    protected void Page_Load(object sender, EventArgs e)
    {
        r = new room(Application);
        rr = new readRepeater(Application);
        if (!IsPostBack)
            loadData();
    }
    public void loadData()
    {
        dharmId.DataSource = rr.read("select * from Dharmshalas");
        dharmId.DataTextField = "dharmName";
        dharmId.DataValueField = "dharmId";
        dharmId.DataBind();

        rCatId.DataSource = rr.read("select * from Roomcate");
        rCatId.DataTextField = "catName";
        rCatId.DataValueField = "catId";
        rCatId.DataBind();
    }
    protected void room_add_Click(object sender, EventArgs e)
    {
        if(rImg.HasFile)
        {
            int row = r.add(rDetail.Text, rImg.FileName, Convert.ToInt32(rRent.Text), Convert.ToInt32(dharmId.Text), Convert.ToInt32(rCatId.Text), Convert.ToInt32(rTotal.Text));
            if(row>0)
            {
                Response.Write("<script>alert('Room Inserted')</script>");
                rImg.SaveAs(Server.MapPath("../photos/room/"+rImg.FileName));
            }
        }
        
        

    }
}