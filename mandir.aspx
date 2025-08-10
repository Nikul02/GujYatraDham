    <%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="mandir.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" runat="Server">

    <!--  ************************* Page Title Starts Here ************************** -->
    <div class="page-nav no-margin row">
        <div class="container">
            <div class="row">
                <h2>Our Mandirs</h2>
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i>Home</a></li>
                    <li><i class="fas fa-angle-double-right"></i>Mandir</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="destinations container-fluid">
                <div class="container">
            <div class="dest-row row">
                    <asp:Repeater ID="mandir" runat="server">
            <ItemTemplate >
    
                <div class="col-lg-4 col-md-6">
                    <div class="dest-col">
                        <div class="dest-img">
                            <img src="photos/mandir/<%#Eval ("manImg") %>" alt="" >
                        </div>
                        <h3><%# Eval ("manName") %></h3>

                        <a href="mandir-detail.aspx?mId=<%# Eval ("manId") %>" class="btn btn-outline-success" >
                            View More
                        </a>
                        
                    </div>
                </div>
                    </ItemTemplate>
        </asp:Repeater>
        
            </div>
        </div>

        
    </div>
</asp:Content>

