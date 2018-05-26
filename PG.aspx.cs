using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class PG : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pg = "Paying Guest";
        SqlDataReader drtype;
        if (!Page.IsPostBack)
        {
            string StmtView = "SELECT  R.RentID, RT.RentType, O.FName + ' ' + O.MName + ' ' + O.LName AS OwnerName,";
            StmtView += "R.Availability, R.Image, R.Capasity, R.bathroom, R.gender,R.wifi,R.security,R.mess, R.Sqft, R.Amount,";
            StmtView += " O.Addrs, O.Mobile, O.Landline, O.City, O.State, O.Email FROM  Owner_Details AS O INNER JOIN";
            StmtView += " PG AS R ON O.OwnerID = R.OwnerID INNER JOIN RentTypeDetails AS RT ON R.RentTypeID = RT.RentTypeID where RT.RentType='" + ddl_Type.Text + "' and R.gender='" + dd_for.Text + "' ";
            rptr_View.DataSource = Rent.D_set(StmtView, "RentDetails").Tables[0];
            rptr_View.DataBind();

           
        }
    }
    protected void dd_for_SelectedIndexChanged(object sender, EventArgs e)
    {
        string StmtView = "SELECT  R.RentID, RT.RentType, O.FName + ' ' + O.MName + ' ' + O.LName AS OwnerName,";
        StmtView += "R.Availability, R.Image, R.Capasity, R.bathroom, R.gender,R.wifi,R.security,R.mess, R.Sqft, R.Amount,";
        StmtView += " O.Addrs, O.Mobile, O.Landline, O.City, O.State, O.Email FROM  Owner_Details AS O INNER JOIN";
        StmtView += " PG AS R ON O.OwnerID = R.OwnerID INNER JOIN RentTypeDetails AS RT ON R.RentTypeID = RT.RentTypeID where RT.RentType='" + ddl_Type.Text + "' and R.gender='"+dd_for.Text+"'";
        rptr_View.DataSource = Rent.D_set(StmtView, "RentDetails").Tables[0];
        rptr_View.DataBind();

    }
}