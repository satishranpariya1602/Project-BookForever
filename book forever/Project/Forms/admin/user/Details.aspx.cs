using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.VisualBasic;
using DataAccessLayer;

public partial class Forms_Admin_Entity_Details : System.Web.UI.Page
{
    DAL dal = DAL.GetInstance;
    protected void Page_Load(object sender, EventArgs e)
    {
        int Id = int.Parse(Request.QueryString["Id"].ToString());
        SqlCommand cmd = new SqlCommand("select * from [byer] where Bid=" + Id);
        DataTable dt = dal.getData(cmd);



        txtName.Text = dt.Rows[0]["name"].ToString();
        txtAddress.Text = dt.Rows[0]["address"].ToString();
        txtContact.Text = dt.Rows[0]["contact"].ToString();
        txtEmail.Text = dt.Rows[0]["email"].ToString();
        txtpass.Text = dt.Rows[0]["password"].ToString();
   
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Edit.aspx?Id=" + Request.QueryString["Id"]);
    }
}