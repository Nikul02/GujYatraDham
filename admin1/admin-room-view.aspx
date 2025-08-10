<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-room-view.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <form runat="server" id="room_view">
        
                    <div class="page-header">
                        <h3 class="page-title">View  Rooms</h3>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 grid-margin stretch-card">
                           <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <asp:Repeater ID="roomRepeater" runat="server">
                                            <HeaderTemplate>
                                                <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Id </th>
                                                    <th>Photo</th>
                                                    <th>Rent</th>
                                                    <th>Dharmshala  </th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                        
                                            </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                   
                                                    
                                                    <td><%# Eval("rId") %></td>
                                                    <td><img src="../photos/room/<%# Eval("rImg") %>" style="height:100px;width:100px;border-radius:10%;" /></td>
                                                    <td><%# Eval("rRant") %></td>
                                                    <td><%# Eval("dharmName") %></td>
                                                    <td>
                                                    <a href="admin-room-update.aspx?rId=<%# Eval("rId") %>" class="btn btn-warning me-2">Update</a>
                                                        <asp:Button ID="room_delete" runat="server" Text="Delete" CommandArgument='<%# Eval("rId") %>' CssClass="btn btn-danger me-2" OnClick="room_delete_Click"/>
                                                      <a href="admin-room-detail.aspx?rId=<%#Eval ("rId") %>" class="btn btn-success me-2 ">View</a>
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

