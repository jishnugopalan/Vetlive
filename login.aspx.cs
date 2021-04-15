using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    connection con = new connection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.reader("select * from login where email='" + TextBox1.Text + "' and password= '" + TextBox2.Text + "'");
        if (con.dr.Read())
        {
            Session["email"] = TextBox1.Text;
            if (con.dr.GetValue(2).ToString() == "admin")
            {
                //Response.Write("<script>alert('adminlogin')</script>");
                Response.Redirect("admin/index.aspx");
            }
            if (con.dr.GetValue(2).ToString() == "user")
            {
                Response.Write("<script>alert('user login')</script>");
                Response.Redirect("users/index.aspx");

            }
            if (con.dr.GetValue(2).ToString() == "li")
            {
                Response.Redirect("li/index.aspx");

            }
            if (con.dr.GetValue(2).ToString() == "doctor")
            {
                Response.Redirect("doctor/index.aspx");

            }
            Response.Write("<script>alert('Unsuccessfull login')</script>");
        }
        else
        {
            Response.Write("<script>alert('Unsuccessfull login')</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgotpassword.aspx");
    }
}