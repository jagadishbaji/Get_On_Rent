using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddRent : System.Web.UI.Page
{
    SqlDataReader DrRntTp,DrOnr;
    protected void Page_Load(object sender, EventArgs e)
    {
   Panel1.Visible = false;
        if (!Page.IsPostBack)
        {
            dd_renttype.Items.Add("Select Rent Type");
            DrRntTp = Rent.ReadData("Select RentTypeID,RentType from RentTypeDetails");
            if (DrRntTp.HasRows)
            {
                while (DrRntTp.Read())
                {
                    ListItem item = new ListItem();
                    item.Value = DrRntTp["RentTypeID"].ToString();
                    item.Text = DrRntTp["RentType"].ToString();
                    dd_renttype.Items.Add(item);
                }
            }

            dd_owner.Items.Add("Select Owner");
            DrOnr = Rent.ReadData("Select OwnerID,FName + ' ' + MName + ' ' + LName as [OwnerName] from Owner_Details");
            if (DrOnr.HasRows)
            {
                while (DrOnr.Read())
                {
                    ListItem item = new ListItem();
                    item.Value = DrOnr["OwnerID"].ToString();
                    item.Text = DrOnr["OwnerName"].ToString();
                    dd_owner.Items.Add(item);
                }
            }

            if (Page.PreviousPage != null)
            {
                System.Data.SqlClient.SqlDataReader dr = Rent.ReadData("select * from Tbl_RentDetails where RentID=" + ((Label)Page.PreviousPage.FindControl("lbl_Msg")).Text);
                if (dr.Read())
                {
                    hdn_rentID.Value = dr["RentID"].ToString();
                    dd_renttype.Text = dr["RentTypeID"].ToString();
                    dd_owner.Text = dr["OwnerID"].ToString();
                    dd_avail.Text = dr["Availability"].ToString();
                    dd_Furnish.Text = dr["Furnished"].ToString();
                    dd_Bedrooms.Text = dr["BedRooms"].ToString();
                    dd_bath.Text = dr["BathRooms"].ToString();
                    txtsqft.Text = dr["Sqft"].ToString();
                    txtAmt.Text = dr["Amount"].ToString();
                    dd_Nego.Text = dr["Negotiable"].ToString();
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
        if (dd_renttype.Text=="3")
        {
            int RentID = Rent.ScalarFunctions("select max(RentID) from Tbl_RentDetails");
            string str = "Insert into PG values(" + RentID.ToString() + "," + dd_renttype.SelectedValue + "," + dd_owner.SelectedValue + ",'";
           str += photo() + "','" + dd_avail.SelectedItem.Text + "','" + dd_capacity.Text + "','" + dd_bathrooms.Text + "','";
            str += dd_gender.Text + "','" + dd_wifi.Text + "','"+dd_security.Text+"','"+dd_mess.Text+"'," + TextBox1.Text + ","+TextBox2.Text+")";
            if (Rent.InsertRec(str) == 1)
            {
                Response.Write("<script>alert('Rent Details Added Successfully...!');</script>");
            }
            else
            { Response.Write("<script>alert('Operation Is Aborted...!');</script>"); }
        }
        else
        {
            if (btnAdd.Text == "Add")
            {
                int RntID = Rent.ScalarFunctions("select max(RentID) from Tbl_RentDetails");
                string RentStmt = "Insert into Tbl_RentDetails values(" + RntID.ToString() + "," + dd_renttype.SelectedValue + "," + dd_owner.SelectedValue + ",'";
                RentStmt += photo() + "','" + dd_avail.SelectedItem.Text + "','" + dd_Furnish.SelectedItem.Text + "','" + dd_Bedrooms.SelectedItem.Text + "','";
                RentStmt += dd_bath.SelectedItem.Text + "','" + dd_floar.Text + "','" + drop_for.Text + "','" + dd_park.Text + "','" + txtsqft.Text + "'," + txtAmt.Text + ",'" + dd_Nego.SelectedItem.Text + "')";
                if (Rent.InsertRec(RentStmt) == 1)
                {
                    Response.Write("<script>alert('Rent Details Added Successfully...!');</script>");
                    dd_renttype.SelectedIndex = 0;
                    dd_owner.SelectedIndex = 0;
                    dd_avail.SelectedIndex = 0;
                    dd_Furnish.SelectedIndex = 0;
                    dd_Bedrooms.SelectedIndex = 0;
                    dd_bath.SelectedIndex = 0;
                    txtsqft.Text = "";
                    txtAmt.Text = "";
                    dd_Nego.SelectedIndex = 0;
                }
                else
                {
                    Response.Write("<script>alert('Operation Is Aborted...!');</script>");
                    dd_renttype.SelectedIndex = 0;
                    dd_owner.SelectedIndex = 0;
                    dd_avail.SelectedIndex = 0;
                    dd_Furnish.SelectedIndex = 0;
                    dd_Bedrooms.SelectedIndex = 0;
                    dd_bath.SelectedIndex = 0;
                    txtsqft.Text = "";
                    txtAmt.Text = "";
                    dd_Nego.SelectedIndex = 0;
                }
            }
            else
            {
                string StmtMod = "update Tbl_RentDetails set RentTypeID='" + dd_renttype.SelectedValue + "',OwnerID='" + dd_owner.SelectedValue + "',Image='";
                StmtMod += photo() + "',Availability='" + dd_avail.Text + "',Furnished='" + dd_Furnish.Text + "',BedRooms='" + dd_Bedrooms.Text + "',BathRooms='";
                StmtMod += dd_bath.Text + "',floar='"+dd_floar.Text+"',fors='"+drop_for.Text+"',parking='"+dd_park.Text+"',Sqft='" + txtsqft.Text + "',Amount=" + txtAmt.Text + ",Negotiable='" + dd_Nego.Text + "' where RentID=" + hdn_rentID.Value;
                if (Rent.UpdateRec(StmtMod) == 1)
                {
                    dd_renttype.SelectedIndex = 0;
                    dd_owner.SelectedIndex = 0;
                    dd_avail.SelectedIndex = 0;
                    dd_Furnish.SelectedIndex = 0;
                    dd_Bedrooms.SelectedIndex = 0;
                    dd_bath.SelectedIndex = 0;
                    txtsqft.Text = "";
                    txtAmt.Text = "";
                    dd_Nego.SelectedIndex = 0;
                    Response.Redirect("ViewRentDetails.aspx?msg=0");
                }
                else
                {
                    Response.Write("<script>alert('Operation Is Aborted...!');</script>");
                }
            }
        }
        
    }

    public string photo()
    {
        if (file_img.FileName != "")
        {
            file_img.SaveAs(Server.MapPath("").ToString() + "\\Rent_Images\\" + file_img.FileName.ToString());

        }
        return file_img.FileName.ToString();

    }

    protected void dd_renttype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dd_renttype.Text == "3")
        {
            Panel1.Visible = true;
            mainPnl.Visible = false;
        }
        else
        {
            Panel1.Visible = false;
            mainPnl.Visible = true;
        }
    }
}