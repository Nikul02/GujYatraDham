<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-gallery-update.aspx.cs" Inherits="admin1_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <form runat="server" id="updategallery">
        <div class="page-header">
            <h3 class="page-title">Update Gallery </h3>
        </div>
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">

                        <asp:Repeater ID="update_gallery" runat="server" OnItemDataBound="update_gallery_ItemDataBound">


                            <ItemTemplate>

                                <div class="form-group">
                                    <label>Upload Image</label>
                                    <img src="../photos/gallery/<%#Eval ("galImg") %>" style="height: 50px; width: 50px;" />
                                    <asp:FileUpload ID="galImg" runat="server" CssClass="form-control" />
                                    <asp:HiddenField ID="oldImg" runat="server" />
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword4">Gallery Title</label>
                                    <asp:TextBox ID="galTitle" Text='<%# Eval ("galTitle") %>' runat="server" CssClass="form-control" placeholder="Enter Gallery Title"></asp:TextBox>
                                </div>

                              
                                <div class="form-group">
                                    <label for="exampleTextarea1">Select Mandir</label>
                                    <asp:DropDownList ID="manId" runat="server" CssClass="form-control">
                                    </asp:DropDownList>
                                </div>


                                <asp:Button ID="gallery_update" runat="server" Text="Update" CssClass="btn btn-primary me-2" OnClick="gallery_update_Click" />

                                </div>
     
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
    </form>

</asp:Content>

