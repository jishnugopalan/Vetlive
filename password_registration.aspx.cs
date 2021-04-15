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
      /*  Response.Write("<script>alert('in password')</script>");

        string email = Session["email"].ToString();
        string usertype = Session["usertype"].ToString();
        con.execute("insert into login(email,usertype) values('" + email + "','" + usertype + "')");

        System.Diagnostics.Debug.WriteLine(email);
        Response.Write("<script>alert('login ')</script>");*/

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        string usertype = Session["usertype"].ToString();
        con.execute("insert into login(email,usertype,password,security_question,security_answer) values('" + email + "','" + usertype + "','" + password.Text + "','" + security_question.SelectedItem + "','" + security_answer.Text + "')");
        Response.Write("<script>alert('Registration successfull')</script>");
    }
}