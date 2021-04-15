using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class users_Default : System.Web.UI.Page
{
    connection con = new connection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        string reciever_id = Request.QueryString["reciever_id"];
        var timeStamp = DateTime.Now.ToFileTime();
        con.execute("insert into chats(sender_id,reciever_id,message,timeanddate)values('" + email + "','" + reciever_id + "','" + TextBox1.Text + "','" + DateTime.Now.ToString() + "')");
        Response.Write("<script>alert('Message send')</script>");
        Response.Redirect("chat.aspx?reciever_id=" + reciever_id);



        
    }
}