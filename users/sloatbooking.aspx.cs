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
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string email = Session["email"].ToString();
        string hospital_id = Request.QueryString["id"];
        string sdate=TextBox1.Text;
        //con.reader("select count(*) from sloat where sloat_date='" + sdate + "'");
        //con.dr.Read();
        //int n = int.Parse(con.dr.GetValue(0));
      
            con.execute("insert into sloat(hospital_id,email,sloat_date,status)values('" + hospital_id + "','" + email + "','" + TextBox1.Text + "','Not Approved')");
            Response.Write("<script>alert('Please wait for sloat approving')</script>");
        
       

       

    }

    
}