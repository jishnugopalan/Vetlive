using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class doctor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "pres")
        {
            //Response.Write("<script>alert('booked')</script>");

           Response.Redirect("prescription.aspx?con_id=" + e.CommandArgument);
        }
    }
}