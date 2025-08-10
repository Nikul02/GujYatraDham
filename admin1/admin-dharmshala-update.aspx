<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-dharmshala-update.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
     <form runat="server" id="updatedharmshala">
                   <div class="page-header">
                    <h3 class="page-title">Update Dharmshala </h3>
                </div>
                <div class="row">
                    <div class="col-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <asp:Repeater ID="update_dharmshala" runat="server" OnItemDataBound="update_dharmshala_ItemDataBound">
                                    <ItemTemplate >
                                             <div class="form-group">
                                        <label for="exampleInputName1">Dharmshala Name</label>
                                        <asp:TextBox id="dharmName" Text='<%# Eval("dharmName")%>' runat="server"  CssClass ="form-control"  placeholder="Enter Dharmshala Name"></asp:TextBox>
                                    </div>
                               <div class="form-group">
                                        <label>Upload Image</label>
                                   <img src="../photos/dharmshala/<%# Eval("dharmImg") %>" style="height :50px; width:50px;" />
                                        <asp:FileUpload ID="dharmImg" runat="server" CssClass="form-control"/>
                                   <asp:HiddenField ID="oldImg" runat="server" />
                                    </div>
   
                                <div class="form-group">
                                        <label for="exampleInputPassword4">Dharmshala City</label>
                                          <asp:TextBox id="dharmCity" Text='<%# Eval("dharmCity")%>' runat="server"  CssClass ="form-control"  placeholder="Enter Dharmshala City"></asp:TextBox>
                                    </div>
                                    
                                <div class="form-group">
                                        <label for="exampleInputCity1">Dharmshala Map</label>
                                          <asp:TextBox id="dharmMap"  Text='<%# Eval("dharmMap")%>' runat="server"  CssClass ="form-control"  placeholder="Enter Dharmshala Location"></asp:TextBox>
                                    </div>
                                    
                                
                                    <div class="form-group">
                                        <label for="exampleInputEmail3">Dharmshala Detail</label>
                                        <asp:TextBox ID="dharmDetail" Text='<%# Eval("dharmDetail")%>' runat ="server" TextMode="MultiLine" CssClass="form-control" placeholder="Enter Dharmshala Detail"></asp:TextBox>
                                    </div>
                                    
                                   <div class="form-group">
                                        <label for="exampleInputName1">Dharmshala Contact</label>
                                        <asp:TextBox id="dharmContact" Text='<%# Eval("dharmContact")%>' runat="server"  CssClass ="form-control"  placeholder="Enter Dharmshala Contact"></asp:TextBox>
                                    </div>
                                

                                <div class="form-group">
                                        <label for="exampleTextarea1">Dharmshala Address</label>
                                        <asp:TextBox ID="dharmAdd" Text='<%# Eval("dharmContact")%>' runat ="server" TextMode="MultiLine" CssClass ="form-control " placeholder="Enter Dharmshala Address"></asp:TextBox>      
                                </div>

                                <div class="form-group">
                                        <label for="exampleTextarea1">Select Mandir</label>
                                        <asp:DropDownList ID="manId" runat ="server" CssClass ="form-control">
                                        </asp:DropDownList>
                                </div>

                                 <asp:Button ID="dharmshala_update" runat ="server" Text ="Update" CssClass="btn btn-primary me-2" OnClick ="dharmshala_update_Click"/>
                                   
                            </div>
 
                                    </ItemTemplate>
                                </asp:Repeater>
                                                      </div>
                    </div>
                  </div>
                </form>

</asp:Content>

