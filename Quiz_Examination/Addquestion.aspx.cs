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
    public partial class Addquestion : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Insert into Question" + "(qid,qname,option1,option2,option3,option4,correctanswer,examfid)values(@qid,@qname,@option1,@option2,@option3,@option4,@correctanswer,@examfid)", con);
            cmd.Parameters.AddWithValue("@qid", TextBox1.Text);
            cmd.Parameters.AddWithValue("@qname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@option1", TextBox3.Text);
            cmd.Parameters.AddWithValue("@option2", TextBox4.Text);
            cmd.Parameters.AddWithValue("@option3", TextBox5.Text);
            cmd.Parameters.AddWithValue("@option4", TextBox6.Text);
            cmd.Parameters.AddWithValue("@correctanswer", TextBox8.Text);
            cmd.Parameters.AddWithValue("@examfid", TextBox7.Text);
            cmd.ExecuteNonQuery();
            Label1.Text = "Question Inserted Successfully";
        }
    }
}