﻿using System;
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

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        con.reader("select * from registration where email = '" + email.Text + "'");
        if (con.dr.Read())
        {
            con.dr.Close();
            Response.Write("<script>alert('Sorry there is already an account associted with this email id, Please use another one!.')</script>");
        }

        else
        {

            con.dr.Close();
            con.execute("insert into registration (name,email,phone,home,place,city,country,state,district,pincode,gender,dob) values('" + name.Text + "','" + email.Text + "','" + phone.Text + "','" + home.Text + "','" + place.Text + "','" + city.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + DropDownList3.SelectedItem + "','" + pincode.Text + "','" + gender.SelectedItem + "','" + date_of_birth.Text + "')");
            Session["email"] = email.Text;
            Session["usertype"] = "user";
            Response.Write("<script>alert('Registered succesfully')</script>");
            Response.Write("<script>window.location.href='password_registration.aspx'</script>");
        }


    }
}