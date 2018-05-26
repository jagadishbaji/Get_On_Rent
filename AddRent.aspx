<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddRent.aspx.cs" Inherits="AddRent" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<%@ Register src="Footer.ascx" tagname="Footer" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
   <%-- <script class="include" type="text/javascript" src="js/jquery.dcjqaccordion.2.7.js"></script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:Header ID="Header1" runat="server" />
    
    </div>
      
      <section class="panel" style="margin:5%; margin-top:-0%">
                          <header class="panel-heading">
                              Add Rent 
                          </header>  
                          <div class="panel-body">
                   
                                  <div class="form-group" >
                                      <%-- <label for="inputEmail1" class="col-lg-2 col-sm-2 control-label">Email</label>--%>
                                      <div class="col-lg-10" style="width:30%">
                                      <asp:DropDownList ID="dd_renttype" AutoPostBack="true" OnSelectedIndexChanged="dd_renttype_SelectedIndexChanged" runat="server" CssClass="form-control"></asp:DropDownList>
                                      </div>
                                      <div class="col-lg-10" >
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                              ControlToValidate="dd_renttype" Display="Dynamic" 
                                              ErrorMessage="Select Rent Type" ForeColor="Red" ValidationGroup="crt" 
                                              InitialValue="Select Rent Type" ></asp:RequiredFieldValidator>
                                      </div>
                                  </div>
                                <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:DropDownList ID="dd_owner" runat="server" CssClass="form-control">
                                       </asp:DropDownList>
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                              ControlToValidate="dd_owner" Display="Dynamic" 
                                              ErrorMessage="Select Owner" ForeColor="Red" ValidationGroup="crt" 
                                             InitialValue="Select Owner" ></asp:RequiredFieldValidator>
                                      </div>
                                </div>
                               
                                 <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:FileUpload ID="file_img" CssClass="form-control" runat="server" />
                                    </div>
                                   
                                 <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                              ControlToValidate="file_img" Display="Dynamic" 
                                              ErrorMessage="Select Image" ForeColor="Red" ValidationGroup="crt" ></asp:RequiredFieldValidator>
                                      </div>
                                  </div>
                                <div class="form-group" style="margin-top:8%">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:DropDownList ID="dd_avail" runat="server" CssClass="form-control">
                                           <asp:ListItem>Select Availability</asp:ListItem>
                                           <asp:ListItem>Immediately</asp:ListItem>
                                           <asp:ListItem>Within 1 Month</asp:ListItem>
                                           <asp:ListItem>1 - 3 Months</asp:ListItem>
                                           <asp:ListItem>3 - 6  Months</asp:ListItem>
                                           <asp:ListItem>6 Months +</asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                              ControlToValidate="dd_Avail" Display="Dynamic" 
                                              ErrorMessage="Select Availability" ForeColor="Red" ValidationGroup="crt" 
                                             InitialValue="Select Availability" ></asp:RequiredFieldValidator>
                                      </div>
                                </div>
                                <asp:Panel runat="server" ID="mainPnl">
                                
                               

                               

                                  <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:DropDownList ID="dd_Furnish" runat="server" CssClass="form-control">
                                           <asp:ListItem>Select Furnish</asp:ListItem>
                                           <asp:ListItem>Furnished</asp:ListItem>
                                           <asp:ListItem>Semi-Furnished</asp:ListItem>
                                           <asp:ListItem>UnFurnished</asp:ListItem>
                                           <asp:ListItem>Nothing</asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                              ControlToValidate="dd_Furnish" Display="Dynamic" 
                                              ErrorMessage="Select Furnished" ForeColor="Red" ValidationGroup="crt" 
                                             InitialValue="Select Furnish" ></asp:RequiredFieldValidator>
                                      </div>
                                   </div>

                                  <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:DropDownList ID="dd_Bedrooms" runat="server" CssClass="form-control" >
                                           <asp:ListItem>Select Bed Rooms</asp:ListItem>
                                           <asp:ListItem>1 BHK</asp:ListItem>
                                           <asp:ListItem>2 BHK</asp:ListItem>
                                           <asp:ListItem>3 BHK</asp:ListItem>
                                           <asp:ListItem>4 BHK</asp:ListItem>
                                           <asp:ListItem>5 BHK</asp:ListItem>
                                           <asp:ListItem>Nothing</asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                              ControlToValidate="dd_Bedrooms" Display="Dynamic" 
                                              ErrorMessage="Select Bed Rooms" ForeColor="Red" ValidationGroup="crt" 
                                             InitialValue="Select Bed Rooms" ></asp:RequiredFieldValidator>
                                      </div>
                                     
                                  </div>

                                  <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:DropDownList ID="dd_bath" runat="server" CssClass="form-control" >
                                           <asp:ListItem>Select Bath Rooms</asp:ListItem>
                                           <asp:ListItem>1 Bath</asp:ListItem>
                                           <asp:ListItem>2 Bath</asp:ListItem>
                                           <asp:ListItem>3 Bath</asp:ListItem>
                                           <asp:ListItem>4 Bath</asp:ListItem>
                                           <asp:ListItem>5 Bath</asp:ListItem>
                                           <asp:ListItem>Nothing</asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                              ControlToValidate="dd_bath" Display="Dynamic" 
                                              ErrorMessage="Select Bath" ForeColor="Red" ValidationGroup="crt" 
                                             InitialValue="Select Bath Rooms" ></asp:RequiredFieldValidator>
                                      </div>
                                     
                                  </div>
                                      <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:DropDownList ID="dd_floar" runat="server" CssClass="form-control" >
                                           <asp:ListItem>Select Floars</asp:ListItem>
                                           <asp:ListItem>1 </asp:ListItem>
                                           <asp:ListItem>2 </asp:ListItem>
                                           <asp:ListItem>3 </asp:ListItem>
                                           <asp:ListItem>4 </asp:ListItem>
                                           <asp:ListItem>5 </asp:ListItem>
                                           <asp:ListItem>Nothing</asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                              ControlToValidate="dd_floar" Display="Dynamic" 
                                              ErrorMessage="Select floar" ForeColor="Red" ValidationGroup="crt" 
                                             InitialValue="Select Floars" ></asp:RequiredFieldValidator>
                                      </div>
                                     
                                  </div>
                                    <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:DropDownList ID="drop_for" runat="server" CssClass="form-control" >
                                           <asp:ListItem> For</asp:ListItem>
                                           <asp:ListItem>Bachelors </asp:ListItem>
                                           <asp:ListItem>Family</asp:ListItem>
                                           <asp:ListItem>Nothing</asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                              ControlToValidate="drop_for" Display="Dynamic" 
                                              ErrorMessage="Select For" ForeColor="Red" ValidationGroup="crt" 
                                             InitialValue="Select For" ></asp:RequiredFieldValidator>
                                      </div>
                                     
                                  </div>
                                       <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:DropDownList ID="dd_park" runat="server" CssClass="form-control" >
                                           <asp:ListItem>Parking</asp:ListItem>
                                           <asp:ListItem>Availabel</asp:ListItem>
                                           <asp:ListItem>NA</asp:ListItem>
                                       
                                       </asp:DropDownList>
                                    </div>
                                   
                                    
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                              ControlToValidate="dd_park" Display="Dynamic" 
                                              ErrorMessage="Select Parking" ForeColor="Red" ValidationGroup="crt" 
                                             InitialValue="Select Parking" ></asp:RequiredFieldValidator>
                                      </div>
                                     
                                  </div>


                                   <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:TextBox ID="txtsqft" runat="server" CssClass="form-control" placeholder="Square Feet" />
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                              ControlToValidate="txtsqft" Display="Dynamic" 
                                              ErrorMessage="Enter Square Feet" ForeColor="Red" ValidationGroup="crt" ></asp:RequiredFieldValidator>
                                      </div>
                                  </div>

                                 
                                  <div class="form-group">
                                   <div class="col-lg-10" style="width:30%">
                                       <asp:TextBox ID="txtAmt" runat="server" CssClass="form-control" placeholder="Amount" />
                                    </div>
                                   
                                   <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                              ControlToValidate="txtAmt" Display="Dynamic" 
                                              ErrorMessage="Enter Amount" ForeColor="Red" ValidationGroup="crt" ></asp:RequiredFieldValidator>
                                      </div>
                                      <div class="col-lg-10">
                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                                              ControlToValidate="txtAmt" Display="Dynamic" 
                                              ErrorMessage="Enter Numbers Only" ForeColor="Red" ValidationGroup="crt" 
                                              ValidationExpression="[0-9]+" ></asp:RegularExpressionValidator>
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <div class="col-lg-10" style="width:30%">
                                          <asp:DropDownList ID="dd_Nego" runat="server" CssClass="form-control">
                                              <asp:ListItem>Select Negotiable</asp:ListItem>
                                              <asp:ListItem>Yes</asp:ListItem>
                                              <asp:ListItem>No</asp:ListItem>
                                          </asp:DropDownList>
                                      </div>
                                      <div class="col-lg-10">
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                              ControlToValidate="dd_Nego" Display="Dynamic" 
                                              ErrorMessage="Select Negotiable" ForeColor="Red" ValidationGroup="crt" 
                                              InitialValue="Select Negotiable" ></asp:RequiredFieldValidator>
                                      </div>
                                  </div>

                                  <div class="form-group">
                                      <div class="col-lg-10" style="width:30%">
                                          <asp:Button ID="btnAdd" runat="server" Text="Add" 
                                              class="btn btn-success" ValidationGroup="crt" 
                                              onclick="btnAdd_Click"></asp:Button>
                                      </div>
                                  </div>
                            </asp:Panel>
                               <asp:Panel ID="Panel1" runat="server">
             <div class="panel-body">
                   
                                 

                                

                                
                                 

                                 
                                  <div class="form-group">
                                   <div style="width:28%">
                                       <asp:DropDownList ID="dd_capacity" runat="server" CssClass="form-control" >
                                           <asp:ListItem>Capasity per Room</asp:ListItem>
                                        
                                           <asp:ListItem>2 Person</asp:ListItem>
                                           <asp:ListItem>3 Person</asp:ListItem>
                                           <asp:ListItem>4 Person</asp:ListItem>
                                           <asp:ListItem>5 Person</asp:ListItem>
                                           <asp:ListItem>Nothing</asp:ListItem>
                                       </asp:DropDownList>
                                    </div>
                                   
                                   
                                     
                                  </div>

                                  <div class="form-group">
                                   <div  style="width:28%">
                                       <asp:DropDownList ID="dd_bathrooms" runat="server" CssClass="form-control" >
                                           <asp:ListItem>Select Bath Rooms</asp:ListItem>
                                           <asp:ListItem>1 Bath</asp:ListItem>
                                           <asp:ListItem>2 Bath</asp:ListItem>
                                           <asp:ListItem>3 Bath</asp:ListItem>
                                         
                                       </asp:DropDownList>
                                     
                                    </div>
                                   
                                
                                     
                                  </div><div class="form-group">
                                   <div  style="width:28%">
                                       <asp:DropDownList ID="dd_gender" runat="server" CssClass="form-control" >
                                           <asp:ListItem>PG for</asp:ListItem>
                                           <asp:ListItem>Female</asp:ListItem>
                                           <asp:ListItem>Male</asp:ListItem>
                                     
                                         
                                       </asp:DropDownList>
                                    </div>
                                   
                               
                                     
                                  </div>
                 <div class="form-group">
                                   <div  style="width:28%">
                                       <asp:DropDownList ID="dd_wifi" runat="server" CssClass="form-control" >
                                           <asp:ListItem> Wifi Availability</asp:ListItem>
                                           <asp:ListItem>Yes</asp:ListItem>
                                           <asp:ListItem>No</asp:ListItem>
                                          
                                         
                                       </asp:DropDownList>
                                       
                                    </div>
                                
                                 
                                  </div>
               
                 <div class="form-group">
                                   <div  style="width:28%">
                                       <asp:DropDownList ID="dd_security" runat="server" CssClass="form-control" >
                                           <asp:ListItem>Security</asp:ListItem>
                                           <asp:ListItem>Yes</asp:ListItem>
                                           <asp:ListItem>No</asp:ListItem>
                                  
                                         
                                       </asp:DropDownList>
                                     
                                    </div>
                                   
                               
                                   
                                  </div>
               
                 <div class="form-group">
                                   <div  style="width:28%">
                                       <asp:DropDownList ID="dd_mess" runat="server" CssClass="form-control" >
                                           <asp:ListItem>Mess</asp:ListItem>
                                           <asp:ListItem>Available</asp:ListItem>
                                           <asp:ListItem>Not-Available</asp:ListItem>
                                           
                                         
                                       </asp:DropDownList>
                                    </div>
                                   
                              
                                     
                                  </div>
                                   <div class="form-group">
                                   <div style="width:28%">
                                       <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Square Feet" />
                                    </div>
                                   
                               
                                  </div>

                                 
                                  <div class="form-group">
                                   <div  style="width:28%">
                                       <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Amount" />
                                    </div>
                                   
                                
                                      
                                  </div>

                                 

                                  <div class="form-group">
                                      <div class="col-lg-10" style="width:30%">
                                          <asp:Button ID="Button1" runat="server" Text="Add" 
                                              class="btn btn-success" ValidationGroup="crt" 
                                              onclick="btnAdd_Click"></asp:Button>
                                      </div>
                                  </div>
                          </div>
                           
        </asp:Panel>
                         
                           <div><asp:HiddenField ID="hdn_rentID" runat="server" /></div>
                     
   </section>
    


       

    <div>
        <uc2:Footer ID="Footer1" runat="server" />
    </div>
    </form>
</body>
</html>
