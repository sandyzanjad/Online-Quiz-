using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Quiz_Examination
{
    public partial class Viewresult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void gridmyresult_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //GridView1.PageIndex = e.NewPageIndex;
            // getmyresults(uname.Text);
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}