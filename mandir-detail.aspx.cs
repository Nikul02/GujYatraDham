using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    readRepeater rr;
    ConnectionClass con;
    int fetch;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        con = new ConnectionClass(Application);
        fetch = Convert.ToInt32(Request.QueryString["mId"]);
            loadData();
        loadReview();
    }

    public void loadData()
    {
        readMandir.DataSource = rr.read("select * from Mandirs where manId=" + fetch + "");
        readMandir.DataBind();

        readGallery.DataSource = rr.read("select * from Gallerys where manId=" + fetch + "");
        readGallery.DataBind();

        readDharmshala.DataSource = rr.read("select * from Dharmshalas where manId=" + fetch + "");
        readDharmshala.DataBind();

        readPuja.DataSource = rr.read("select * from Pujas where manId=" + fetch + "");
        readPuja.DataBind();

    }

    protected void add_review_Click(object sender, EventArgs e)
    {
        string comm;
        comm = comment.Text;
        DateTime now=  DateTime.Today;
       if (Session["uid"] == null)
            Response.Redirect("login.aspx");
      int row= con.allQuery("insert into Reviews (userComm,revDate,userId,id,type) values('"+comm +"','"+DateTime.Now.ToString("yyyy-MM-dd") +"','"+Session ["uid"]+"','"+fetch+"','M')");
        if(row >0)
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
    //    read_mandir_review.DataSource = rr.read("select r.*,m.*,u.* from Reviews r,Mandirs m,Users u where r.id=m.manId and type='M' and u.userId=r.userId");
      //  read_mandir_review.DataBind();

        read_mandir_review.DataSource = rr.read("select TOP 4 r.*,m.*,u.* from Reviews r,Mandirs m,Users u where r.id=m.manId and r.userId=u.userId and m.manId="+fetch);
        read_mandir_review.DataBind();
    }

}