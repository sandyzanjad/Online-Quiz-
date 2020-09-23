using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace Quiz_Examination
{
    public partial class Subject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e) 
        {
            int c;
            c = Convert.ToInt32(e.CommandArgument.ToString());
            string v = GridView1.Rows[c].Cells[0].Text;
            Session["subid"] = v;
            Response.Redirect("Exam.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        
        } 

       

    }
}
    