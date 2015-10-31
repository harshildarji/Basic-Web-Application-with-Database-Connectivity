using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string f = "select * from admin where eid='"+TextBox1.Text+"'and pwd='"+TextBox2.Text+"'";
        SqlDataReader ad = c1.reader(f);
        if (ad.HasRows)
        {
            Response.Redirect("master.aspx");
        }
        else
        {
            Label13.Visible = true;
        }
    }
}