using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    connection con = new connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.execute("insert into users (name,email,phone) values('" + name.Text + "','" + email.Text + "','" + phone.Text + "')");
        Response.Write("<script>alert('Registered succesfully')</script>");

    }
}