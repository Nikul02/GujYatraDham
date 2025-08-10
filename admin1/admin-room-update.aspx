<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-room-update.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <form runat ="server" id="add_room">
                <div class="page-header">
                    <h3 class="page-title">Update Rooms </h3>
                </div>
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <asp:Repeater ID="update_room" runat="server" OnItemDataBound="update_room_ItemDataBound">
                                    <ItemTemplate >
                                       <div class="form-group">
                                        <label for="exampleInputName1">Rooms Detail</label>
                                        <asp:TextBox id="rDetail" Text='<%# Eval ("rDetail") %>' runat="server"  CssClass ="form-control" TextMode="MultiLine" placeholder="Enter Room Detail"></asp:TextBox>
                                    </div>
                               <div class="form-group">
                                        <label>Rooms Image</label>
                                    <img src="../photos/room/<%#Eval ("rImg") %>" style="height: 50px; width: 50px;" />
                                   
                                        <asp:FileUpload ID="rImg" runat="server" CssClass="form-control"/>
                                   <asp:HiddenField ID="oldImg" runat="server" />
                                    </div>
   
                                <div class="form-group">
                                        <label for="exampleInputPassword4">Room Rent</label>
                                          <asp:TextBox id="rRant" Text='<%#Eval ("rRant ") %>' runat="server"  CssClass ="form-control"  placeholder="Enter Room Rent"></asp:TextBox>
                                    </div>
                                    
                                <div class="form-group">
                                        <label for="exampleTextarea1">Update Dharmshala</label>
                                        <asp:DropDownList ID="dharmId"  runat ="server" CssClass ="form-control">
                                        </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                        <label for="r">Update Room Category</label>
                                        <asp:DropDownList ID="rCatId" runat ="server" CssClass ="form-control">
                                        </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                        <label for="exampleInputName1">Room Total</label>
                                        <asp:TextBox id="rTotal" Text='<%# Eval ("rTotal") %>' runat="server"  CssClass ="form-control"  placeholder="Enter Room Total"></asp:TextBox>
                                    </div>

                                    

                                    <asp:Button ID="room_update" runat ="server" Text ="Update" CssClass="btn btn-primary me-2" onclick="room_update_Click"   />
                                   
                                    </ItemTemplate>
                                </asp:Repeater>
                                    
                            </div>
                        </div>
                    </div>
                  </div>
                </form>
</asp:Content>

