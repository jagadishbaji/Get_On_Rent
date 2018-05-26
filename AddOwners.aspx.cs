using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddOwners : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Page.PreviousPage != null)
            {
                System.Data.SqlClient.SqlDataReader dr = Rent.ReadData("select * from Owner_Details where OwnerID=" + ((Label)Page.PreviousPage.FindControl("lbl_Msg")).Text);
                if (dr.Read())
                {
                    hdn_ownrID.Value = dr["OwnerID"].ToString();
                    txtfname.Text = dr["FName"].ToString();
                    txtmname.Text = dr["MName"].ToString();
                    txtlname .Text = dr["LName"].ToString();
                    txtaddrs.Text = dr["Addrs"].ToString();
                    txtmobile.Text = dr["Mobile"].ToString();
                    txtlndline.Text = dr["Landline"].ToString();
                    txtcity.Text = dr["City"].ToString();
                    txtstate.Text = dr["State"].ToString();
                    txtmail.Text = dr["Email"].ToString();
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
            int OnrID = Rent.ScalarFunctions("select max(OwnerID) from Owner_Details");
            string OwnStmt = "Insert into Owner_Details values(" + OnrID.ToString() + ",'"+txtfname.Text+"', '";
            OwnStmt += txtmname.Text+"','"+txtlname.Text+"','"+txtaddrs.Text+"',"+txtmobile.Text+", ";
            OwnStmt += txtlndline.Text+",'"+txtcity.Text+"','"+txtstate.Text+"','"+txtmail.Text+"')";
            if (Rent.InsertRec(OwnStmt) == 1)
            {
                Response.Write("<script>alert('Owner Added Successfully...!');</script>");
                txtfname.Text = "";
                txtmname.Text = "";
                txtlname.Text = "";
                txtaddrs.Text = "";
                txtmobile.Text = "";
                txtlndline.Text = "";
                txtcity.Text = "";
                txtstate.Text = "";
                txtmail.Text = "";
           
            }
            else
            {
                Response.Write("<script>alert('Operation Is Aborted...!');</script>");
                txtfname.Text = "";
                txtmname.Text = "";
                txtlname.Text = "";
                txtaddrs.Text = "";
                txtmobile.Text = "";
                txtlndline.Text = "";
                txtcity.Text = "";
                txtstate.Text = "";
                txtmail.Text = "";
            }
        }
        else
        {
            string StmtMod= "update Owner_Details set FName='" + txtfname.Text + "',MName='"+txtmname.Text+"', LName='";
            StmtMod += txtlname.Text + "',Addrs='"+txtaddrs.Text+"',Mobile="+txtmobile.Text+",Landline=";
            StmtMod += txtlndline.Text  +",City='"+txtcity.Text+"',State='"+txtstate.Text+"',Email='"+txtmail.Text+"' where OwnerID=" + hdn_ownrID.Value;
            if(Rent.UpdateRec(StmtMod)==1)
            {
                txtfname.Text = "";
                txtmname.Text = "";
                txtlname.Text = "";
                txtaddrs.Text = "";
                txtmobile.Text = "";
                txtlndline.Text = "";
                txtcity.Text = "";
                txtstate.Text = "";
                txtmail.Text = "";
                Response.Redirect("ViewOwners.aspx?msg=0");
            }
            else
            {
                Response.Write("<script>alert('Operation Is Aborted...!');</script>");
            }
        }
    }

}