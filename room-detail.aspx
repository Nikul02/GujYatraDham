<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="room-detail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" Runat="Server">
       <div class="page-nav no-margin row">
        <div class="container">
            <div class="row">
                <h2>Mandir Name</h2>
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i>Home</a></li>
                    <li><a href="mandir-detail.aspx?mId=<%= Convert.ToInt16 (Request.QueryString ["mId"]) %>"><i class="fas fa-angle-double-right"></i>Mandirs</a></li>
                    <li><a href="dharmshala-detail.aspx?mId=<%= Convert.ToInt16 (Request.QueryString ["mId"]) %>&dId=<%= Convert.ToInt16 (Request.QueryString ["dId"]) %>"><i class="fas fa-angle-double-right"></i>Dharmshalas</a></li>
                    <li><i class="fas fa-angle-double-right"></i>Rooms</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container ">
        <div class="w3-bar w3-black">
            <button class="w3-bar-item w3-button" onclick="openMenu('room')">Room</button>
            <button class="w3-bar-item w3-button" onclick="openMenu('review')">Review</button>
        </div>

        <div id="room" class="menu mt-4">
            <asp:Repeater ID="readRoomDetail" runat="server">
                <ItemTemplate>
                    <div class="about-us container-fluid">
                        <div class="container">

                            <div class="row natur-row no-margin w-100">
                                <div class="text-part col-md-6">
                                    <h2>Detail of <%# Eval ("catName") %></h2>
                                    <p><%# Eval ("rDetail") %></p>
                                </div>
                                <div class="image-part col-md-6">
                                    <img src="/photos/room/<%# Eval ("rImg") %>" alt="" height="400px" width="400px">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                              <a  class ="btn btn-primary mt-2" href="dharmshala-detail.aspx?mId=<%= Convert.ToInt16 (Request.QueryString ["mId"]) %>&dId=<%= Convert.ToInt16 (Request.QueryString["dId"])%>">Book Now</a>
                            </div>
                            <div class="col-6">
                                Rent :  <%# Eval ("rRant") %>
                            </div>

                            <div class="col-6">
                            </div>
                            <div class="col-6">
                                Total Room :  <%# Eval ("rTotal") %>
                            </div>

                        </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>


       <div id="review" class="menu mt-4" style="display: none">
       <div class="review container">
        <div class="container">
            <div class="row review-row">
             <asp:Repeater ID="read_room_review" runat="server">
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

                                    <asp:Button runat="server" CssClass="btn btn-success btn-sm" ID="add_room_review" OnClick="add_room_review_Click"  Style="position: relative; left: 50%; transform: translateX(-50%); font-size: 20px;" Text="Reveiw" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
     </form>
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

