using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace Quiz_Examination
{
    public partial class Adminprofile : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection cnn = new SqlConnection();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            cnn.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Quiz;Integrated Security=True;Pooling=False";
        
        cnn.Open();

        cmd = new SqlCommand("select username,password from Admin  ", cnn);
        cmd.ExecuteNonQuery();

        SqlDataReader read = cmd.ExecuteReader();
        while (read.Read())
        {

            Label2.Text = (read["username"].ToString());
            Label4.Text = (read["password"].ToString());
        }
        cnn.Close();

        }


        protected void Btn1_Click(object sender, EventArgs e)
        {
            Label4.Visible = true;
        }

     /*   protected void Button1_Click(object sender, EventArgs e)
        {
            cnn.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Quiz;Integrated Security=True;Pooling=False";
        cnn.Open();
        Response.Write("<script LANGUAGE='JavaScript' >confirm('Are you Confirm to Update?')</script>");
        cmd = new SqlCommand("update Admin set password=@password  ", cnn);
        cmd.Parameters.AddWithValue("@password",TextBox1.Text);
        cmd.ExecuteNonQuery();
        cnn.Close();
        }*/
    }
}






      
 