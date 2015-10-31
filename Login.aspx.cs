using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string f = "select * from Register where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        SqlDataReader ul = c1.reader(f);
        if (ul.HasRows)
        {
            while (ul.Read())
            {
                Session["user"] = ul["id"].ToString();
            }
            Response.Redirect("info.aspx");
        }
        else
        {
            Label12.Visible = true;
        }
    }
}