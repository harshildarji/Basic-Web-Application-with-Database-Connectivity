using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class edit : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Request.QueryString["id"] != null)
            {
                string f = "select * from Register where id='" + Request.QueryString["id"] + "'";
                SqlDataReader dr = c1.reader(f);
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox1.Text = dr["name"].ToString();
                        TextBox2.Text = dr["address"].ToString();
                        RadioButtonList1.SelectedValue = dr["gender"].ToString();
                        TextBox3.Text = dr["age"].ToString();
                        TextBox4.Text = dr["hobby"].ToString();
                        TextBox5.Text = dr["email"].ToString();
                    }
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string upd = "update Register set name='" + TextBox1.Text + "',address='" + TextBox2.Text + "',gender='" + RadioButtonList1.SelectedItem.Text + "',age='" + TextBox3.Text + "',hobby='" + TextBox4.Text + "',email='" + TextBox5.Text + "' where id='" + Request.QueryString["id"] + "'";
        c1.iud(upd);
        Response.Redirect("info.aspx");
    }
}