<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-mandir-add.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
     <form runat="server" id="add_mandir">
        <div class="page-header">
            <h3 class="page-title">Add Mandir </h3>
        </div>
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputName1">Mandri Name</label>
                            <asp:TextBox ID="manName" runat="server" CssClass="form-control" placeholder="Enter Mandri Name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Upload Image</label>
                            <asp:FileUpload ID="manImg" runat="server" CssClass="form-control" />
                        </div>

                        <div class="form-group">
                            <label for="exampleTextarea1">Mandri Address</label>
                            <asp:TextBox ID="manAdd" runat="server" TextMode="MultiLine" CssClass="form-control " placeholder="Enter Mandri Address"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail3">Mandri Detail</label>
                            <asp:TextBox ID="manDetail" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Enter Mandri Detail"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword4">Mandri City</label>
                            <asp:TextBox ID="manCity" runat="server" CssClass="form-control" placeholder="Enter Mandri City"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputCity1">Mandri Map</label>
                            <asp:TextBox ID="manMap" runat="server" CssClass="form-control" placeholder="Enter Mandri Location"></asp:TextBox>
                        </div>
                        <asp:Button ID="mandir_add" runat="server" Text="Submit" CssClass="btn btn-primary me-2" OnClick="mandir_add_Click" />


                    </div>
                </div>
            </div>
        </div>
    </form>

</asp:Content>

