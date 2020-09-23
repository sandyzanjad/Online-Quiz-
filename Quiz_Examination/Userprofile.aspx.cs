using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;


namespace Quiz_Examination
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        SqlConnection cnn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = Session["uname"].ToString();
            cnn.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Quiz;Integrated Security=True;Pooling=False";
            cnn.Open();

            cmd = new SqlCommand("select name,uname,mobile,address,gender,dob from Registration where uname='"+uname +"'", cnn);

            cmd.ExecuteNonQuery();

            


            SqlDataReader read = cmd.ExecuteReader();
            while (read.Read())
            {
                Label2.Text = (read["name"].ToString());
                Label4.Text = (read["uname"].ToString());
               //abel6.Text = (read["password"].ToString());
                Label8.Text = (read["mobile"].ToString());
                Label14.Text = (read["address"].ToString());
                Label10.Text = (read["gender"].ToString());
                Label12.Text = (read["dob"].ToString());
            }
            cnn.Close();

        }
    }
}