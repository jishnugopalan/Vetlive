using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class li_Default : System.Web.UI.Page
{
    connection con = new connection();

    protected void Page_Load(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        if (!IsPostBack)
        {
            con.reader("select * from registration where email='" + email + "'");

            if (con.dr.Read())
            {
                TextBox1.Text = con.dr.GetValue(0).ToString();
                TextBox2.Text = con.dr.GetValue(1).ToString();
                TextBox3.Text = con.dr.GetValue(3).ToString();
                TextBox4.Text = con.dr.GetValue(4).ToString();
                TextBox5.Text = con.dr.GetValue(5).ToString();
                //DropDownList1.SelectedValue = con.dr.GetValue(8).ToString();
               // DropDownList2.SelectedValue = con.dr.GetValue(9).ToString();
               // DropDownList3.SelectedValue = con.dr.GetValue(6).ToString();
                TextBox6.Text = con.dr.GetValue(7).ToString();
               // TextBox7.Text = con.dr.GetValue(11).ToString();
                gender.SelectedValue = con.dr.GetValue(10).ToString();









                



            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        con.execute("update registration set name='" + TextBox1.Text + "',phone='" + TextBox2.Text + "',home='" + TextBox3.Text + "',place='" + TextBox4.Text + "',city='" + TextBox5.Text + "',pincode='" + TextBox6.Text + "',gender='" + gender.SelectedValue + "' where email='" + email + "'");
        Response.Write("<script>alert('Updated successfully')</script>");

    }
}