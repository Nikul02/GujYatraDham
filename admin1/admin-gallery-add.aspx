<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-gallery-add.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <form runat="server" id="add_gallery">
                <div class="page-header">
                    <h3 class="page-title">Add Gallery </h3>
                </div>
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                  <div class="form-group">
                                        <label>Upload Image</label>
                                        <asp:FileUpload ID="galImg" runat="server" CssClass="form-control"/>
                                    </div>

                                     <div class="form-group">
                                        <label for="exampleInputPassword4">Gallery Title</label>
                                          <asp:TextBox id="galTitle" runat="server"  CssClass ="form-control"  placeholder="Enter Gallery Title"></asp:TextBox>
                                    </div>
                                    
                                    
                                <div class="form-group">
                                        <label for="exampleTextarea1">Select Mandir</label>
                                        <asp:DropDownList ID="manId" runat ="server" CssClass ="form-control">
                                        </asp:DropDownList>
                                </div>

                                     <asp:Button ID="gallery_add" runat ="server" Text ="Submit" CssClass="btn btn-primary me-2"  OnClick="gallery_add_Click"/>
                              
                            </div>
                        </div>
                    </div>
                  </div>
                </form>

</asp:Content>

