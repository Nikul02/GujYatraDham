<%@ Page Title=""  ValidateRequest="false" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-room-add.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <form runat ="server" id="add_room">
                <div class="page-header">
                    <h3 class="page-title">Add Rooms </h3>
                </div>
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                    <div class="form-group">
                                        <label for="exampleInputName1">Rooms Detail</label>
                                        <asp:TextBox id="rDetail" runat="server"  CssClass ="form-control" TextMode="MultiLine" placeholder="Enter Room Detail"></asp:TextBox>
                                    </div>
                               <div class="form-group">
                                        <label>Rooms Image</label>
                                        <asp:FileUpload ID="rImg" runat="server" CssClass="form-control"/>
                                    </div>
   
                                <div class="form-group">
                                        <label for="exampleInputPassword4">Room Rent</label>
                                          <asp:TextBox id="rRent" runat="server"  CssClass ="form-control"  placeholder="Enter Room Rent"></asp:TextBox>
                                    </div>
                                    
                                <div class="form-group">
                                        <label for="exampleTextarea1">Select Dharmshala</label>
                                        <asp:DropDownList ID="dharmId" runat ="server" CssClass ="form-control">
                                        </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                        <label for="r">Select Room Category</label>
                                        <asp:DropDownList ID="rCatId" runat ="server" CssClass ="form-control">
                                        </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                        <label for="exampleInputName1">Room Total</label>
                                        <asp:TextBox id="rTotal" runat="server"  CssClass ="form-control"  placeholder="Enter Room Total"></asp:TextBox>
                                    </div>

                                    

                                    <asp:Button ID="room_add" runat ="server" Text ="Submit" CssClass="btn btn-primary me-2" OnClick="room_add_Click"/>
                                   
                            </div>
                        </div>
                    </div>
                  </div>
                </form>
</asp:Content>

