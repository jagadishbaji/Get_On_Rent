using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            rptr_RentType.DataSource = Rent.D_set("select * from Tbl_UserDetails", "UserDetails").Tables[0];
            rptr_RentType.DataBind();
        } 
    }

    protected void lnk_Delete(object sender, EventArgs e)
    {
        int result = Rent.DeltRec("delete from Tbl_UserDetails where UserID=" + ((LinkButton)(sender)).CommandArgument);
        if (result == 1)
        {
            Response.Write("<script>alert('Feedback Deleted Successfully...!');</script>");
            rptr_RentType.DataSource = Rent.D_set("select * from Tbl_UserDetails", "UserDetails").Tables[0];
            rptr_RentType.DataBind();
        }
    }
}