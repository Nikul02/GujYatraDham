<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-review-view.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <form runat="server" id="user_view">
                    <div class="page-header">
                        <h3 class="page-title">View Reviews </h3>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <asp:Repeater ID="readAllreview" runat ="server">
                                            <HeaderTemplate>
                                                 <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Review Id </th>
                                                    <th>Comment</th>
                                                    <th>Date</th>
                                                    <th>User Name</th>
                                                    <th>Id</th>
                                                    <th>Type</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                       
                                            </HeaderTemplate>
                                            <ItemTemplate >
                                                         <tr>
                                                    <td><%#Eval ("revId") %></td>
                                                    <td><%#Eval ("userComm") %></td>
                                                    <td><%#Eval ("revDate") %></td>
                                                    <td><%#Eval ("userName") %></td>
                                                    <td><%#Eval ("id") %></td>
                                                    <td><%#Eval ("type") %></td>
                                                    
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

