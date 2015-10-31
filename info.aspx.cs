using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class info : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Label9.Text = "Data Not Found";
            Label10.Text = "Data Not Found";
            Label11.Text = "Data Not Found";
            Label12.Text = "Data Not Found";
            Label13.Text = "Data Not Found";
            Label14.Text = "Data Not Found";
        }
        else
        {
            string f = "select * from Register where id='"+Session["user"]+"'";
            SqlDataReader dt = c1.reader(f);
            if (dt.HasRows)
            {
                while (dt.Read())
                {
                    Label16.Text = dt["id"].ToString();
                    Label9.Text = dt["name"].ToString();
                    Label10.Text = dt["address"].ToString();
                    Label11.Text = dt["gender"].ToString();
                    Label12.Text = dt["age"].ToString();
                    Label13.Text = dt["hobby"].ToString();
                    Label14.Text = dt["email"].ToString();
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("edit.aspx?id="+Session["user"]);
    }
}