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
    public partial class Addexam : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Insert into Exam" + "(examid,examname,examdate,duration,marks,totalquestion,exampassmarks,subfid)values(@examid,@examname,@examdate,@duration,@marks,@totalquestion,@exampassmarks,@subfid)", con);
            cmd.Parameters.AddWithValue("@examid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@examname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@examdate", TextBox3.Text);
            cmd.Parameters.AddWithValue("@duration", TextBox4.Text);
            cmd.Parameters.AddWithValue("@marks", TextBox5.Text);
            cmd.Parameters.AddWithValue("@totalquestion", TextBox6.Text);
            cmd.Parameters.AddWithValue("@subfid", TextBox7.Text);
             cmd.Parameters.AddWithValue("@exampassmarks", TextBox8.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Exam Inserted Successfully";
        }
    }
}