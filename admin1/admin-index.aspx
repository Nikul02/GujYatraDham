<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-index.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
                    <div class="row">
                        <div class="col-sm-4 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <h5>Total Mandir</h5>
                                    <div class="row">
                                        <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                            <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                <h2 class="mb-0"><%= new ConnectionClass(Application).allScalar("select count(*) from Mandirs").ToString() %></h2>
                                                <p class="text-success ml-2 mb-0 font-weight-medium"></p>
                                            </div>
                                            <h6 class="text-muted font-weight-normal"></h6>
                                        </div>
                                        <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                           <i class="fa-solid fa-house icon-lg text-success "></i>
                                                                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <h5>Totla Users</h5>
                                    <div class="row">
                                        <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                            <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                <h2 class="mb-0"><%= new ConnectionClass(Application).allScalar("select count(*) from Users").ToString() %></h2>
                                                <p class="text-success ml-2 mb-0 font-weight-medium"></p>
                                            </div>
                                            <h6 class="text-muted font-weight-normal"> </h6>
                                        </div>
                                        <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                            <i class="fa-solid fa-user-secret icon-lg text-danger"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <h5>Dharmshalas</h5>
                                    <div class="row">
                                        <div class="col-8 col-sm-12 col-xl-8 my-auto">
                                            <div class="d-flex d-sm-block d-md-flex align-items-center">
                                                <h2 class="mb-0"><%= new ConnectionClass(Application).allScalar("select count(*) from Dharmshalas").ToString() %></h2>
                                                <p class="text-danger ml-2 mb-0 font-weight-medium"> </p>
                                            </div>
                                            <h6 class="text-muted font-weight-normal"></h6>
                                        </div>
                                        <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                                            <i class="fa-solid fa-warehouse text-success icon-lg"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row ">
                        <div class="col-12 grid-margin">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Mandirs</h4>
                                    <div class="table-responsive">
                        
                        <asp:Repeater ID="readMandirs" runat ="server">
                            <HeaderTemplate >
                                                <table class="table">
                                            <thead>
                                                <tr>
                                                    <th> Id</th>
                                                    <th> Mandir Name </th>
                                                    <th> Image</th>
                                                    <th> City<th>
                                                </tr>
                                            </thead>
                                            <tbody>
                        
                            </HeaderTemplate>
                            <ItemTemplate >
                                                        <tr>
                                                    <td> <%# Eval ("manId") %> </td>
                                                    <td>  <%# Eval ("manName") %>  </td>
                                                    <td>
                                                        <img src="../photos/mandir/<%# Eval ("manImg") %>" alt="image"  style="height :75px; width:75px; border-radius :10%;"/>
                                                        
                                                    </td>
                                                  
                                                              <td>  <%# Eval ("manCity") %> </td>
                                                    
                                                 </tr>
                        
                            </ItemTemplate>
                            <FooterTemplate >
                                                        </tbody>
                                        </table>
                        
                            </FooterTemplate>
                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>

