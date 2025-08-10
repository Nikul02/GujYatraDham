<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/adminmaster.master" AutoEventWireup="true" CodeFile="admin-dharmshala-detail.aspx.cs" Inherits="admin1_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">

    <style>
        td
        {
            color:white;
           
        }
    </style>


    <form runat="server" id="puja_view">

        <div class="page-header">
            <h3 class="page-title">Dharmshala Detail</h3>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <asp:Repeater ID="dharmRepeater" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <th width="10%">Id </th>
                                        <td width="90%"><%# Eval("dharmId") %></td>
                                    </tr>

                                    <tr>
                                        <th>Name </th>
                                        <td><%# Eval("dharmName") %></td>
                                    </tr>

                                    <tr>
                                        <th>Photo</th>
                                        <td>
                                            <img src="../photos/dharmshala/<%# Eval("dharmImg") %>" style="height: 100px; width: 100px; border-radius: 0%;" /></td>
                                    </tr>

                                    <tr>
                                        <th>City </th>
                                        <td><%# Eval("dharmCity") %></td>
                                    </tr>
                                    <tr>
                                        <th>Map </th>
                                        <td> <iframe  src="<%# Eval("dharmMap") %>"  height="200" width="100%" frameborder="0" style="border:0" allowfullscreen></iframe></td>
                                    </tr>

                                    <tr>
                                        <th>Detail </th>
                                        <td><p style="overflow:scroll;height:100px;width:800px;"><%# Eval("dharmDetail") %></p></td>
                                    </tr>

                                    <tr>
                                        <th>Contact </th>
                                        <td><%# Eval("dharmContact") %></td>
                                    </tr>

                                    <tr>
                                        <th>Address</th>
                                        <td><%# Eval("dharmAdd") %></td>
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

