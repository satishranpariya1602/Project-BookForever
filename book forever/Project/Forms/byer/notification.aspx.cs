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



    protected void GridIndex_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Check")
        {
            GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            int rowIndex = gvr.RowIndex;

            
           
            SqlCommand cmd = new SqlCommand("delete from [msg] where id=@id");
            cmd.Parameters.AddWithValue("@id", GridIndex.Rows[rowIndex].Cells[0].Text);


        }

    }

    protected void GridIndex_RowDeleting(object sender, GridViewDeleteEventArgs e)
    { 
        

    }

    protected void GridIndex_RowEditing(object sender, GridViewEditEventArgs e)
    {
    }

    protected void GridIndex_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

}