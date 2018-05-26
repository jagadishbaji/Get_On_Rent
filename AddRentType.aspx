<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddRentType.aspx.cs" Inherits="AddRentType" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<%@ Register src="Footer.ascx" tagname="Footer" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
   <%-- <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:Header ID="Header1" runat="server" />
    
    </div>

      <section class="panel" style="margin:5%; margin-top:-0%">
                          <header class="panel-heading">
                              Add Rent Type
                          </header>  
                          <div class="panel-body">
                   
                                  <div class="form-group" >
                                      <div class="col-lg-10" style="width:30%">
                                      <asp:DropDownList ID="dd_Rtype" runat="server" CssClass="form-control">
                                          <asp:ListItem>Select Rent Type</asp:ListItem>
                                          <asp:ListItem>House</asp:ListItem>
                                          <asp:ListItem>Rooms</asp:ListItem>
                                           <asp:ListItem>Paying Guest</asp:ListItem>
                                                <asp:ListItem>Flat</asp:ListItem>
                                          </asp:DropDownList>
                                      </div>
                                      <div class="col-lg-10" >
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                              ControlToValidate="dd_Rtype" Display="Dynamic" 
                                              ErrorMessage="Select Rent Type" ForeColor="Red" ValidationGroup="crt" 
                                              InitialValue="Select Rent Type" ></asp:RequiredFieldValidator>
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <div class="col-lg-10" style="width:30%">
                                          <asp:Button ID="btnAdd" runat="server" Text="Add" 
                                              class="btn btn-success" ValidationGroup="crt" 
                                              onclick="btnAdd_Click"></asp:Button>
                                      </div>
                                  </div>
                          </div>
                           <div><asp:HiddenField ID="hdn_rentID" runat="server" /></div>
                      </section>

    <div>
        <uc2:Footer ID="Footer1" runat="server" />
    </div>
    </form>
</body>
</html>
