using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic;
using System.Data;
using System.Data.SqlClient;
using DataAccessLayer;

public partial class Forms_Admin_Entity_Create : System.Web.UI.Page
{
    DAL dal = DAL.GetInstance;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into [byer](name,address,contact,email,password) values(@name,@address,@contact,@email,@password)");
        cmd.Parameters.AddWithValue("@name", txtName.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@contact", txtContact.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);
       
        if (dal.Execute(cmd))
        {
            Interaction.MsgBox("Registered Successfully");
            Response.Redirect("/Forms/Visitor/Login.aspx");
        }
        else
        {
            Interaction.MsgBox("Error while Registering");
        }
    }
}