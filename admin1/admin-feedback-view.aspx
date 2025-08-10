<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-feedback-view.aspx.cs" Inherits="admin1_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

   <form runat="server" id="user_view">
                    <div class="page-header">
                        <h3 class="page-title">View Feedback</h3>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                <asp:Repeater ID="readFeedbacks" runat="server">
                                    <HeaderTemplate >
                                          <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>feedId </th>
                                                    <th>Name </th>
                                                    <th>Email</th>
                                                    <th>Subject </th>
                                                    <th>Message </th>
                                                    <th>Date </th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                      
                                    </HeaderTemplate>
                                    <ItemTemplate >
                                               <tr>
                                                   <td><%# Eval ("feedId") %></td>
                                                    <td><%# Eval ("Name") %></td>
                                                    <td><%# Eval ("userEmail") %></td>
                                                    <td><%# Eval ("feedsub") %></td>
                                                    <td><%# Eval ("feedMessage") %></td>
                                                   <td><%# Eval ("feedDate") %></td>
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

