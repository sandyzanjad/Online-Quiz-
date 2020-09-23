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
    public partial class Addsubject : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Quiz;Integrated Security=True;Pooling=False";
            con.Open();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into Subject" + "(subid,subname)values(@subid,@subname)", con);
            cmd.Parameters.AddWithValue("@subid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@subname", TextBox2.Text);
            
            cmd.ExecuteNonQuery();
            Label1.Text = "Subject Inserted Successfully";
            Response.Redirect("Userlogin.aspx");
        }

    }
}