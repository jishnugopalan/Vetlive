using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class doctor_Default : System.Web.UI.Page
{
    connection con = new connection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();

         con.reader("select * from login where email='" + email + "' and password='"+TextBox1.Text+"'");

         if (con.dr.Read())
         {
             Label3.Visible = true;
             TextBox2.Visible = true;
             Label4.Visible = true;
             password.Visible = true;
             Button2.Visible = true;
             Label5.Visible = true;
             Label6.Visible = true;
             security_question.Visible = true;
             security_answer.Visible = true;
             security_answer.Text = con.dr.GetValue(4).ToString();
             security_question.SelectedValue = con.dr.GetValue(3).ToString();
              //Response.Redirect("password.aspx");


         }
         else {
             Response.Write("<script>alert('Incorrect Password')</script>");
         }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        con.execute("update login set password='" + TextBox2.Text + "',security_question='"+security_question.SelectedItem+"',security_answer='"+security_answer.Text+"' where email='" + email + "'");
        Response.Write("<script>alert('Password changed successfully')</script>");
       // Response.Redirect("index.aspx");
        



    }
}