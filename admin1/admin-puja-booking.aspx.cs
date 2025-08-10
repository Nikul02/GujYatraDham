using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass(Application);
        rr = new readRepeater(Application);
        if (!IsPostBack)
        {
            loadData();
        }

    }

    public void loadData()
    {
        puja_booking.DataSource = rr.read("select bkp.*,p.*,u.* from Bookpujas bkp,Pujas p, Users u where bkp.pujaId=p.pujaId and bkp.userId=u.userId");
        puja_booking.DataBind();
    }

    protected void book_puja_Click(object sender, EventArgs e)
    {
        string id = bkId.Value;
        string date = bkDate.Text;
        int row = con.allQuery("update Bookpujas set bkDate = '"+date+"' where bkpujaId = " + id);
        if(row > 0)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "xyz", "alert('record updated')",true);
        }
        loadData();
    }
}