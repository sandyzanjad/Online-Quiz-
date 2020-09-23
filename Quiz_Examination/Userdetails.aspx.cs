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
    public partial class Userdetails : System.Web.UI.Page
    {

        SqlConnection cnn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
           
                cnn.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Quiz;Integrated Security=True;Pooling=False";
                cnn.Open();

                cmd = new SqlCommand("select name,uname,mobile,address,gender,dob from Registration", cnn);
               
                cmd.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridVeiw1.DataSource = dt;
                GridVeiw1.DataBind();
                cnn.Close();

            }
        }
    }
