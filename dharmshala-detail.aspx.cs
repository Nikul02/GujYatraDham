using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    readRepeater rr;
    int fetch,mandirId;
    ConnectionClass con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass(Application);
        rr = new readRepeater(Application);
        fetch = Convert.ToInt32(Request.QueryString["dId"]);
        mandirId = Convert.ToInt32(Request.QueryString["mId"]);
        if (!IsPostBack)
        {

            loadData();
            loadRoomType();
           loadRoomDetail();

            loadReview();
        }
    }

    public void loadData()
    {
        readDharmshala.DataSource=rr.read ("select * from Dharmshalas where dharmId="+fetch+"");
        readDharmshala.DataBind();
    }
    public void loadRoomType()
    {
        bkrtype.DataSource = rr.read("select r.rId,rc.catName from Rooms r,Roomcate rc where r.rCatId = rc.catId and r.dharmId = " + fetch);
        bkrtype.DataTextField = "catName";
        bkrtype.DataValueField = "rId";
        bkrtype.DataBind();
        bkrtype.Items.Insert(0, new ListItem("Select Room Type", ""));
    }

    protected void bookroom_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");
        string uid, did, rid, bdate, troom, tday,roomId;
        uid = Session["uid"].ToString();
        did = fetch.ToString();
        rid = bkrtype.Text;
        bdate = bkDate.Text;
        troom = bktroom.Text;
        tday = bkDay.Text;
        roomId = bkrtype.SelectedValue;

        if(totalAvailableRoom() >= Convert.ToInt32(troom))
        {
            con.allQuery("insert into Bookrooms(userId,dharmId,rId,bookDate,totalDay,totalRoom) values('" + uid + "','" + did + "','" + rid + "','" + bdate + "','" + tday  + "','" + troom  + "')");
        }
        else
        {
            Response.Write("<script>alert('Only " + (totalAvailableRoom() >= 0 ? totalAvailableRoom().ToString() : "0").ToString() + " Rooms Available')</script>");
   
        }

        
       // Response.Write("<script>alert('"+tPrice+"')</script>");
    }
    protected void bktroom_TextChanged(object sender, EventArgs e)
    {
        updateTotalRent();
    
        }

    public void updateTotalRent()
    {
        long rid = Convert.ToInt64(bkrtype.Text);
        long total_room = Convert.ToInt64(bktroom.Text == null ? "0" : bktroom.Text);
        long tday = Convert.ToInt64(bkDay.Text == null ? "0" : bkDay.Text);


        long price = Convert.ToInt64(rr.read("select * from Rooms where rId = " + rid.ToString()).Tables[0].Rows[0]["rRant"].ToString());
        totalRent.Text = ((total_room * tday) * price).ToString();
    }
    protected void bkrtype_SelectedIndexChanged(object sender, EventArgs e)
    {
        updateTotalRent();
        dispTotalRoom();
    }
    public void dispTotalRoom()
    {
        taroom.Text = totalAvailableRoom() >= 0 ? totalAvailableRoom().ToString() : "0";
    }
    public int totalAvailableRoom()
    {
        string rid = bkrtype.Text;
        string tRoom = rr.read("select * from Rooms where rId =" + rid).Tables[0].Rows[0]["rTotal"].ToString();
        string bookedRoom = con.allScalar("select sum(totalRoom) from Bookrooms where status = 0 and rId = " + rid).ToString();
        return Convert.ToInt32((Convert.ToInt32(tRoom == "" ? "0" : tRoom) - Convert.ToInt32(bookedRoom == "" ? "0" : bookedRoom)));
   
    }
    protected void bkDay_TextChanged(object sender, EventArgs e)
    {
        updateTotalRent();
    }
    
     public void loadReview()
       {
           int userId = Convert.ToInt16(Session["uid"]);
           read_dharmshala_review.DataSource = rr.read("select r.*,d.*,u.* from Reviews r,Dharmshalas d,Users u where r.id=d.dharmId and type='D' and u.userId=r.userId and d.dharmId=" + fetch);
           read_dharmshala_review.DataBind();
       }
    
    
    public void loadRoomDetail()
    {
        readRoom.DataSource = rr.read("select r.*,rc.* from Rooms r,Roomcate rc where r.rCatId=rc.catId and r.dharmId=" + fetch);
        readRoom.DataBind();
    }
    /*
    protected void add_dharmshala_review_Click(object sender, EventArgs e)
    {
        string comm;
        comm = comment.Text;
        DateTime now = DateTime.Today;
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");
        int row = con.allQuery("insert into Reviews (userComm,revDate,userId,id,type) values('" + comm + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + Session["uid"] + "','" + fetch + "','D')");
        if (row > 0)
        {
            Response.Write("<script>alert('Review Added')</script>");
        }
        else
        {
            Response.Write("<script>alert('Review Not Added')</script>");
        }

    }*/

}