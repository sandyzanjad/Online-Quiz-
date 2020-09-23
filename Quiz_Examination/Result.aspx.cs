using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Web.UI.WebControls;

namespace Quiz_Examination
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string u = Session["name"].ToString();
            SqlDataSource1.SelectCommand = "SELECT [resultscore], [name], [resultstatus], [examdate], [totalquestion] FROM [Result] Where name='" + u + "'";
        }

        protected void gridmyresult_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
           //GridView1.PageIndex = e.NewPageIndex;
           // getmyresults(uname.Text);
        }

        protected void gridmyresult_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}