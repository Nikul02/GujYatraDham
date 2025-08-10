using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    readRepeater rr;
    ConnectionClass con;
    int roomId,roomCatId;
    protected void Page_Load(object sender, EventArgs e)
    {
        roomId = Convert.ToInt16(Request.QueryString["rId"]);
        roomCatId = Convert.ToInt16(Request.QueryString["rCatId"]);
        rr = new readRepeater(Application);
        con = new ConnectionClass(Application);
      
        loadRoom_detail();
        loadReview();    
    }

    public void loadRoom_detail()
    {
        readRoomDetail.DataSource = rr.read("select r.*,rc.* from Rooms r,Roomcate rc where r.rCatId=rc.catId and rId="+roomId);
        readRoomDetail.DataBind();
    }

    protected void add_room_review_Click(object sender, EventArgs e)
    {
        string comm;
        comm = comment.Text;
        DateTime now = DateTime.Today;
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");
        int row = con.allQuery("insert into Reviews (userComm,revDate,userId,id,type) values('" + comm + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + Session["uid"] + "','" + roomId + "','R')");
        if (row > 0)
        {
            Response.Write("<script>alert('Review Added')</script>");
        }
        else
        {
            Response.Write("<script>alert('Review Not Added')</script>");
        }
        loadReview();
   
    }
    public void loadReview()
    {
        read_room_review.DataSource = rr.read("select TOP 4 rw.*,r.*,rc.*,u.* from Reviews rw,Rooms r,Roomcate rc,Users u where rw.id=r.rId and rw.userId=u.userId and r.rCatId=rc.catId and rw.id="+roomId);
        read_room_review.DataBind();
    }

}