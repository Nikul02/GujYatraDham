using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class admin1_Default : System.Web.UI.Page
{
    readRepeater rr;
    room r;
    int fetch;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        r = new room(Application);
        fetch =Convert.ToInt32 (Request.QueryString ["rId"]);
        if (!IsPostBack)
            loadData();
    }

    public void loadData()
    {
        update_room.DataSource = rr.read("select * from Rooms where rId='" + fetch + "'");
        update_room.DataBind();

    }
    protected void update_room_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        DropDownList dharmId = (DropDownList)e.Item.FindControl("dharmId");
        dharmId.DataSource = rr.read("select * from Dharmshalas");
        dharmId.DataTextField = "dharmName";
        dharmId.DataValueField = "dharmId";
        dharmId.DataBind();

        DataSet ds = rr.read("select * from Rooms where rId='" + fetch + "'");
        dharmId.SelectedValue = ds.Tables[0].Rows[0].ItemArray[4].ToString();

        DropDownList rCatId = (DropDownList)e.Item.FindControl("rCatId");
        rCatId.DataSource = rr.read("select * from Roomcate");
        rCatId.DataTextField = "catName";
        rCatId.DataValueField = "catId";
        rCatId.DataBind();

        DataSet dsc = rr.read("select * from Rooms where rId='" + fetch + "'");
        rCatId.SelectedValue = ds.Tables[0].Rows[0].ItemArray[5].ToString();
        
    }
    protected void room_update_Click(object sender, EventArgs e)
    {
       Button btn = (Button)sender;
       RepeaterItem item = (RepeaterItem)btn.NamingContainer;
       string rDetail = ((TextBox)item.FindControl("rDetail")).Text;
        string rImg=((FileUpload )item.FindControl ("rImg")).FileName;
        string oldImg = ((HiddenField)item.FindControl("oldImg")).Value;
        int rRant=Convert.ToInt32(((TextBox)item.FindControl ("rRant")).Text);
        int dharmId=Convert.ToInt32 (((DropDownList)item.FindControl ("dharmId")).Text);
        int rCatId=Convert.ToInt32(((DropDownList )item.FindControl ("rCatId")).Text);
        int rTotal=Convert.ToInt32(((TextBox)item.FindControl ("rTotal")).Text);
        int row = 0;
        if(rImg=="")
        {
             row = r.update(fetch, rDetail, oldImg, rRant, dharmId, rCatId, rTotal);

        }
        else
        {
             row = r.update(fetch, rDetail, rImg, rRant, dharmId, rCatId, rTotal);
             ((FileUpload)item.FindControl("rImg")).SaveAs(Server.MapPath("../photos/room/")+rImg);
        }
        if (row > 0)
        {
            Response.Write("<script>alert('updated')</script>");
        }
        else
        {
            Response.Write("<script>alert('Not Updated')</script>");
        }
        loadData();
            }
}