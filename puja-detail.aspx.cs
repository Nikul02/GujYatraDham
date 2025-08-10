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
    int fetch;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        con = new ConnectionClass(Application);
        fetch = Convert.ToInt32(Request.QueryString["pId"]);
            loadData();
            loadReview();
    }

    public void loadData()
    {
        
        readPuja.DataSource = rr.read("select * from Pujas where pujaId=" + fetch + "");
        readPuja.DataBind();

    }
    protected void book_puja_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");

        string uid, pid, bdate;
        uid = Session["uid"].ToString();
        pid = Request.QueryString["pid"];
        bdate = bkDate.Text;

        int row=con.allQuery("insert into Bookpujas(userId,pujaId,bkDate) values('" + uid + "','" + pid + "','" + bdate + "')");

        if(row>0)
        {
            Response.Write("<script>alert('Puja Booking Successfully')</script>");
        }
        else
        {
            Response.Write("<script>alert('Puja Booking Not Successfully')</script>");
        }


    }

    protected void add_puja_review_Click(object sender, EventArgs e)
    {
        string comm;
        comm = comment.Text;
        DateTime now = DateTime.Today;
        if (Session["uid"] == null)
            Response.Redirect("login.aspx");
        int row = con.allQuery("insert into Reviews (userComm,revDate,userId,id,type) values('" + comm + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + Session["uid"] + "','" + fetch + "','P')");
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
        int userId = Convert.ToInt16( Session["uid"]);
        read_puja_review.DataSource = rr.read("select TOP 4 r.*,p.*,u.* from Reviews r,Pujas p,Users u where r.id=p.pujaId and r.userId=u.userId and p.pujaId="+fetch);
        read_puja_review.DataBind();
    }
}