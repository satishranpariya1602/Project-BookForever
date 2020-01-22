using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using Microsoft.VisualBasic;
using System.Data.SqlClient;
using System.Data;

public partial class Forms_Visitor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DAL dal = DAL.GetInstance;
        int id = int.Parse(Request.QueryString["id"]);
        SqlCommand cmd = new SqlCommand("select * from [Books] where id=" + id);
        DataTable dt = dal.getData(cmd);
        Img.ImageUrl = dt.Rows[0]["img"].ToString();
        lbltitle2.Text = dt.Rows[0]["sub_categoery"].ToString();
        lblauthor2.Text = dt.Rows[0]["author"].ToString();
        lblcat2.Text = dt.Rows[0]["categoery"].ToString();
        lblprice2.Text = dt.Rows[0]["price"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {


    }

    protected void btnbuy_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"]);

        DAL dal = DAL.GetInstance;
        SqlCommand cmd = new SqlCommand("delete from [Books] where id=@Id");
        cmd.Parameters.AddWithValue("@Id",id);
        if (dal.Execute(cmd))
        {
            Interaction.MsgBox("Deleted Successfully");
              }
        else
        {
            Interaction.MsgBox("Error while deleting");
        }

        Response.Redirect("~/Forms/byer/Delete.aspx");

    }
}