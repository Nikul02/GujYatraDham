<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-user-view.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
     <form runat="server" id="user_view">
                    <div class="page-header">
                        <h3 class="page-title">View User </h3>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <asp:Repeater ID="userRepeater" runat ="server">
                                            <HeaderTemplate>
                                                 <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>User Id </th>
                                                    <th>Name </th>
                                                    <th>Email </th>
                                                    <th>Gender </th>
                                                    <th>Mobile No </th>
                                                    <th>Password </th>
                                                    <th>Address</th>
                                                    <th>City</th>
                                                    <th>User Image</th>
                                                    <th>User Idproof</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                       
                                            </HeaderTemplate>
                                            <ItemTemplate >
                                                         <tr>
                                                    <td><%#Eval ("userId") %></td>
                                                    <td><%#Eval ("userName") %></td>
                                                    <td><%#Eval ("userEmail") %></td>
                                                    <td><%#Eval ("userGender") %></td>
                                                    <td><%#Eval ("userMno") %></td>
                                                    <td><%#Eval ("userPass") %></td>
                                                    <td><%#Eval ("userAdd") %></td>
                                                    <td><%#Eval ("userCity") %></td>
                                                    <td><img src="../photos/user/profile/<%# Eval("img") %>" style="height:100px;width:100px;border-radius:10%;" /> </td>
                                                    <td><img src="../photos/user/proof/<%# Eval("idProof") %>" style="height:100px;width:100px;border-radius:10%;" /> </td>
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

