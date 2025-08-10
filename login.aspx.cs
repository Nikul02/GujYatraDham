using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class _Default : System.Web.UI.Page
{
    Hashtable h;
    admin a;
    user u;
    protected void Page_Load(object sender, EventArgs e)
    {
        u = new user(Application);
        a = new admin(Application);
    }

    protected void login_Click(object sender, EventArgs e)
    {
        string eId, pas;
        eId = email.Text;
        pas = pass.Text;

        Hashtable hu = u.isAvailable(eId,pas);
        Hashtable ha = a.isAvailable(eId, pas);
        if(hu.Count > 0)
        {
            Session["uid"] = hu["userId"];
            Response.Redirect("index.aspx");
        }
        else if(ha.Count > 0)
        {
            Session["aid"] = ha["adminId"];
            Response.Redirect("admin1/admin-index.aspx");
        }
        else
        {
            Response.Write("<script>alert('False')</script>");
        }

    }
}