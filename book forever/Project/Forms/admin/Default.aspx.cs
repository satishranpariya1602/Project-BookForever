using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_Admin_Student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void GridIndex_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Check")
        {
            GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            int RowIndex = gvr.RowIndex;

            int Id = Convert.ToInt32(GridIndex.Rows[RowIndex].Cells[0].Text);
            Response.Redirect("~/Forms/admin/bookdetail.aspx?Id=" + Id);

        }
    }

}