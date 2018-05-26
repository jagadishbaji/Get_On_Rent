using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewRentType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            rptr_RentType.DataSource = Rent.D_set("select * from RentTypeDetails", "RentDetails").Tables[0];
            rptr_RentType.DataBind();
            if (Request.QueryString["msg"] != null)
            {
                if (Request.QueryString["msg"].ToString() == "0")
                {
                    Response.Write("<script>alert('Rent Type updated Successfully...!');</script>");
                }
            }
        }
    }

    protected void lnk_Edit(object sender, EventArgs e)
    {
        lbl_msg.Text = ((LinkButton)(sender)).CommandArgument;
        Server.Transfer("AddRentType.aspx", false);
    }

    protected void lnk_Delete(object sender, EventArgs e)
    {
        int result = Rent.DeltRec("delete from RentTypeDetails where RentTypeID=" + ((LinkButton)(sender)).CommandArgument);
        if (result == 1)
        {
            //Response.Write("Record Deleted Who's Year ID is : " + ((LinkButton)(sender)).CommandArgument);
            Response.Write("<script>alert('RentType Deleted Successfully...!');</script>");
            rptr_RentType.DataSource = Rent.D_set("select * from RentTypeDetails", "RentTypeDetails").Tables[0];
            rptr_RentType.DataBind();
        }
    }
}