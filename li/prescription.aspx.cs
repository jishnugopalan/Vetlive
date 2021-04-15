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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["con_id"].ToString();
        int con_id = Int16.Parse(id);
        con.execute("update consultation set prescription='" + TextBox1.Text + "',con_status='1' where con_id='" + con_id + "'");
        Response.Write("<script>alert('Prescription send')</script>");



    }
}