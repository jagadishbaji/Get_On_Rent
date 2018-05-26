<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchRent.aspx.cs" Inherits="SearchRent" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<%@ Register src="Footer.ascx" tagname="Footer" tagprefix="uc2" %>

<%@ Register src="UserMenu.ascx" tagname="UserMenu" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link href="http://fonts.googleapis.com/css?family=Overlock:400,700" rel="stylesheet" type="text/css">
	<link href="font-awesome-4.0.3/css/font-awesome.min.css" type="text/css" rel="stylesheet">
	<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

	  <style type="text/css">
body{
/*font-family: 'Overlock', cursive !important;
background-image: -ms-linear-gradient(bottom, #0FE0E0 0%, #EDEFED 100%);
background-image: -moz-linear-gradient(bottom, #0FE0E0 0%, #EDEFED 100%);
background-image: -o-linear-gradient(bottom, #0FE0E0 0%, #EDEFED 100%);
background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #0FE0E0), color-stop(1, #EDEFED));
background-image: -webkit-linear-gradient(bottom, #0FE0E0 0%, #EDEFED 100%);
background-image: linear-gradient(to top, #0FE0E0 0%, #EDEFED 100%);*/
}
#container {padding:20px;}
#container ul { list-style: none;padding:0px;}
#container .buttons { margin-bottom: 20px; }

/* LIST VIEW */
#container .list{
width: 800px;
margin-right: 15%;
margin-left: 15%;
}
#container .list li {
background: #F7F7F7;
border-bottom: 1px dotted #CCC;
margin-bottom: 50px;
padding-right: 20px;
height: 250px;
}
#container .list li img{
float: left;
margin-right: 10px;
padding-bottom: 0;
border-bottom: 2px solid transparent;
}
#container ul.list li.alt{ background:gray; }
#container .list li p{
overflow:hidden;
word-wrap:break-word;
width:250px;
}
#container .list li .title{
overflow:hidden;
word-wrap:break-word;
font-size:24px;
}
#container .list li .list-left{
/*width:300px;*/
position:absolute;
padding-left:260px;
}
#container .list li .list-right{
width:150px;
float:right;
}
#container .list li .price{
float:right;
font-size:20px;
display: block; 
margin-right: 10px; 
text-align: right;
width:100%;
color:#4FAFC2;
}
#container .list li .detail{
float:right;
display:block;
}

/* GRID VIEW 
#container .grid li { float: left; width: 265px; height: 440px; border-right: 1px dotted #CCC; border-bottom: 1px dotted #CCC;margin:20px; background:#F7F7F7; }
#container .grid li img{text-align:center;width:100%;}
#container .grid li p{display:none;}
#container .grid li .list-left{text-align:left;font-size:24px;margin-left: 10px;margin-top:10px;}
#container .grid li .icon-group-btn{font-size:14px;}
#container .grid li .list-right{display:block;width:100px;margin-left: 10px;}
#container .grid li .list-right .price{font-size:24px;display:block;color:#4FAFC2;}
#container .grid{
width: 950px;
margin-left: 10%;
}*/

/* SWITCH CONTROLS 
.view-controls-list{
width: 800px;
text-align: right;
margin-right: 15%;
margin-left: 15%;

}
.view-controls-grid{
width: 1000px;
text-align: right;
}
#viewcontrols a{
padding:10px;
color:black;
cursor:pointer;
}
#viewcontrols a:hover{
color:palevioletred;
}
#viewcontrols .active{
color:palevioletred;
}*/

/* CART WISHLIST ICON BUTTONS*/
.icon-group-btn a{
	margin: 10px 0; 
	float: left; width: 40px; margin-right: 5px;	
	text-decoration: none;
	transition:all 0.4s ease-in-out 0s;
	-webkit-transition: all 0.4s ease-in-out 0s;
	-moz-transition: all 0.4s ease-in-out 0s;
	-o-transition: all 0.4s ease-in-out 0s;
	-ms-transition: all 0.4s ease-in-out 0s;
}
.icon-group-btn a.btn-compare{ margin-right: 0;}
.icon-group-btn a span{ float: left; line-height: 32px; text-decoration: none;}
.icon-group-btn .icon-cart,.icon-group-btn .icon-wishlist,.icon-group-btn .icon-compare{ 
	width: 40px; 
	height: 32px;
	
}
.icon-group-btn .icon-cart{
	background: url('icon-a-w-c.png') #777777 no-repeat  8px 8px;
}
.icon-group-btn .icon-wishlist{
	background: url('icon-a-w-c.png') #777777 no-repeat 8px -66px;
}

.icon-group-btn .icon-compare{
	background: url(icon-a-w-c.png) #777777 no-repeat 7px center;
}
.icon-group-btn .icon-cart-text{
	text-indent: -40px; width: 0; height: 32px;
	font-size:100%; overflow: hidden;
	color: #fff; background:#4FAFC2;
	transition:all 0.4s ease-in-out 0s;
	-o-transition:all 0.4s ease-in-out 0s;
	-webkit-transition: all 0.4s ease-in-out 0s;
	-moz-transition: all 0.4s ease-in-out 0s;
	-ms-transition: all 0.4s ease-in-out 0s;
}
.icon-group-btn .icon-wishlist-text{
	text-indent: -40px; width: 0; height: 32px;
	color: #fff; font-size:100%;
	overflow: hidden; background:#4FAFC2;
	transition:all 0.4s ease-in-out 0s;
	-o-transition:all 0.4s ease-in-out 0s;
	-webkit-transition: all 0.4s ease-in-out 0s;
	-moz-transition: all 0.4s ease-in-out 0s;
	-ms-transition: all 0.4s ease-in-out 0s;
}
.icon-group-btn .compare-text{
	text-indent: -40px; width: 0; height: 32px;
	color: #fff; background:#4FAFC2; font-size:100%;
	overflow: hidden;
	transition:all 0.4s ease-in-out 0s;
	-webkit-transition: all 0.4s ease-in-out 0s;
	-moz-transition: all 0.4s ease-in-out 0s;
	-o-transition: all 0.4s ease-in-out 0s;
	-ms-transition: all 0.4s ease-in-out 0s;
}
.icon-group-btn a:hover .icon-cart{
	background: url(icon-a-w-c.png) #4FAFC2 no-repeat  8px 8px;
}
.icon-group-btn a:hover .icon-cart-text{	
	width: 90px;		
	text-indent: 0;
}
.icon-group-btn a:hover{ width: 130px;}
.icon-group-btn a.btn-wishlist:hover{ width: 151px;}
.icon-group-btn a.btn-compare:hover{ width: 160px; }
.icon-group-btn a:hover .icon-wishlist-text{	
	width: 111px;		
	text-indent: 0;
}
.icon-group-btn a:hover .compare-text{	
	width: 120px;		
	text-indent: 0;
}
.icon-group-btn a:hover .icon-wishlist{
	background: url(icon-a-w-c.png) #4FAFC2 no-repeat 8px -66px;
}
.icon-group-btn a:hover .icon-compare{
	background: url(icon-a-w-c.png) #4FAFC2 no-repeat 7px center;
}

/* MISCELLANEOUS */
.button {
background-color: white;
background-image: -webkit-linear-gradient(top, white, white);
background-image: -moz-linear-gradient(top,white,white);
border:#4FAFC2 solid 2px;
display: inline-block;
font-size: 18px;
font-family: 'Meiryo UI';
color: #4FAFC2;
text-decoration: none !important;
padding: 5px 20px;
line-height: inherit;
overflow: hidden;
position: relative;
border-radius: 2px;
margin-top: 13px;
margin-bottom: 10px;
}
.button:hover {
	opacity: 0.9;
	background:#4FAFC2;
	color:white;
}	

.button.red{
background-color:palevioletred;
background-image: -webkit-linear-gradient(top, palevioletred, palevioletred);
background-image: -moz-linear-gradient(top,palevioletred,palevioletred);
color:white;
box-shadow:0 0 5px palevioletred inset, 0 1px 1px palevioletred;
border:0px;
}
.button.red:hover{
	opacity: 0.9;
}
</style>
	  <script type="text/javascript">
		  $(document).ready(function () {
			  var elem = $('#container ul');
			  $('#viewcontrols a').on('click', function (e) {
				  if ($(this).hasClass('gridview')) {
					  elem.fadeOut(1000, function () {
						  $('#container ul').removeClass('list').addClass('grid');
						  $('#viewcontrols').removeClass('view-controls-list').addClass('view-controls-grid');
						  $('#viewcontrols .gridview').addClass('active');
						  $('#viewcontrols .listview').removeClass('active');
						  elem.fadeIn(1000);
					  });
				  }
				  else if ($(this).hasClass('listview')) {
					  elem.fadeOut(1000, function () {
						  $('#container ul').removeClass('grid').addClass('list');
						  $('#viewcontrols').removeClass('view-controls-grid').addClass('view-controls-list');
						  $('#viewcontrols .gridview').removeClass('active');
						  $('#viewcontrols .listview').addClass('active');
						  elem.fadeIn(1000);
					  });
				  }
			  });
		  });
</script>
</head>
<body>
	<form id="form1" runat="server">
	  <asp:ScriptManager ID="ScriptManager1" runat="server">
	</asp:ScriptManager>
	<div>

		<uc3:UserMenu ID="UserMenu1" runat="server" />

	</div>
	 <section class="panel" style="margin:5%;">
	   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
	<ContentTemplate>
	  <div class="panel-body">
	<div style="width:90%;margin-left:5%;margin-right:5%;">
		<div id="container">
		<section class="panel">
		<div class="panel-body">
		 <div class="pro-sort" style="width:28%">
								  <asp:DropDownList ID="ddl_Type" 
									  runat="server" CssClass="form-control" AutoPostBack="True" onselectedindexchanged="ddl_Type_SelectedIndexChanged" 
									 >
								  </asp:DropDownList>
								  </div>
		</div>
		</section>
	   
		<%--<div class="view-controls-list" id="viewcontrols">
			<a class="gridview"><i class="fa fa-th fa-2x"></i></a>
			<a class="listview active"><i class="fa fa-list fa-2x"></i></a>
		</div>--%>
	<ul class="list">
	<asp:Repeater ID="rptr_View" runat="server">
	   <ItemTemplate>
		<li>
		<img src="Rent_Images/<%#DataBinder.Eval(Container, "DataItem.Image") %>" alt="" width="250px" height="250px">
		<section class="list-left">
		<span class="title">Type : <%#DataBinder.Eval(Container.DataItem,"RentType") %></span>
		<p>Owner Name : <%#DataBinder.Eval(Container.DataItem,"OwnerName") %></p>
		<p style="margin-left:82%;margin-top:-13%">Address :<%#DataBinder.Eval(Container.DataItem,"Addrs") %></p>
		<p>Mobile :<%#DataBinder.Eval(Container.DataItem,"Mobile") %></p>
		<p style="margin-left:82%;margin-top:-13%">Negotiable :<%#DataBinder.Eval(Container.DataItem,"Negotiable") %></p>

		<p>City :<%#DataBinder.Eval(Container.DataItem,"City") %></p>
		<p style="margin-left:82%;margin-top:-13%">State :<%#DataBinder.Eval(Container.DataItem,"State") %></p>
		<p>Email :<%#DataBinder.Eval(Container.DataItem,"Email") %></p>
		<p style="margin-left:82%;margin-top:-13%">Availability :<%#DataBinder.Eval(Container.DataItem,"Availability") %></p>
		<p>Furnishing :<%#DataBinder.Eval(Container.DataItem,"Furnished") %></p>
		<p style="margin-left:82%;margin-top:-13%">Bed Rooms :<%#DataBinder.Eval(Container.DataItem,"BedRooms") %></p>
		<p>Bath Rooms:<%#DataBinder.Eval(Container.DataItem,"BathRooms") %></p>
		<p style="margin-left:82%;margin-top:-13%">Sqft :<%#DataBinder.Eval(Container.DataItem,"Sqft") %></p>
            <p >Floar :<%#DataBinder.Eval(Container.DataItem,"floar") %></p>
            <p style="margin-left:82%;margin-top:-13%">For :<%#DataBinder.Eval(Container.DataItem,"fors") %></p>
            <p style="margin-left:125%;margin-top:-13%" >Parking  :<%#DataBinder.Eval(Container.DataItem,"parking") %></p>
	
			<%--<div class="icon-group-btn" style="margin-top:-6%;margin-left:82%">											
			<a title="Add to Rent" href="GetRent.aspx?RentID=<%#DataBinder.Eval(Container,"DataItem.RentID") %>" class="btn-cart" onclick="">	
				<span class="icon-cart"></span>
				<span class="icon-cart-text">
					Add To Rent						
				</span>
			</a>
			</div>		--%>
		</section>
		<section class="list-right">
		<span class="price">Amount :<%#DataBinder.Eval(Container.DataItem,"Amount") %></span><%--<span class="detail"><a class="button">Details</a></span>--%></section>
		</li>
	   </ItemTemplate>
	</asp:Repeater>
 
	</ul>
</div>
	</div>
	</section>
	</div>
	</ContentTemplate>
	</asp:UpdatePanel>
	<div>
		<uc2:Footer ID="Footer1" runat="server" />
	</div>
	</form>
</body>
</html>
