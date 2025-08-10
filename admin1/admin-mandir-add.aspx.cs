using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_Default : System.Web.UI.Page
{
    mandir m;
    protected void Page_Load(object sender, EventArgs e)
    {
        m = new mandir(Application);
    }

    protected void mandir_add_Click(object sender, EventArgs e)
    {
        if(manImg.HasFile)
        {
            int row = m.add(manName.Text,manImg.FileName, manAdd.Text, manDetail.Text, manCity.Text, manMap.Text);
            if(row>0)
            {
                manImg.SaveAs(Server.MapPath("../photos/mandir/" + manImg.FileName));
                Response.Write("<script>alert('Mandir inserted')</script>");
            }
        }
    }
}