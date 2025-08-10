<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-puja-view.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <form runat="server" id="puja_view">
        <div class="page-header">
            <h3 class="page-title">View Puja </h3>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="pujaRepeater" runat="server">
                                <HeaderTemplate>

                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Puja Id </th>
                                                <th>Puja Name </th>
                                                <th>Image </th>
                                                <th>Mandir Name</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                          
                                </HeaderTemplate>
                                <ItemTemplate>
                                      <tr>
                                    <td><%# Eval("pujaId") %> </td>
                                    <td> <%# Eval("pujaName") %> </td>
                                    <td><img src="../photos/puja/<%# Eval("pujaImg") %>" style ="height :100px; width:100px; border-radius:10%;"/></td>
                                    <td><%# Eval ("manName") %></td>
                                    <td>
                                        <a href="admin-puja-update.aspx?pujaId=<%#Eval ("pujaId") %>" class="btn btn-warning me-2 ">Update</a>
                                        <asp:Button ID="puja_delete" runat="server" Text="Delete" CommandArgument='<%# Eval("pujaId") %>' CssClass="btn btn-danger me-2" OnClick ="puja_delete_Click" />
                                          <a href="admin-puja-detail.aspx?pujaId=<%#Eval ("pujaId") %>" class="btn btn-success me-2 ">View</a>
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

