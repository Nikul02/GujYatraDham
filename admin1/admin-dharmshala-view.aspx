<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-dharmshala-view.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
       <form runat="server" id="puja_view">
        
                    <div class="page-header">
                        <h3 class="page-title">View  Dharmshala</h3>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 grid-margin stretch-card">
                           <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <asp:Repeater ID="dharmRepeater" runat="server">
                                            <HeaderTemplate>
                                                <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Id </th>
                                                    <th>Name </th>
                                                    <th>Photo</th>
                                                   <!-- <th>City </th>
                                                    <th>Map </th>
                                                    <th>Detail </th>
                                                    <th>Contact </th>
                                                    <th>Address</th>-->
                                                    <th>Mandir Name</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                        
                                            </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                   
                                                    
                                                    <td><%# Eval("dharmId") %></td>
                                                    <td><%# Eval("dharmName") %></td>
                                                    <td><img src="../photos/dharmshala/<%# Eval("dharmImg") %>" style="height:100px;width:100px;border-radius:10%" /></td>
                                                   <!-- <td><%# Eval("dharmCity") %></td>
                                                    <td><%# Eval("dharmMap") %></td>
                                                    <td><%# Eval("dharmDetail") %></td>
                                                    <td><%# Eval("dharmContact") %></td>
                                                    <td><%# Eval("dharmAdd") %></td>-->
                                                    <td><%# Eval("manName") %></td>
                                                    <td>
                                                    <a href="admin-dharmshala-update.aspx?dharmId=<%# Eval("dharmId") %>" class="btn btn-warning me-2">Update</a>
                                                        <asp:Button ID="dharmshala_delete" runat="server" Text="Delete" CommandArgument='<%# Eval("dharmId") %>' CssClass="btn btn-danger me-2" OnClick="dharmshala_delete_Click" />
                                                     <a href="admin-dharmshala-detail.aspx?dharmId=<%# Eval("dharmId") %>" class="btn btn-success me-2">View</a>
                                               
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

