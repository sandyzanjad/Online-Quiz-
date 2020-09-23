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
    public partial class Register : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Insert into Registration" + "(name,uname,password,confirm_password,mobile,address,gender,dob)values(@name,@uname,@password,@confirm_password,@mobile,@address,@gender,@dob)", con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@uname",TextBox2.Text);
            cmd.Parameters.AddWithValue("@password", TextBox3.Text);
            cmd.Parameters.AddWithValue("@confirm_password", TextBox4.Text);
            cmd.Parameters.AddWithValue("@mobile", TextBox5.Text);
            cmd.Parameters.AddWithValue("@address", TextBox6.Text);
           cmd.Parameters.AddWithValue("@gender",DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@dob", TextBox7.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Inserted Successfully";
        }

        
       
    }
}