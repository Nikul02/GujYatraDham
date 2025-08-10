<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-mandir-update.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <form runat="server" id="updatemandir">
        <div class="page-header">
            <h3 class="page-title">Update Mandir </h3>
        </div>

        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <asp:Repeater ID="update_mandir" runat="server">

                        <ItemTemplate>
                            <div class="card-body">

                                <div class="form-group">
                                    <label for="exampleInputName1">Mandri Name</label>
                                    <asp:TextBox ID="manName" Text ='<%# Eval ("manName") %>' runat="server" CssClass="form-control" placeholder="Enter Mandri Name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Upload Image</label>
                                       <img src="../photos/mandir/<%# Eval("manImg") %>" style="height: 50px; width: 50px;" />
                                 
                                    <asp:FileUpload ID="manImg" runat="server" CssClass="form-control" />
                                    <asp:HiddenField ID="oldImg" runat="server" />
                                </div>

                                <div class="form-group">
                                    <label for="exampleTextarea1">Mandri Address</label>
                                    <asp:TextBox ID="manAdd" Text ='<%# Eval ("manAdd") %>' runat="server" TextMode="MultiLine" CssClass="form-control " placeholder="Enter Mandri Address"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail3">Mandri Detail</label>
                                    <asp:TextBox ID="manDetail" Text ='<%# Eval ("manDetail") %>' runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Enter Mandri Detail"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword4">Mandri City</label>
                                    <asp:TextBox ID="manCity" Text ='<%# Eval ("manCity") %>' runat="server" CssClass="form-control" placeholder="Enter Mandri City"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputCity1">Mandri Map</label>
                                    <asp:TextBox ID="manMap" Text ='<%# Eval ("manMap") %>' runat="server" CssClass="form-control" placeholder="Enter Mandri Location"></asp:TextBox>
                                </div>
                                <asp:Button ID="mandir_update" runat="server" Text="Update" CssClass="btn btn-primary me-2" OnClick ="mandir_update_Click"/>

                            
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>
    </form>

</asp:Content>

