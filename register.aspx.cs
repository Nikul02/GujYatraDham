using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    user u;
    protected void Page_Load(object sender, EventArgs e)
    {
        u = new user(Application);
    }
   
    protected void register_Click(object sender, EventArgs e)
    {
        int row = u.add(userName.Text, userEmail.Text, userGender.Text, userMno.Text, userPass.Text, userAdd.Text, userCity.Text, img.FileName, idProof.FileName);

        if(row>0)
        {
            Response.Write("<script>alert('USER REGISTERED SUCCESSFULLY')</script>");
            img.SaveAs(Server.MapPath("/photos/user/profile/" + img.FileName));
            idProof.SaveAs(Server.MapPath("/photos/user/proof/" + idProof.FileName));
        }
        else
        {
            Response.Write("<script>alert('USER NOT REGISTERED')</script>");
        }
    }
}