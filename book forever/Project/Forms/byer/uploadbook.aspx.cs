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
        string str = FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/" + str));
        string Image = "~/Images/" + str.ToString();


        DAL dal = DAL.GetInstance;
        int id = int.Parse(Session["Bid"].ToString());
        SqlCommand cmd2 = new SqlCommand("select * from [byer] where Bid=" + id);
        DataTable dt = dal.getData(cmd2);
    String STR1 = dt.Rows[0]["name"].ToString();





        SqlCommand cmd = new SqlCommand("Insert into [admin](uploder_id,name_of_uploder,author,categoery,sub_categoery,price,Extra_info,img) values(@uploder_id,@name_of_uploder,@author,@categoery,@sub_categoery,@price,@Extra_info,@img)");
        cmd.Parameters.AddWithValue("@name_of_uploder",STR1);
        cmd.Parameters.AddWithValue("@uploder_id", Session["Bid"].ToString());
        cmd.Parameters.AddWithValue("@author", txtName.Text);
        cmd.Parameters.AddWithValue("@categoery", txtcategoery.Text);
        cmd.Parameters.AddWithValue("@sub_categoery", txtsubcategoery.Text);
        cmd.Parameters.AddWithValue("@price", txtprice.Text);
        cmd.Parameters.AddWithValue("@Extra_info", txtinformation.Text);
        cmd.Parameters.AddWithValue("Img", Image);
        if (dal.Execute(cmd))
        {
            Interaction.MsgBox("Uploaded Successfully");
            Response.Redirect("/Forms/byer/byerhome.aspx");
        }
        else
        {
            Interaction.MsgBox("Error while Uploading");
        }
    }
}