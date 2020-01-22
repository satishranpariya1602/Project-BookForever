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
            if (txtPassword.Text == "admin" && txtUserName.Text=="admin")
            {
               
                Response.Redirect("~/Forms/admin/user/Default.aspx");
            }
        
       
        else
        {
            Interaction.MsgBox("UserName or Password Wrong");
            

        }

    }
}