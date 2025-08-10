<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master"  ValidateRequest="false" EnableEventValidation="false" AutoEventWireup="true" CodeFile="admin-dharmshala-add.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
        <form runat ="server" id="add_dharmshala">
                <div class="page-header">
                    <h3 class="page-title">Add Dharmshala </h3>
                </div>
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                    <div class="form-group">
                                        <label for="exampleInputName1">Dharmshala Name</label>
                                        <asp:TextBox id="dharmName" runat="server"  CssClass ="form-control"  placeholder="Enter Dharmshala Name"></asp:TextBox>
                                    </div>
                               <div class="form-group">
                                        <label>Upload Image</label>
                                        <asp:FileUpload ID="dharmImg" runat="server" CssClass="form-control"/>
                                    </div>
   
                                <div class="form-group">
                                        <label for="exampleInputPassword4">Dharmshala City</label>
                                          <asp:TextBox id="dharmCity" runat="server"  CssClass ="form-control"  placeholder="Enter Dharmshala City"></asp:TextBox>
                                    </div>
                                    
                                <div class="form-group">
                                        <label for="exampleInputCity1">Dharmshala Map</label>
                                          <asp:TextBox id="dharmMap" runat="server"  CssClass ="form-control"  placeholder="Enter Dharmshala Location"></asp:TextBox>
                                    </div>
                                    
                                
                                    <div class="form-group">
                                        <label for="exampleInputEmail3">Dharmshala Detail</label>
                                        <asp:TextBox ID="dharmDetail" runat ="server" TextMode="MultiLine" CssClass="form-control" placeholder="Enter Dharmshala Detail"></asp:TextBox>
                                    </div>
                                    
                                   <div class="form-group">
                                        <label for="exampleInputName1">Dharmshala Contact</label>
                                        <asp:TextBox id="dharmContact" runat="server"  CssClass ="form-control"  placeholder="Enter Dharmshala Contact"></asp:TextBox>
                                    </div>
                                

                                <div class="form-group">
                                        <label for="exampleTextarea1">Dharmshala Address</label>
                                        <asp:TextBox ID="dharmAdd" runat ="server" TextMode="MultiLine" CssClass ="form-control " placeholder="Enter Dharmshala Address"></asp:TextBox>      
                                </div>

                                <div class="form-group">
                                        <label for="exampleTextarea1">Select Mandir</label>
                                        <asp:DropDownList ID="manId" runat ="server" CssClass ="form-control">
                                        </asp:DropDownList>
                                </div>

                                    <asp:Button ID="dharmshala_add" runat ="server" Text ="Submit" CssClass="btn btn-primary me-2" OnClick ="dharmshala_add_Click" />
                                   
                            </div>
                        </div>
                    </div>
                  </div>
                </form>

</asp:Content>

