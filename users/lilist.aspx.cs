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


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "chat")
        {
            //Response.Write("<script>alert('booked')</script>");

            Response.Redirect("chat.aspx?reciever_id=" + e.CommandArgument);
        }
        if (e.CommandName == "consult")
        {
            // Response.Write("<script>alert('booked')</script>");
            string user_email = Session["email"].ToString();
            string staff_email = e.CommandArgument.ToString();
            con.reader("select * from consultation where staff_email='" + staff_email + "' and con_status='0'");
            if (con.dr.Read())
            {
                con.dr.Close();
                Response.Write("<script>alert('Sorry ,your are already requested for this consulatation')</script>");
            }
            else
            {
                con.dr.Close();
                con.execute("insert into consultation(staff_email,user_email,con_status,con_time)values('" + staff_email + "','" + user_email + "','0','" + DateTime.Now.ToString() + "')");
                Response.Write("<script>alert('Consultation Requested Successfully')</script>");
            }
        }
    }
}