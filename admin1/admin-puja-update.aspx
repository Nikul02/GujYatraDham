<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-puja-update.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <form runat="server" id="add_dharmshala">
        <div class="page-header">
            <h3 class="page-title">Update Puja </h3>
        </div>
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">

                        <asp:Repeater ID="update_puja" runat="server" OnItemDataBound="update_puja_ItemDataBound">
                            <ItemTemplate>

                                <div class="form-group">
                                    <label for="exampleInputName1">Puja Name</label>
                                    <asp:TextBox ID="pujaName" Text='<%# Eval ("pujaName") %>' runat="server" CssClass="form-control" placeholder="Enter Puja Name" autofocus></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputName1">Puja Schedule</label>
                                    <asp:TextBox ID="pujaSchedule" Text ='<%# Eval("pujaSchedule") %>'  runat="server" CssClass="form-control"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label>Upload Image</label>
                                    
                                    <img src="../photos/puja/<%# Eval("pujaImg") %>" style="height: 50px; width: 50px;" />
                                    <asp:FileUpload ID="pujaImg"  runat="server" CssClass="form-control" />
                                    <asp:HiddenField ID="oldImg" runat ="server" Value='<%# Eval ("pujaImg") %>' />
                                        </div>

                                <div class="form-group">
                                    <label for="">Puja Price</label>
                                    <asp:TextBox ID="pujaPrice" Text='<%# Eval ("pujaPrice") %>' runat="server" CssClass="form-control" placeholder="Enter Puja Price"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="">Puja Detail</label>
                                    <asp:TextBox ID="pujaDetail" Text='<%# Eval ("pujaDetail") %>' runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Enter Puja Detail"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="exampleTextarea1">Select Mandir</label>
                                    <asp:DropDownList ID="manId" runat="server" CssClass="form-control">
                                        
                                        </asp:DropDownList>
                                </div>

                                <asp:Button ID="puja_update" runat="server" Text="Update" CssClass="btn btn-primary me-2"  OnClick ="puja_update_Click"/>

                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
            </div>
        </div>
       
    </form>
</asp:Content>

