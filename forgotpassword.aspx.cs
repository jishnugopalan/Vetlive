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
       // string user = TextBox1.Text;
    
            con.reader("select * from login where email='" + TextBox1.Text + "'");

            if (con.dr.Read())
            {
                TextBox2.Text = con.dr.GetValue(3).ToString();
                Label2.Visible = true;
                Label3.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                Button2.Visible = true;






            }
            else {
                Response.Write("<Script>alert('This email is not registered')</Script>");
            }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.reader("select * from login where email='" + TextBox1.Text + "' and security_question='"+TextBox2.Text+"' and security_answer='"+TextBox3.Text+"'");
        if (con.dr.Read())
        {
           
            Label4.Visible = true;
            Label5.Visible = true;
            TextBox4.Visible = true;
            TextBox5.Visible = true;
            Button3.Visible = true;






        }
        else
        {
            Response.Write("<Script>alert('Please enter a correct answer')</Script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string email = TextBox1.Text;
        con.execute("update login set password='" + TextBox4.Text + "' where email='" + email + "'");
        Response.Write("<script>alert('Password changed successfully')</script>");
        Response.Redirect("login.aspx");
    }
}