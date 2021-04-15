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
        string hospital_id = Request.QueryString["id"];
        con.execute("insert into review(hospital_id,email,description,datetime)values('" + hospital_id + "','" + email + "','" + TextBox1.Text + "','" + DateTime.Now.ToShortDateString() + "')");
        Response.Write("<script>alert('Review added successfully')</script>");
        

    }
}