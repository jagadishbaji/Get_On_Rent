using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SearchRent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader drtype;
        if (!Page.IsPostBack)
        {
            string StmtView="SELECT  R.RentID, RT.RentType, O.FName + ' ' + O.MName + ' ' + O.LName AS OwnerName,"; 
            StmtView += "R.Availability, R.Image, R.Furnished, R.BedRooms, R.BathRooms,R.floar,R.fors,R.parking, R.Sqft, R.Amount, R.Negotiable,";
            StmtView +=" O.Addrs, O.Mobile, O.Landline, O.City, O.State, O.Email FROM  Owner_Details AS O INNER JOIN";
            StmtView +=" Tbl_RentDetails AS R ON O.OwnerID = R.OwnerID INNER JOIN RentTypeDetails AS RT ON R.RentTypeID = RT.RentTypeID";
            rptr_View.DataSource = Rent.D_set(StmtView, "RentDetails").Tables[0];
            rptr_View.DataBind();

            ddl_Type.Items.Add("Select Rent Type");
            drtype = Rent.ReadData("Select RentTypeID,RentType from RentTypeDetails");
            if (drtype.HasRows)
            {
                while (drtype.Read())
                {
                    ListItem item = new ListItem();
                    item.Value = drtype["RentTypeID"].ToString();
                    item.Text = drtype["RentType"].ToString();
                    ddl_Type.Items.Add(item);
                }
            }
        }
    }

    protected void ddl_Type_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_Type.SelectedIndex > 0)
        {
            string StmtView = "SELECT  R.RentID, RT.RentType, O.FName + ' ' + O.MName + ' ' + O.LName AS OwnerName,";
            StmtView += "R.Availability, R.Image, R.Furnished, R.BedRooms, R.BathRooms,R.floar,R.fors,R.parking, R.Sqft, R.Amount, R.Negotiable,";
            StmtView += " O.Addrs, O.Mobile, O.Landline, O.City, O.State, O.Email FROM  Owner_Details AS O INNER JOIN";
            StmtView += " Tbl_RentDetails AS R ON O.OwnerID = R.OwnerID INNER JOIN RentTypeDetails AS RT ON R.RentTypeID = RT.RentTypeID where RT.RentType='" + ddl_Type.SelectedItem + "'";
            rptr_View.DataSource = Rent.D_set(StmtView, "RentDetails").Tables[0];
            rptr_View.DataBind();
        }
        else
        {
            string StmtView = "SELECT  R.RentID, RT.RentType, O.FName + ' ' + O.MName + ' ' + O.LName AS OwnerName,";
            StmtView += "R.Availability, R.Image, R.Furnished, R.BedRooms, R.BathRooms, R.Sqft, R.Amount, R.Negotiable,";
            StmtView += " O.Addrs, O.Mobile, O.Landline, O.City, O.State, O.Email FROM  Owner_Details AS O INNER JOIN";
            StmtView += " Tbl_RentDetails AS R ON O.OwnerID = R.OwnerID INNER JOIN RentTypeDetails AS RT ON R.RentTypeID = RT.RentTypeID";
            rptr_View.DataSource = Rent.D_set(StmtView, "RentDetails").Tables[0];
            rptr_View.DataBind();
        }
    }
}