using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view_pg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            rptr_Rent.DataSource = Rent.D_set("SELECT R.RentID, RT.RentType, O.FName + ' ' + O.MName + ' ' + O.LName AS OwnerName, R.Availability, R.capasity, R.bathroom, R.gender,R.wifi,R.security, R.mess, R.Amount FROM  Owner_Details AS O INNER JOIN PG AS R ON O.OwnerID = R.OwnerID INNER JOIN RentTypeDetails AS RT ON R.RentTypeID = RT.RentTypeID", "RentDetails").Tables[0];
            rptr_Rent.DataBind();
            if (Request.QueryString["msg"] != null)
            {
                if (Request.QueryString["msg"].ToString() == "0")
                {
                    Response.Write("<script>alert('Rent Details updated Successfully...!');</script>");
                }
            }
        }
    }
   
    protected void lnk_Delete(object sender, EventArgs e)
    {
        int result = Rent.DeltRec("delete from Tbl_RentDetails where RentID=" + ((LinkButton)(sender)).CommandArgument);
        if (result == 1)
        {
            Response.Write("<script>alert('Rent Deleted Successfully...!');</script>");
            rptr_Rent.DataSource = Rent.D_set("SELECT R.RentID, RT.RentType, O.FName + ' ' + O.MName + ' ' + O.LName AS OwnerName, R.Availability, R.Furnished, R.BedRooms, R.BathRooms, R.Sqft, R.Amount, R.Negotiable FROM  Owner_Details AS O INNER JOIN Tbl_RentDetails AS R ON O.OwnerID = R.OwnerID INNER JOIN RentTypeDetails AS RT ON R.RentTypeID = RT.RentTypeID", "RentDetails").Tables[0];
            rptr_Rent.DataBind();
        }
    }
}