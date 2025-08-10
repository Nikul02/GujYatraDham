<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-puja-booking.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
   
          <form runat="server" id="update_puja">
        <div class="page-header">
            <h3 class="page-title">View Puja Booking </h3>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="puja_booking" runat="server">
                                <HeaderTemplate>

                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Booking Id </th>
                                                <th>User Name </th>
                                                <th>Puja Name </th>
                                                <th>Puja Price</th>
                                                <th>Image</th>
                                                <th>Schedule </th>
                                                <th>Booking Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                          
                                </HeaderTemplate>
                                <ItemTemplate>
                                      <tr>
                                    <td><%# Eval("bkpujaId") %> </td>
                                    <td> <%# Eval("userId") %> </td>
                                    <td><%# Eval ("pujaId") %></td>
                                    <td><%# Eval("pujaPrice") %> </td>
                                    <td><%# Eval("pujaImg") %></td>
                                    <td><%# Eval("pujaSchedule") %> </td>
                                    <td><%# Eval("bkDate") %> </td>
                                    <td>
                                        <button type="button" form="" class="btn btn-warning" bid='<%# Eval("bkpujaId") %>' onclick="disp(this)" bkdate ='<%# DateTime.Parse(Eval("bkDate").ToString()).ToString("yyyy-MM-dd") %>'  data-toggle="modal"  data-target="#exampleModal">Pendding</button></td>
                                      </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    
                                            </tbody>
                                        </table>
                                    
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Puja Booking</h5>
        <i class="fa fa-times" style="font-size:30px;"  data-dismiss="modal" aria-label="Close"></i>
      </div>
      <div class="modal-body">
           
                      <div class="form-group">
    <label>Booking Date</label>
                          <asp:HiddenField ID="bkId" runat="server" />
    <asp:TextBox CssClass="form-control" id="bkDate" TextMode="Date" runat="server" aria-describedby="emailHelp" placeholder="Enter Booking Date"></asp:TextBox>
  </div>
              
     
      </div>
      <div class="modal-footer">
        <button type="button" onclick="ddate()" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <asp:Button ID="book_puja" OnClick="book_puja_Click" runat="server" CssClass="btn btn-primary" Text="Save changes"></asp:Button>
      </div>



      </div>
      
    </div>
  </div>
</div>
                <script>
                   function disp(btn)
                   {
                       tdate = document.getElementById("<%= bkDate.ClientID %>")
                       tdate.value = btn.getAttribute("bkdate").toString()
                       tid = document.getElementById("<%= bkId.ClientID%>")
                       tid.value = btn.getAttribute("bid").toString();
                   }
    </script>
</form>    
   
</asp:Content>

