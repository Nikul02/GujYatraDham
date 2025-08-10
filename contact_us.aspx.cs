using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact_us : System.Web.UI.Page
{
    ConnectionClass con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass(Application);

    }
    protected void addcu_Click(object sender, EventArgs e)
    {
        String Name = name.Text;
        String Email = email.Text;
        String Subject = subject.Text;
        String Message = message.Text;

        int row=con.allQuery ("insert into Feedbacks (Name,userEmail,feedsub,feedMessage,feedDate) values ('"+Name+"','"+Email +"','"+subject +"','"+Message +"','"+ DateTime.Now.ToString ("yyyy-MM-dd") +"')");
        if(row>0)
        {
            Response.Write("<script>alert('Feedback is Added')</script>");
        }
        else
        {
            Response.Write("<script>alert('Feedback is not Added')</script>");
        }
    }
}