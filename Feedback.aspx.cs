using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
       
            int UID = Rent.ScalarFunctions("select max(UserID) from Tbl_UserDetails");
            string UStmt = "Insert into Tbl_UserDetails values(" + UID.ToString() + ",'"+txtname.Text+"', '";
            UStmt += txtmail.Text+"',"+txtmobile.Text+",'"+txtmsg.Text+"')";
            if (Rent.InsertRec(UStmt) == 1)
            {
                Response.Write("<script>alert('Your Message Has Been Sent...!');</script>");
                txtname.Text = "";
                txtmail.Text = "";
                txtmobile.Text = "";
                txtmsg.Text = "";
                Response.Redirect("UserHome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Operation Is Aborted...!');</script>");
                txtname.Text = "";
                txtmail.Text = "";
                txtmobile.Text = "";
                txtmsg.Text = "";
            }
     }
}