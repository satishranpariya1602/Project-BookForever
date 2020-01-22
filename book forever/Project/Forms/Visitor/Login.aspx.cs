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

public partial class Forms_Visitor_Login : System.Web.UI.Page
{
    DAL dal = DAL.GetInstance;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["id"] = null;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select BId,password from byer where email = @email");
        cmd.Parameters.AddWithValue("@email", txtUserName.Text);
        DataTable dt = dal.getData(cmd);
        if (dt.Rows.Count > 0)
        {

            if (txtPassword.Text == dt.Rows[0]["password"].ToString())
            {
                Session["BId"] = dt.Rows[0]["BId"].ToString();
                int BId = Convert.ToInt32(Session["Bid"]);
                Response.Redirect("~/Forms/byer/byerhome.aspx?BId=" + Session["BId"]);
            }

        }
       
        else
        {
            Interaction.MsgBox("UserName or Password Wrong");

        }

    }
}