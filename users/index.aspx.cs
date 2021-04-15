using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class users_Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "book")
        {
            //Response.Write("<script>alert('booked')</script>");

            Response.Redirect("sloatbooking.aspx?id=" + e.CommandArgument);
        }
        if (e.CommandName == "rate")
        {
            //Response.Write("<script>alert('booked')</script>");

            Response.Redirect("review.aspx?id=" + e.CommandArgument);
        }
           
    }
}