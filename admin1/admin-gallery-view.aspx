<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-gallery-view.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <form runat="server" id="puja_view">

        <div class="page-header">
            <h3 class="page-title">View Gallery </h3>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="galleryRepeater" runat="server" >
                                <HeaderTemplate>
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Id </th>
                                                <th>Image</th>
                                                <th>Title </th>
                                                <th>Mandir Name </th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td><%# Eval ("galId") %></td>
                                        <td><img src="../photos/gallery/<%# Eval("galImg") %>" style ="height :100px; width:100px; border-radius:10%;"/></td>
                                        <td><%# Eval ("galTitle") %></td>
                                        <td><%# Eval ("manName") %></td>
                                        
                                        <td>
                                            <a href="admin-gallery-update.aspx?galId=<%# Eval ("galId") %>" class="btn btn-warning me-2">Update</a>
                                            <asp:Button ID="gallery_delete" OnClick="gallery_delete_Click"  CommandArgument ='<%# Eval ("galId") %>' runat="server" Text="Delete" CssClass="btn btn-danger me-2" />
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

