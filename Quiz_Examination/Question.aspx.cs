using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.UI.WebControls;

namespace Quiz_Examination
{
    public partial class Question : System.Web.UI.Page
    {
        RadioButton r1, r2, r3, r4;
        string eid;
        string result = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            eid = (Session["eid"].ToString());
            SqlDataSource1.SelectCommand = "SELECT q.[qid], q.[qname], q.[option1], q.[option2], q.[option3], q.[option4] FROM [Question] q, [Exam] e WHERE e.examid=q.examfid AND e.examid=" + eid;
            questionistmethod(Convert.ToInt32(eid));
        }

        string s = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Quiz;Integrated Security=True";
        private void questionistmethod(int id)
        {
            SqlConnection cnn = new SqlConnection(s);
            SqlCommand cmd = new SqlCommand("select * from Question,Exam where Exam.examid=Question.examfid and examfid=@examid", cnn);
            cmd.Parameters.AddWithValue("@examid", id);
            cnn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            /*  if (rd.HasRows)
              {
                  gridview_examquestion.DataSource = rd;
                  //gridview_examquestion.DataBind();
              }*/
        }

        //decalring some varibles to exam marking 


        int select_number = 0;
        int correct_number = 0;
        int wrong_number = 0;
        int count = 0;


        protected void btn_submit_Click(object sender, EventArgs e)
        {
            // try
            {
                foreach (GridViewRow row in gridview_examquestion.Rows)
                {
                    r1 = new RadioButton();
                    r2 = new RadioButton();
                    r3 = new RadioButton();
                    r4 = new RadioButton();
                    Label li = row.FindControl("lblid") as Label;
                    r1 = row.FindControl("option_one") as RadioButton;
                    r2 = row.FindControl("option_two") as RadioButton;
                    r3 = row.FindControl("option_three") as RadioButton;
                    r4 = row.FindControl("option_four") as RadioButton;

                    if (r1.Checked == true)
                    {
                        select_number = 1;
                    }
                    else if (r2.Checked == true)
                    {
                        select_number = 2;
                    }
                    else if (r3.Checked == true)
                    {
                        select_number = 3;
                    }
                    else if (r4.Checked == true)
                    {
                        select_number = 4;
                    }

                    checkanswer(li.Text);
                    panel_questshow_warning.Visible = false;
                }
                saveinresult(passfail(), correct_number, gridview_examquestion.Rows.Count);
            }


        }


        //method for checking answer wheter it is right or wrong 
        public void checkanswer(string qid)
        {
            SqlConnection con = new SqlConnection(s);

            SqlCommand cmd = new SqlCommand("select correctanswer from Question where qid = " + qid, con);
            //  cmd.Connection = con;

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (select_number == Convert.ToInt32(rd["correctanswer"]))
                {

                    correct_number = correct_number + 1;
                    break;
                }
                else
                {
                    wrong_number = wrong_number + 1;
                    break;
                }
            }
            count++;
            rd.Dispose();
            cmd.Dispose();
        }





        //method for cheking if examinee pass or fail from the exam pass mark in database
        public string passfail()
        {

            SqlConnection con = new SqlConnection(s);

            SqlCommand cmd = new SqlCommand("Select exampassmarks from Exam where examid =" + eid, con);
            //cmd.Parameters.AddWithValue("@examid", eid);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (correct_number >= Convert.ToInt32(rd["exampassmarks"]))
                {

                    result = result + "Pass";
                    break;
                }
                else
                {
                    result = result + "Fail";
                    break;
                }
            }
            rd.Dispose();
            cmd.Dispose();
            return result;
        }


        // method for  saving the result info in databse
        public void saveinresult(string status, int score, int tquestion)
        {

            SqlConnection con = new SqlConnection(s);
            string uname = Session["uname"].ToString();
            string name = "";
            SqlCommand cm = new SqlCommand("SELECT name from Registration WHERE uname='" + uname + "'", con);
            con.Open();
            SqlDataReader sdr = cm.ExecuteReader();
            while (sdr.Read())
            {
                name = sdr["name"].ToString();
            }
            Session["name"] = name;
            sdr.Dispose();
            cm.Dispose();
            con.Close();

            SqlCommand cmd = new SqlCommand("insert into Result (resultstatus,resultscore,name,totalquestion,examdate,examid) values(@resultstatus,@resultscore,@name,@totalquestion,@examdate,@examid)", con);
            con.Open();
         //   cmd.Parameters.AddWithValue("@resultid", rid);
            cmd.Parameters.AddWithValue("@examid", eid);
            cmd.Parameters.AddWithValue("@resultstatus", status);
            cmd.Parameters.AddWithValue("@resultscore", score);
            cmd.Parameters.AddWithValue("@totalquestion", tquestion);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@examdate", DateTime.Now.ToString());

            cmd.ExecuteNonQuery();

            Response.Redirect("Result.aspx");
        }

        protected void gridview_examquestion_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}