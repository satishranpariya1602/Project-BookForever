using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;
using Microsoft.VisualBasic;
public partial class Forms_Admin_Entity_Edit : System.Web.UI.Page
{
    DAL dal = DAL.GetInstance;
    int Id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Id = int.Parse(Request.QueryString["Id"].ToString());
            SqlCommand cmd = new SqlCommand("select * from [byer] where Bid=" + Id);
            DataTable dt = dal.getData(cmd);



            txtName.Text = dt.Rows[0]["name"].ToString();
            txtAddress.Text = dt.Rows[0]["address"].ToString();
            txtContact.Text = dt.Rows[0]["contact"].ToString();
            txtEmail.Text = dt.Rows[0]["email"].ToString();
            txtpass.Text = dt.Rows[0]["password"].ToString();
        
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Id = int.Parse(Request.QueryString["Id"].ToString());
        SqlCommand cmd = new SqlCommand("update [byer] set name=@name,address=@address,contact=@contact,email=@email,password=@password where Bid=" + Id);
        cmd.Parameters.AddWithValue("@name", txtName.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@contact", txtContact.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@password", txtpass.Text);
        

        if (dal.Execute(cmd)) {
            Interaction.MsgBox("Updated successfully");
            Response.Redirect("/Forms/Admin/user/Default.aspx");
        }
            

        else
            Interaction.MsgBox("Error while updating");
    }
}