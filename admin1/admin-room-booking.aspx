<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-room-booking.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <form runat="server" id="puja_view">
        <div class="page-header">
            <h3 class="page-title">View Room Bookings </h3>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="room_booking" runat="server">
                                <HeaderTemplate>

                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Booking Id </th>
                                                <th>User Name </th>
                                                <th>Dharmshala </th>
                                                <th>Room Type </th>
                                                <th>Date of Booking </th>
                                                <th>Days </th>
                                                <th>Total Room </th>
                                               <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                          
                                </HeaderTemplate>
                                <ItemTemplate>
                                      <tr>
                                    <td><%# Eval("bookingId") %> </td>
                                    <td> <%# Eval("userName") %> </td>
                                    <td><%# Eval ("dharmName") %></td>
                                    <td><%# Eval("catName") %> </td>
                                    <td><%# Eval("bookDate") %></td>
                                    <td><%# Eval("totalDay") %> </td>
                                    <td><%# Eval("totalRoom") %> </td>
                                   
                                           <td>
                                        <asp:LinkButton ID="chgstatus" CssClass='<%# Eval("status").ToString() == "0" ? "btn btn-warning" : "btn btn-success" %>' OnClick="chgstatus_Click" CommandArgument='<%# Eval("bookingId") %>' runat="server"><%# new status(Application).getStatusName(Convert.ToInt32(Eval("status"))) %></asp:LinkButton>          
                                          </td>
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

    </form>


</asp:Content>

