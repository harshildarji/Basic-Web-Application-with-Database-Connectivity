using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con = new SqlConnection();
    public Class1()
    {
        con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\VS10 BackUp\WebSites\Fakebook\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
    }
    public void checkcon()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }
    public void iud(string s)
    {
        checkcon();
        SqlCommand cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public SqlDataReader reader(string s)
    {
        checkcon();
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        return dr;
    }
}
   