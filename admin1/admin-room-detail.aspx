<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-room-detail.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
  <style>
        td
        {
            color:white;
           
        }
    </style>


    <form runat="server" id="puja_view">

        <div class="page-header">
            <h3 class="page-title">Room Detail</h3>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="readRoom" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-striped">
                                        <thead>
                                            
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <th width="10%">Room Id</th>
                                        <td><%# Eval("rId") %></td>
                                    </tr>

                                    <tr>
                                        <th>Detail</th>
                                        <td><%# Eval("rDetail") %></td>
                                    </tr>

                                    
                                 
                                    <tr>
                                        <th>Image</th>
                                        <td>
                                            <img src="../photos/room/<%# Eval("rImg") %>" style="height: 100px; width: 100px; border-radius: 0%;" /></td>
                                    </tr>

                                    <tr>
                                        <th>Price </th>
                                        <td><%# Eval("rRant") %></td>
                                    </tr>

                                    <tr>
                                        <th>Dharmshala </th>
                                        <td><%# Eval("dharmName") %></td>
                                    </tr>

                                    <tr>
                                        <th>Type</th>
                                        <td><%# Eval("catName") %></td>
                                    </tr>


                                    <tr>
                                        <th>Total Room</th>
                                        <td><%# Eval("rTotal") %></td>
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

