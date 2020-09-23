using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

namespace Quiz_Examination
{
    public partial class Exam : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            string sid = Session["subid"].ToString();
           
            SqlCommand cmd = new SqlCommand();
            SqlConnection cnn = new SqlConnection();
            cnn.ConnectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Quiz;Integrated Security=True";
            cnn.Open();
            cmd = new SqlCommand("select examid,subname,exampassmarks,marks,duration from Exam,Subject where Subject.subid=Exam.subfid and subid=@subid ", cnn);
            cmd.Parameters.AddWithValue("@subid",sid);
            cmd.ExecuteNonQuery();
            SqlDataReader read = cmd.ExecuteReader();
            while (read.Read()) 
            {
                Label1.Text =(read["subname"].ToString());
                Label2.Text = (read["exampassmarks"].ToString()); 
                Label3.Text = (read["marks"].ToString());
                Label4.Text = (read["duration"].ToString());
                Label5.Text = (read["examid"].ToString());
                Session["eid"] = (read["examid"].ToString());
            }
            //Response.Write(Session["subid"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Session["eee"]=Session["eid"].ToString();
            Response.Redirect("Question.aspx");
                
        }

       
        
        
        
        
    }
}