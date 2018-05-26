<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserMenu.ascx.cs" Inherits="UserMenu" %>

 <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/theme.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/flexslider.css"/>
    <link href="assets/bxslider/jquery.bxslider.css" rel="stylesheet" />


      <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

 <!--header start-->
    <header class="header-frontend">
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                    <a class="navbar-brand" href="Default.aspx">Get On<span>  Rent</span></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="UserHome.aspx">Home</a></li>
                         <li><a href="SearchRent.aspx">View Rent</a></li>
                          <li><a href="PG.aspx">View PG-Rent</a></li>
                          <li><a href="Feedback.aspx">Feedback</a></li>

                       
                        <li><asp:LinkButton ID="lnkLog" runat="server" PostBackUrl="~/AdminLogin.aspx"><span class="icon-user"></span>    Login</asp:LinkButton></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!--header end-->