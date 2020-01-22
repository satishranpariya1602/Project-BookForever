using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using System.Data;
using System.Data.SqlClient;
using Microsoft.VisualBasic;

public partial class Forms_Masters_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DAL dal = DAL.GetInstance;
        int id = int.Parse(Session["Bid"].ToString());
        SqlCommand cmd = new SqlCommand("select * from [byer] where Bid=" + id);
        DataTable dt = dal.getData(cmd);
        user1.Text = dt.Rows[0]["name"].ToString();
    }
}
