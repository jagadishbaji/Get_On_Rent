using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblLog.Visible = false;
    }
    protected void btnlog_Click(object sender, EventArgs e)
    {
        if (txtname.Text != "" && txtpass.Text != "")
        {
            SqlDataReader dr = (Rent.ReadData("Select UserName,Password From Tbl_LogDetails Where UserName='" + txtname.Text + "' and Password='" + txtpass.Text + "'"));
            if (dr.Read())
            {
                Session["UserName"] = dr["UserName"].ToString();
                Response.Redirect("Default.aspx");
                dr.Close();
            }
            else { Response.Write("<script>alert('Invalid UserName And Password');</script>"); }
        }
        else
        {
            Response.Write("<script>alert('UserName And Password Should Not Be Blank');</script>");
        }
    }
}