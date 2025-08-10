<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-puja-detail.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <style>
        td
        {
            color:white;
           
        }
    </style>


    <form runat="server" id="puja_view">

        <div class="page-header">
            <h3 class="page-title">Puja Detail</h3>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="readPujaDetail" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-striped">
                                        <thead>
                                            
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <th width="10%">Puja Id</th>
                                        <td><%# Eval("pujaId") %></td>
                                    </tr>

                                    <tr>
                                        <th>Puja Name</th>
                                        <td><%# Eval("pujaName") %></td>
                                    </tr>

                                    
                                    <tr>
                                        <th>Schedule </th>
                                        <td><%# Eval("pujaSchedule") %></td>
                                    </tr>

                                    <tr>
                                        <th>Image</th>
                                        <td>
                                            <img src="../photos/puja/<%# Eval("pujaImg") %>" style="height: 100px; width: 100px; border-radius: 0%;" /></td>
                                    </tr>

                                    <tr>
                                        <th>Price </th>
                                        <td><%# Eval("pujaPrice") %></td>
                                    </tr>

                                    <tr>
                                        <th>Detail </th>
                                        <td><%# Eval("pujaDetail") %></td>
                                    </tr>

                                    <tr>
                                        <th>Mandir Name</th>
                                        <td><%# Eval("manName") %></td>
                                    </tr>

                              
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                                        </table>
                                </FooterTemplate>
                            </asp:Repeater>


                        </div>
                    </div>
                </div>
            </div>
        </div>


    </form>

</asp:Content>

