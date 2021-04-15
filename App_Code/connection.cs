using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for connection
/// </summary>
public class connection
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=vetlive;Integrated Security=True");
    public SqlCommand cmd;
    public SqlDataReader dr;
	public connection()
	{
        con.Open();
		//
		// TODO: Add constructor logic here
		//

	}
    public void execute(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
    }
    public void reader(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con);
        dr = cmd.ExecuteReader();
    }
}