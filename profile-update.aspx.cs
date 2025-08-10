using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    readRepeater rr;
    user u;
    int fetch;
    protected void Page_Load(object sender, EventArgs e)
    {
        rr = new readRepeater(Application);
        u = new user(Application);
        fetch = Convert.ToInt32(Request.QueryString["uid"]);
        if (!IsPostBack)
            loadData();
    }

    public void loadData()
    {
        readUser.DataSource = rr.read("select * from Users where userId="+fetch);
        readUser.DataBind();
    }
    protected void update_profile_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        RepeaterItem item = btn.NamingContainer as RepeaterItem;

        string userName = (item.FindControl("userName") as TextBox).Text;
        string userEmail = (item.FindControl("userEmail") as TextBox).Text;
        string userGender = (item.FindControl("userGender") as RadioButtonList).Text;
        string userMno = (item.FindControl("userMno") as TextBox).Text;
        string userAdd=(item.FindControl ("userAdd") as TextBox ).Text;
        string userPass = (item.FindControl("userPass") as TextBox).Text;
        string userCity = (item.FindControl("userCity") as TextBox).Text;
        string img = (item.FindControl("img") as FileUpload).FileName;
        string oldimg = ((HiddenField)item.FindControl("oldimg")).Value;
        string idProof = (item.FindControl("idProof") as FileUpload).FileName;
        string oldidProof = (item.FindControl("oldidProof") as HiddenField).Value;
        int row=0;

        string newimg = "";
        string newidproof = "";
        if(idProof == "")
        {
            newidproof = oldidProof;
        }
        else
        {
            newidproof = idProof;
            ((FileUpload)item.FindControl("idProof")).SaveAs(Server.MapPath("/photos/user/proof/") + idProof);
        }
        if(img == "")
        {
            newimg = oldimg;
        }
        else
        {
            newimg = img;
            ((FileUpload)item.FindControl("img")).SaveAs(Server.MapPath("/photos/user/profile/") + img);
        }
        
        row = u.update(fetch, userName, userEmail, userGender, userMno, userPass, userAdd, userCity, newimg, newidproof);
          

        if (row > 0)
        {
            Response.Write("<script>alert(' Profile Updated')</script>");
        }
        else
        {
            Response.Write("<script>alert(' Profile Not Updated')</script>");
        }
        loadData();
    
    }
    protected void readUser_DataBinding(object sender, EventArgs e)
    {
        
    }
    protected void readUser_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        RadioButtonList rdb = e.Item.FindControl("userGender") as RadioButtonList;
        rdb.Text = rr.read("select * from Users where userId = " + fetch).Tables[0].Rows[0]["userGender"].ToString() ;
    }
}