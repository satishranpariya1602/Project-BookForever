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

        Response.Redirect("/Forms/byer/addtocart.aspx");

    }

    protected void btnbuy_Click(object sender, EventArgs e)
    {
        DAL dal = DAL.GetInstance;
        
        int id = int.Parse(Request.QueryString["id"].ToString());
        int BId = int.Parse(Request.QueryString["BId"].ToString());
        SqlCommand cmd = new SqlCommand("select * from [Books] where id=" + id);
        DataTable dt = dal.getData(cmd);
        SqlCommand cmd2 = new SqlCommand("select contact from [byer] where BId=" + BId);
        DataTable dt2 = dal.getData(cmd2);
        string s= dt.Rows[0]["name_of_uploder"].ToString();
        string book = dt.Rows[0]["sub_categoery"].ToString();
        string contact = dt2.Rows[0]["contact"].ToString();
        string msg = "dear " + s + " i shown your" + book + " book,contact me:" + contact;
        Interaction.MsgBox(msg);







        SqlCommand cmdadd = new SqlCommand("Insert into [msg](sender_id,reciver_id,msg) values(@sender_id,@reciver_id,@msg)");
        cmdadd.Parameters.AddWithValue("@sender_id",BId);
        cmdadd.Parameters.AddWithValue("@reciver_id", dt.Rows[0]["uploder_id"]);
        cmdadd.Parameters.AddWithValue("@msg",msg);
        if (dal.Execute(cmdadd))
        {
            Interaction.MsgBox("Created Successfully");
   
        }
        else
        {
            Interaction.MsgBox("Error while creating");
        }





    }
}