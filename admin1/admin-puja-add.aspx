<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-puja-add.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
       <form runat="server" id="add_dharmshala">
            <div class="page-header">
                <h3 class="page-title">Add Puja </h3>
            </div>
            <div class="row">
                <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleInputName1">Puja Name</label>
                                <asp:TextBox ID="pujaName" runat="server" CssClass="form-control" placeholder="Enter Puja Name"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputName1">Puja Schedule</label>
                                <asp:TextBox ID="pujaSchedule" runat="server" CssClass="form-control" placeholder="Enter Puja Schedule"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                        <label>Upload Image</label>
                                        <asp:FileUpload ID="pujaImg" runat="server" CssClass="form-control"/>
                                    </div>

                            <div class="form-group">
                                <label for="exampleInputPassword4">Puja Price</label>
                                <asp:TextBox ID="pujaPrice" runat="server" CssClass="form-control" placeholder="Enter Puja Price"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail3">Puja Detail</label>
                                <asp:TextBox ID="pujaDetail" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Enter Puja Detail"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                        <label for="exampleTextarea1">Select Mandir</label>
                                        <asp:DropDownList ID="manId" runat ="server" CssClass ="form-control">
                                        </asp:DropDownList>
                                </div>

                            <asp:Button ID="puja_add" runat="server" Text="Submit" CssClass="btn btn-primary me-2" onclick="puja_add_Click"/>

                        </div>
                    </div>
                </div>
            </div>
    </form>

</asp:Content>

