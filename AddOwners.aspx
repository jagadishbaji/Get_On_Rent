<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddOwners.aspx.cs" Inherits="AddOwners" %>

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
                              Add Owner
                          </header>  
                          <div class="panel-body">
                   
                                  <div class="form-group" >
                                      <%-- <label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">Email</label>--%>
                                      <div class="col-lg-10" style="width:30%">
                                      <asp:TextBox ID="txtfname" runat="server" CssClass="form-control" placeholder="First Name"/>
                                      </div>
                                      <div class="col-lg-10" >
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                              ControlToValidate="txtfname" Display="Dynamic" 
                                              ErrorMessage="Enter First Name" ForeColor="Red" ValidationGroup="crt"></asp:RequiredFieldValidator>
                                      </div>
                                       <div class="col-lg-10">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                              ControlToValidate="txtfname" Display="Dynamic" 
                                              ErrorMessage="Enter Text Only" ForeColor="Red" ValidationGroup="crt" 
                                              ValidationExpression="[a-z,\s,A-Z]+" ></asp:RegularExpressionValidator>
                                      </div>
                                  </div>

                                 <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:TextBox ID="txtmname" CssClass="form-control" runat="server" placeholder="Middle Name" />
                                    </div>
                                   
                                 <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                              ControlToValidate="txtmname" Display="Dynamic" 
                                              ErrorMessage="Enter Middle Name" ForeColor="Red" ValidationGroup="crt" ></asp:RequiredFieldValidator>
                                      </div>
                                       <div class="col-lg-10">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                              ControlToValidate="txtmname" Display="Dynamic" 
                                              ErrorMessage="Enter Text Only" ForeColor="Red" ValidationGroup="crt" 
                                              ValidationExpression="[a-z,\s,A-Z]+" ></asp:RegularExpressionValidator>
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:TextBox ID="txtlname" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>  
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                              ControlToValidate="txtlname" Display="Dynamic" 
                                              ErrorMessage="Enter Last Name" ForeColor="Red" ValidationGroup="crt"></asp:RequiredFieldValidator>
                                      </div>
                                       <div class="col-lg-10">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                              ControlToValidate="txtlname" Display="Dynamic" 
                                              ErrorMessage="Enter Text Only" ForeColor="Red" ValidationGroup="crt" 
                                              ValidationExpression="[a-z,\s,A-Z]+" ></asp:RegularExpressionValidator>
                                      </div>
                                </div>

                                  <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:TextBox ID="txtaddrs" runat="server" CssClass="form-control" placeholder="Address"/>
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                              ControlToValidate="txtaddrs" Display="Dynamic" 
                                              ErrorMessage="Enter Address" ForeColor="Red" ValidationGroup="crt"></asp:RequiredFieldValidator>
                                      </div>
                                   </div>

                                  <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control" placeholder="Mobile No" />
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                              ControlToValidate="txtmobile" Display="Dynamic" 
                                              ErrorMessage="Enter Mobile No" ForeColor="Red" ValidationGroup="crt"></asp:RequiredFieldValidator>
                                      </div>
                                      <div class="col-lg-10">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                              ControlToValidate="txtmobile" Display="Dynamic" 
                                              ErrorMessage="Enter 10 Digits No" ForeColor="Red" ValidationGroup="crt" 
                                              ValidationExpression="\d{10}(-\d{9})?" ></asp:RegularExpressionValidator>
                                      </div>
                                  </div>

                                  <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:TextBox ID="txtlndline" runat="server" CssClass="form-control" placeholder="Land Line No" />   
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                              ControlToValidate="txtlndline" Display="Dynamic" 
                                              ErrorMessage="Enter Landline No" ForeColor="Red" ValidationGroup="crt"></asp:RequiredFieldValidator>
                                      </div>
                                     <div class="col-lg-10">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                              ControlToValidate="txtlndline" Display="Dynamic" 
                                              ErrorMessage="Enter 10 Digits No" ForeColor="Red" ValidationGroup="crt" 
                                              ValidationExpression="\d{10}(-\d{9})?" ></asp:RegularExpressionValidator>
                                      </div>
                                  </div>

                                   <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" placeholder="City" />
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                              ControlToValidate="txtcity" Display="Dynamic" 
                                              ErrorMessage="Enter City" ForeColor="Red" ValidationGroup="crt" ></asp:RequiredFieldValidator>
                                      </div>
                                      <div class="col-lg-10">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                              ControlToValidate="txtcity" Display="Dynamic" 
                                              ErrorMessage="Enter Text Only" ForeColor="Red" ValidationGroup="crt" 
                                              ValidationExpression="[a-z,\s,A-Z]+" ></asp:RegularExpressionValidator>
                                      </div>
                                  </div>

                                 
                                  <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:TextBox ID="txtstate" runat="server" CssClass="form-control" placeholder="State" />
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                              ControlToValidate="txtstate" Display="Dynamic" 
                                              ErrorMessage="Enter State" ForeColor="Red" ValidationGroup="crt" ></asp:RequiredFieldValidator>
                                      </div>
                                      <div class="col-lg-10">
                                         <div class="col-lg-10">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                              ControlToValidate="txtstate" Display="Dynamic" 
                                              ErrorMessage="Enter Text Only" ForeColor="Red" ValidationGroup="crt" 
                                              ValidationExpression="[a-z,\s,A-Z]+" ></asp:RegularExpressionValidator>
                                      </div>
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <div class="col-lg-10" style="width:30%">
                                          <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" placeholder="Email"/>
                                      </div>
                                      <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                              ControlToValidate="txtmail" Display="Dynamic" 
                                              ErrorMessage="Enter Email id" ForeColor="Red" ValidationGroup="crt"></asp:RequiredFieldValidator>
                                      </div>
                                       <div class="col-lg-10">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                              ControlToValidate="txtmail" Display="Dynamic" 
                                              ErrorMessage="Invalid Mail ID" ForeColor="Red" ValidationGroup="crt" 
                                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
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
                           <div><asp:HiddenField ID="hdn_ownrID" runat="server" /></div>
                      </section>

    <div>
        <uc2:Footer ID="Footer1" runat="server" />
    </div>
    </form>
</body>
</html>
