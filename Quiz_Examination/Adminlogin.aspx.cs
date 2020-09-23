using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;

namespace Quiz_Examination
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Quiz;Integrated Security=True;Pooling=False";
            con.Open();
            cmd = new SqlCommand("select * from Admin where username=@username and password=@password",con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Adminprofile.aspx");
            }
            else
            {
                Label1.Text = "Invalid Login Check Username and Password";
            }
            con.Close();
        }
    }
}