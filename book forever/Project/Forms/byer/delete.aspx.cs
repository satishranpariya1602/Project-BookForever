using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_Admin_Entity_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void GridIndex_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    }

    protected void GridIndex_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowIndex = e.RowIndex;
        Response.Redirect("Delete2.aspx?Id=" + GridIndex.Rows[rowIndex].Cells[0].Text);

    }

    protected void GridIndex_RowEditing(object sender, GridViewEditEventArgs e)
    {
    }

    protected void GridIndex_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}