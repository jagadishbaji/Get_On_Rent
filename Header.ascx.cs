using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Header : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
                  if (Session["UserName"]==null)
                  {
                      Response.Redirect("AdminLogin.aspx");
                  }
                  else
                  {
                      //Response.Redirect("UserHome.aspx");
                      lblname.Text =Session["UserName"].ToString();
                      lnkLog.Text = "Logout";
                  }
        }
       
    }
    protected void lnkLog_Click(object sender, EventArgs e)
    {
        if (lnkLog.Text == "Login")
        {
            Response.Redirect("AdminLogin.aspx");
        }
        else
        {
            Response.Redirect("UserHome.aspx");
        }
    }
}