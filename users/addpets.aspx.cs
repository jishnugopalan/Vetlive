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
        string str = Server.MapPath("uploads/");
        FileUpload1.SaveAs(str + "/" + FileUpload1.FileName);
        //string email = Session["email"].ToString;
        string email = Session["email"].ToString();
        con.execute("insert into pets(email,pet_photo,pet_age,category)values('" + email + "','" + FileUpload1.FileName + "','" + TextBox2.Text + "','" + TextBox1.Text + "')");
        Response.Write("<script>alert('Pet added succesfully')</script>");



    }
}