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

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        Session["book"] = txtfind.Text;
        if (RadioButtonList1.SelectedItem.Value.ToString() == "sub_categoery")
        {
            Response.Redirect("~/Forms/visitor/searchedbooksub.aspx?book=" + Session["book"] );
        }
        if (RadioButtonList1.SelectedItem.Value.ToString() == "categoery")
        {
            Response.Redirect("~/Forms/visitor/searchedbookcat.aspx?book=" + Session["book"]);
        }
        if (RadioButtonList1.SelectedItem.Value.ToString() == "author")
        {
            Response.Redirect("~/Forms/visitor/searchedbookaut.aspx?book=" + Session["book"]);
        }
    }
}
