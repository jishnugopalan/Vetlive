using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class li_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "replay")
        {
            //Response.Write("<script>alert('booked')</script>");

            Response.Redirect("chat.aspx?reciever_id=" + e.CommandArgument);
        }
    }
}