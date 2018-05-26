<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="Header" %>

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
                    <div style="font-size:xx-large;margin-left:366px"><i class="icon-user"><asp:Label ID="lblname" runat="server"></asp:Label></i></div>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="Default.aspx">Home</a></li>
                        <li class="dropdown ">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Rent Type <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="AddRentType.aspx">Add Rent Type</a></li>
                                <li><a href="ViewRentType.aspx">View Rent Type</a></li>
                            </ul>
                        </li>
                         <li class="dropdown ">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Owner <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="AddOwners.aspx">Add Owner</a></li>
                                <li><a href="ViewOwners.aspx">View Owner</a></li>
                            </ul>
                        </li>

                        <li class="dropdown ">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Rent Details <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="AddRent.aspx">Add Rent</a></li>
                                <li><a href="ViewRentDetails.aspx">View Rent</a></li>
                                <li><a href="view-pg.aspx">View PG-Rent</a></li>
                            </ul>
                        </li>
                        <li><a href="ViewFeedback.aspx">View Feedback</a></li>
                        <li><asp:LinkButton ID="lnkLog" runat="server" onclick="lnkLog_Click" Text="Login"><span class="icon-user"></span>    Login</asp:LinkButton></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!--header end-->