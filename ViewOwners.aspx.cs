using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewOwners : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            rptr_Owner.DataSource = Rent.D_set("SELECT OwnerID, FName + ' ' + MName + ' ' + LName AS [Owner Name], Addrs, Mobile, Landline, City, State,Email FROM Owner_Details", "OwnerDetails").Tables[0];
            rptr_Owner.DataBind();
            if (Request.QueryString["msg"] != null)
            {
                if (Request.QueryString["msg"].ToString() == "0")
                {
                    Response.Write("<script>alert('Owner Details updated Successfully...!');</script>");
                }
            }
        }
    }

    protected void lnk_Edit(object sender, EventArgs e)
    {
        lbl_msg.Text = ((LinkButton)(sender)).CommandArgument;
        Server.Transfer("AddOwners.aspx", false);
    }

    protected void lnk_Delete(object sender, EventArgs e)
    {
        int result = Rent.DeltRec("delete from Owner_Details where OwnerID=" + ((LinkButton)(sender)).CommandArgument);
        if (result == 1)
        {
            Response.Write("<script>alert('Owner Deleted Successfully...!');</script>");
            rptr_Owner.DataSource = Rent.D_set("SELECT OwnerID, FName + ' ' + MName + ' ' + LName AS [Owner Name], Addrs, Mobile, Landline, City, State,Email FROM Owner_Details", "RentTypeDetails").Tables[0];
            rptr_Owner.DataBind();
        }
    }
}