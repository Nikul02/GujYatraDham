<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" runat="Server">


    <div class="page-nav no-margin row">
        <div class="container">
            <div class="row">
                <h2>Our Gallery</h2>
                <ul>
                    <li><a href="index.aspx"><i class="fas fa-home"></i>Home</a></li>
                    <li><i class="fas fa-angle-double-right"></i>Gallery</li>
                </ul>
            </div>
        </div>
    </div>

    <!--  ************************* Gallery Starts Here ************************** -->
    <div id="portfolio" class="gallery">
        <div class="container">

            <div class="row">



                <br />




                <!--
<asp:Repeater  ID="g" runat ="server">
    <ItemTemplate>
            <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter spray">
                <img src="/photos/gallery/<%#Eval ("galImg") %>" class="img-responsive">
            </div>

    </ItemTemplate>
</asp:Repeater>
        
            -->
            </div>
            <!-- display Mandir -->
            <div class="row">
                <asp:Repeater ID="man" runat="server">
                    <ItemTemplate>
                        <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter spray">
                            <img src="/photos/mandir/<%#Eval ("manImg") %>" class="img-responsive">
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
  <!-- display Dharmshala -->
            <div class="row">
                <asp:Repeater ID="dharm" runat="server">
                    <ItemTemplate>
                        <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter spray">
                            <img src="/photos/dharmshala/<%#Eval ("dharmImg") %>" class="img-responsive">
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
              <!-- display Gallery -->
            <div class="row">
                <asp:Repeater ID="gal" runat="server">
                    <ItemTemplate>
                        <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter spray">
                            <img src="/photos/room/<%#Eval ("rImg") %>" class="img-responsive">
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>
 
             <!-- display Puja -->
            <div class="row">
                <asp:Repeater ID="puja" runat="server">
                    <ItemTemplate>
                        <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter spray">
                            <img src="/photos/puja/<%#Eval ("pujaImg") %>" class="img-responsive">
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>

        </div>
    </div>


    </div>
        <!-- ######## Gallery End ####### -->

</asp:Content>

