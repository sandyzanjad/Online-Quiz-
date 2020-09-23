using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace Quiz_Examination
{
    public partial class Userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
        SqlConnection cnn = new SqlConnection();
        cnn.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Quiz;Integrated Security=True;Pooling=False";
        cnn.Open();

        cmd = new SqlCommand("select uname password from Registration where uname=@uname and password=@password", cnn);
        cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        cmd.ExecuteNonQuery();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["uname"] = TextBox1.Text;
            Response.Redirect("Userprofile.aspx");
        }
        else
        {
            Label1.Text = "Invalid Username or Password";
        }
        
        cnn.Close();
    
        }
    }
}