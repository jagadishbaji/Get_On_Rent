<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/flat-ui.css" rel="stylesheet" type="text/css" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login" style="margin:15%; margin-top:1%">
        <div class="login-screen">
          <div class="login-icon">
            <img src="login/icon.png" alt="Welcome to Mail App">
            <h4>Welcome to <small>Get On Rent</small></h4>
          </div>

          <div class="login-form">
            <div class="form-group">
              <asp:TextBox id="txtname" runat="server" class="form-control login-field"  
                    placeholder="Enter your name" TextMode="SingleLine" />
              <label class="login-field-icon fui-user" for="login-name"></label>
            </div>

            <div class="form-group">
              <asp:TextBox id="txtpass" runat="server" class="form-control login-field"  
                    placeholder="Password" TextMode="Password" />
              <label class="login-field-icon fui-lock" for="login-pass"></label>
            </div>

            <asp:Button ID="btnlog" runat="server" class="btn btn-primary btn-lg btn-block" 
                  Text="Login" onclick="btnlog_Click" />
                  <asp:Label ID="lblLog" runat="server"></asp:Label>
            <%--<a class="login-link" href="#">Lost your password?</a>--%>
          </div>
        </div>
      </div>
    </form>
</body>
</html>
