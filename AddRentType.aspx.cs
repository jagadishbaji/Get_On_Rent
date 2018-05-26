using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddRentType : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Page.PreviousPage != null)
            {
                System.Data.SqlClient.SqlDataReader dr = Rent.ReadData("select * from RentTypeDetails where RentTypeID=" + ((Label)Page.PreviousPage.FindControl("lbl_Msg")).Text);
                if (dr.Read())
                {
                    hdn_rentID.Value = dr["RentTypeID"].ToString();
                    dd_Rtype.Text = dr["RentType"].ToString();
                    btnAdd.Text = "Update";
                    dr.Close();
                    dr.Dispose();
                }
                else
                {
                    dr.Close();
                    dr.Dispose();
                }
            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (btnAdd.Text == "Add")
        {
            int TypeID = Rent.ScalarFunctions("select max(RentTypeID) from RentTypeDetails");
            string RentStmt="Insert into RentTypeDetails values("+TypeID.ToString()+",'"+dd_Rtype.Text+"')";
            if(Rent.InsertRec(RentStmt)==1)
            {
                Response.Write("<script>alert('Rent Type Added Successfully...!');</script>");
                dd_Rtype.SelectedIndex=0;
            }
            else
            {
                Response.Write("<script>alert('Operation Is Aborted...!');</script>");
                dd_Rtype.SelectedIndex = 0;
            }
        }
        else
        {
            string StmtMod= "update RentTypeDetails set RentType='" + dd_Rtype.Text + "' where RentTypeID=" + hdn_rentID.Value;
            if(Rent.UpdateRec(StmtMod)==1)
            {
                dd_Rtype.SelectedIndex = 0;
                Response.Redirect("ViewRentType.aspx?msg=0");
            }
            else
            {
                Response.Write("<script>alert('Operation Is Aborted...!');</script>");
            }
        }
    }

}