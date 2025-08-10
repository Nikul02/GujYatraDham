<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-mandir-view.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <form runat="server">
        <div class="page-header">
            <h3 class="page-title">View Mandir </h3>
            <nav aria-label="breadcrumb">
                
            </nav>
        </div>
        <div class="row">

            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="mandirRepeater" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-striped">

                                        <thead>
                                            <tr>
                                                <th>Id </th>
                                                <th>Name </th>
                                                <th>Image</th>
                                                <th>City</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td><%# Eval ("manId") %></td>
                                        <td><%# Eval ("manName") %></td>
                                        <td>
                                            <img src="../photos/mandir/<%# Eval ("manImg") %>" style="height: 100px; width:100px; border-radius:10%;" /></td>
                                        <td><%# Eval ("manCity") %></td>
                                        <td>
                                            <a href="admin-mandir-update.aspx?manId=<%#Eval ("manId") %>" class="btn btn-warning me-2">Update</a>
                                            <asp:Button ID="mandir_delete" OnClick="mandir_delete_Click" CommandArgument='<%# Eval ("manId") %>' runat="server" Text="Delete" CssClass="btn btn-danger me-2" />
                                             <a href="admin-mandir-detail.aspx?manId=<%# Eval("manId") %>" class="btn btn-success me-2">View</a>
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

