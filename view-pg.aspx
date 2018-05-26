<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view-pg.aspx.cs" Inherits="view_pg" %>

<%@ Register src="Header.ascx" tagname="Header" tagprefix="uc1" %>

<%@ Register src="Footer.ascx" tagname="Footer" tagprefix="uc2" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <link href="css/DT_bootstrap.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.js" type="text/javascript"></script>
    <script src="js/DT_bootstrap.js" type="text/javascript"></script>
    <script src="js/editable-table.js" type="text/javascript"></script>

     <script type="text/javascript">
         jQuery(document).ready(function () {
             EditableTable.init();
         });
      </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:Header ID="Header1" runat="server" />
    
    </div>
         <section class="panel" style="margin:5%">
      <div class="panel-body">
         <div class="adv-table editable-table ">
           <%-- <div class="space15"></div>--%>
              <div id="editable-sample_wrapper" class="dataTables_wrapper form-inline" role="grid">
              <header class="panel-heading">Rent Details</header>  
                <table style="width:100%" aria-describedby="editable-sample_info" class="table table-striped table-hover table-bordered dataTable" id="editable-sample">
                   <thead>
                  
                     <tr>
                         <td class="sorting" style="font-weight:bold">Sl No.</td>
                         <td class="sorting" style="font-weight:bold">Rent Type</td>
                         <td class="sorting" style="font-weight:bold">Owner</td>
                         <td class="sorting" style="font-weight:bold">Availability</td>
                         <td class="sorting" style="font-weight:bold">Capasity/Room</td>
                         <td class="sorting" style="font-weight:bold">Bath Rooms</td>
                         <td class="sorting" style="font-weight:bold">For</td>
                         <td class="sorting" style="font-weight:bold">Wifi</td>
                         <td class="sorting" style="font-weight:bold">Security</td>
                         <td class="sorting" style="font-weight:bold">Mess</td>
                           <td class="sorting" style="font-weight:bold">Amount</td>
                         <td class="sorting" style="font-weight:bold">Action</td>
                     </tr>  
                   </thead>
                   <tbody aria-relevant="all" aria-live="polite" role="alert">
                      <asp:Repeater ID="rptr_Rent" runat="server">
                         <ItemTemplate>
                            <tr>
                              <td class="odd"><%# Container.ItemIndex + 1 %></td>
                              <td class="even"><%# DataBinder.Eval(Container.DataItem, "RentType") %></td>
                              <td class="odd"><%# DataBinder.Eval(Container.DataItem, "OwnerName") %></td>
                              <td class="even"><%# DataBinder.Eval(Container.DataItem, "Availability") %></td>
                              <td class="odd"><%# DataBinder.Eval(Container.DataItem, "capasity") %></td>
                              <td class="even"><%# DataBinder.Eval(Container.DataItem, "bathroom") %></td>
                              <td class="odd"><%# DataBinder.Eval(Container.DataItem, "gender") %></td>
                              <td class="even"><%# DataBinder.Eval(Container.DataItem, "wifi") %></td>
                              <td class="even"><%# DataBinder.Eval(Container.DataItem, "security") %></td>
                                  <td class="even"><%# DataBinder.Eval(Container.DataItem, "mess") %></td>
                              <td class="even"><%# DataBinder.Eval(Container.DataItem, "Amount") %></td>
                              <td class="odd">
                                                               <asp:LinkButton ID="lnk_Delete" onclientclick="javascript:return confirm('Are you sure to delete this record?')" CssClass="btn btn-danger" CausesValidation="false" CommandName="Delete" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "RentID")%>' OnClick="lnk_Delete">Delete</asp:LinkButton> 
                                                           </div>                    
                                   </td>
                           </tr>
                       </ItemTemplate>
                     </asp:Repeater>
                  </tbody>
           </table>
       <div class="row">
        <div class="col-lg-6">
         <div id="editable-sample_info" class="dataTables_info"></div></div>
          <div class="col-lg-6"></div></div></div>
         </div>
     </div>
 </section>
 <div><asp:Label ID="lbl_msg" runat="server"></asp:Label></div>

    <div>
        <uc2:Footer ID="Footer1" runat="server" />
    </div>
    </form>
</body>
</html>
