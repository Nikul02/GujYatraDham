<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="mandir-detail.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" runat="Server">
   
     <div class="page-nav no-margin row">
        <div class="container">
            <div class="row">
                <h2>Mandir Name</h2>
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i>Home</a></li>
                    <li><a href="mandir.aspx"><i class="fas fa-angle-double-right"></i>Mandirs</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container-fluid ">
        <div class="container">
        <div class="w3-bar w3-black">
            <button class="w3-bar-item w3-button" onclick="openMenu('mandir')">Mandir</button>
            <button class="w3-bar-item w3-button" onclick="openMenu('gallery')">Gallery</button>
            <button class="w3-bar-item w3-button" onclick="openMenu('review')">Review</button>
            <button class="w3-bar-item w3-button" onclick="openMenu('dharmshala')">Dharmshala</button>
            <button class="w3-bar-item w3-button" onclick="openMenu('puja')">Puja</button>
        </div>

        <div id="mandir" class="menu mt-4">
            <asp:Repeater ID="readMandir" runat="server">
                <ItemTemplate>
                    <div class="about-us container-fluid">
                        <div class="container">

                            <div class="row natur-row no-margin w-100">
                                <div class="text-part col-md-6">
                                    <h2>Detail of <%# Eval ("manName") %></h2>
                                    <p><%# Eval ("manDetail") %></p>
                                </div>
                                <div class="image-part col-md-6">
                                    <img src="/photos/mandir/<%# Eval ("manImg") %>" alt="" height="400px" width="400px">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                            </div>
                            <div class="col-6">
                                City :  <%# Eval ("manCity") %>
                            </div>

                            <div class="col-6">
                            </div>
                            <div class="col-6">
                                Address :  <%# Eval ("manAdd") %>
                            </div>

                        </div>


                        <div style="margin-top: 0px;" class="row no-margin mt-5">

                            <iframe style="width: 100%" src="<%# Eval ("manMap") %>" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>


                        </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
            </div>
    </div>

    <div id="gallery" class="menu mt-4" style="display: none">
        <div id="portfolio" class="gallery">
            <div class="container">
                &nbsp;&nbsp; 
          <div class="row">
              <asp:Repeater ID="readGallery" runat="server">
                  <ItemTemplate>
                      <div class="gallery_product col-lg-3 col-md-3 col-sm-4 col-xs-6 filter hdpe">
                          <img src="/photos/gallery/<%#Eval ("galImg") %>" class="img-responsive">
                      </div>
                  </ItemTemplate>
              </asp:Repeater>

          </div>
            </div>


        </div>

    </div>
    <div id="review" class="menu mt-4" style="display: none">
          <div class="review container">
        <div class="container">
            <div class="row review-row">
            <asp:Repeater id="read_mandir_review" runat="server">
                <ItemTemplate >
                    <div class="col-md-6">
                    <div class="review-col">
                        <div class="profil">
                         <img src="photos/user/profile/<%# Eval ("img") %>" alt="" height="125px" width="125px">
                        </div>
                        <div class="review-detail">
                         <h4><%# Eval ("userName") %></h4>
                            <p><%# Eval ("userComm") %></p>
                            <h6><%# Eval ("revDate") %></h6>
                          </div>
                    </div>
                </div>

                </ItemTemplate>
            </asp:Repeater>
            </div>
        </div>
    </div>
   
        <form runat="server" id="mandirs">
            <div class="row contact-rooo no-margin ">
                <div class="container text-dark" style="font-size: 20px;">
                    <div class="row col-12">


                        <div style="padding: 20px; position: relative; left: 50%; transform: translateX(-50%);" class="col-sm-10">
                            <div class="row cont-row">
                                <asp:TextBox ID="comment" runat="server" placeholder="Enter Review " CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div style="margin-top: 10px;" class="row">
                                <div class="col-sm-12">

                                    <asp:Button runat="server" CssClass="btn btn-success btn-sm" OnClick="add_review_Click" ID="add_review" Style="position: relative; left: 50%; transform: translateX(-50%); font-size: 20px;" Text="Reveiw" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </form>

    </div>

    <div id="dharmshala" class="menu mt-4" style="display: none">
        <div class="destinations container-fluid">
            <div class="container">
                <div class="dest-row row">
                    <asp:Repeater ID="readDharmshala" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-6">
                                <div class="dest-col">
                                    <div class="dest-img">
                                        <img src="photos/dharmshala/<%# Eval ("dharmImg") %>" alt="">
                                    </div>
                                    <h3><%# Eval ("dharmName") %></h3>

                                    <a class="btn btn-outline-success " href="dharmshala-detail.aspx?dId=<%# Eval ("dharmId") %>&mId=<%# Eval ("manId") %>">View More</a>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>

        </div>

    </div>
    <div id="puja" class="menu mt-4" style="display: none">
        <div class="destinations container-fluid">
            <div class="container">
                <div class="dest-row row">
                    <asp:Repeater ID="readPuja" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-6">
                                <div class="dest-col">
                                    <div class="dest-img">
                                        <img src="/photos/puja/<%#Eval ("pujaImg") %>" alt="">
                                    </div>
                                    <h3><%# Eval ("pujaName") %></h3>
                                    <a class="btn btn-outline-success " href="puja-detail.aspx?mId=<%= Convert.ToInt16 (Request.QueryString ["mId"])%>&pId=<%# Eval ("pujaId") %>">View More</a>

                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>

        </div>
    </div>



    <script>

        function openMenu(name) {
            var i;
            var x = document.getElementsByClassName("menu");
            for (i = 0 ; i < x.length; i++) {
                x[i].style.display = "none";
            }
            document.getElementById(name).style.display = "block";
        }

    </script>
</asp:Content>


