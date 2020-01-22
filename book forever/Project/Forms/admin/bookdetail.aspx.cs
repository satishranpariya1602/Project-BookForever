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
       
        SqlCommand cmd = new SqlCommand("select * from [admin] where id=" + id);
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

        DAL dal = DAL.GetInstance;
        int id = int.Parse(Request.QueryString["id"]);
        SqlCommand cmd2 = new SqlCommand("select * from [admin] where id=" + id);
        DataTable dt = dal.getData(cmd2);


        SqlCommand cmd = new SqlCommand("Insert into [Books](uploder_id,name_of_uploder,author,categoery,sub_categoery,price,Extra_info,img) values(@uploder_id,@name_of_uploder,@author,@categoery,@sub_categoery,@price,@Extra_info,@img)");
        cmd.Parameters.AddWithValue("@uploder_id", dt.Rows[0]["uploder_id"].ToString());
        cmd.Parameters.AddWithValue("@name_of_uploder", dt.Rows[0]["name_of_uploder"].ToString());
        cmd.Parameters.AddWithValue("@author", dt.Rows[0]["author"].ToString());
        cmd.Parameters.AddWithValue("@categoery", dt.Rows[0]["categoery"].ToString());
        cmd.Parameters.AddWithValue("@sub_categoery", dt.Rows[0]["sub_categoery"].ToString());
        cmd.Parameters.AddWithValue("@price", dt.Rows[0]["price"].ToString());
        cmd.Parameters.AddWithValue("@Extra_info", dt.Rows[0]["Extra_info"].ToString());
        cmd.Parameters.AddWithValue("Img", dt.Rows[0]["img"].ToString());
        if (dal.Execute(cmd))
        {
            Interaction.MsgBox("added Successfully");

        }
        else
        {
            Interaction.MsgBox("Error while Ading");

        }

        SqlCommand cmd3 = new SqlCommand("delete from [admin] where id=@Id");
        cmd3.Parameters.AddWithValue("@Id", id);
        dal.Execute(cmd3);
        Response.Redirect("~/Forms/admin/Default.aspx");


    }

    protected void btnexchange_Click(object sender, EventArgs e)
    {
        
    }

    protected void btndelet_Click(object sender, EventArgs e)
    {

        int id = int.Parse(Request.QueryString["id"]);
        int id2 = id + 1;
        DAL dal = DAL.GetInstance;
        SqlCommand cmd = new SqlCommand("delete from [admin] where id=@Id");
        cmd.Parameters.AddWithValue("@Id", id2);
        if (dal.Execute(cmd))
        {
            Interaction.MsgBox("Deleted Successfully");
        }
        else
        {
            Interaction.MsgBox("Error while deleting");
        }

    }
}