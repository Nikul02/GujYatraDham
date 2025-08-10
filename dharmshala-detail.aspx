<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="dharmshala-detail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" runat="Server">
    <div class="page-nav no-margin row">
        <div class="container">
            <div class="row">
                <h2>Dharmshala Detail</h2>
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i>Home</a></li>
                    <li><a href="mandir-detail.aspx?mId=<%= Convert.ToInt16 (Request.QueryString ["mId"]) %>"><i class="fas fa-angle-double-right"></i>Mandirs</a></li>
                    <li><a href="dharmshala-detail.aspx?mId=<%= Convert.ToInt16 (Request.QueryString ["mId"]) %>&dId=<%= Convert.ToInt16 (Request.QueryString ["dId"])%>"><i class="fas fa-angle-double-right"></i>Dharmshala</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container-fluid ">
        <div class="container ">
        <div class="w3-bar w3-black">
            <button class="w3-bar-item w3-button" onclick="openMenu('dharmshala')">Dharmshala</button>
                   <button class="w3-bar-item w3-button" onclick="openMenu('room')">Rooms</button>
       
                 <button class="w3-bar-item w3-button" onclick="openMenu('review')">Review</button>
        </div>

        <div id="dharmshala" class="menu mt-4">
            <asp:Repeater ID="readDharmshala" runat="server">
                <ItemTemplate>
                    <div class="about-us container-fluid">
                        <div class="container">

                            <div class="row natur-row no-margin w-100">
                                <div class="text-part col-md-6">
                                    <h2>Detail of <%# Eval ("dharmName") %></h2>
                                    <p><%# Eval ("dharmDetail") %></p>
                                </div>
                                <div class="image-part col-md-6">
                                    <img src="/photos/dharmshala/<%# Eval ("dharmImg") %>" alt="" height="400px" width="400px">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                            </div>
                            <div class="col-6">
                                City :  <%# Eval ("dharmCity") %>
                            </div>

                            <div class="col-6">
                                    <button class="btn btn-primary mt-2" data-bs-toggle="modal" data-bs-target="#book">Book Now</button>
                            </div>
                            <div class="col-6">
                                Address :  <%# Eval ("dharmAdd") %>
                            </div>
                            <div class="col-6">
                            </div>
                            <div class="col-6">
                                Contact Number :  <%# Eval ("dharmContact") %>
                            </div>

                        </div>


                        <div style="margin-top: 0px;" class="row no-margin mt-5">

                            <iframe style="width: 100%" src="<%# Eval ("dharmMap") %>" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>


                        </div>
                </ItemTemplate>
            </asp:Repeater>

        </div>
            </div>
    </div>
    
      <div id="room" class="menu mt-4" style="display: none">
        <div class="destinations container-fluid">
            <div class="container">
                <div class="dest-row row">
                    <asp:Repeater ID="readRoom" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-6">
                                <div class="dest-col">
                                    <div class="dest-img">
                                        <img src="photos/room/<%# Eval ("rImg") %>" alt="">
                                    </div>
                                    <h3><%# Eval ("catName") %></h3>
                                    
                                    <a class="btn btn-outline-success " href="room-detail.aspx?rId=<%# Eval ("rId") %>&dId=<%# Eval ("dharmId") %>&mId=<%= Convert.ToString (Request.QueryString ["mId"])%>&rCatId=<%# Eval ("rCatId") %>">View More</a>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>

        </div>

    </div>
  


    <div id="review" class="menu mt-4" style="display: none">
    <div class="review container ">
        <div class="container">
            <div class="row review-row">
                   <asp:Repeater ID="read_dharmshala_review" runat="server">
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
   </div>
          <form id="bookingroom" runat="server">
     <%--   <div class="row contact-rooo no-margin ">
                <div class="container text-dark" style="font-size: 20px;">
                    <div class="row col-12">


                        <div style="padding: 20px; position: relative; left: 50%; transform: translateX(-50%);" class="col-sm-10">
                            <div class="row cont-row">
                                <asp:TextBox ID="comment" runat="server" ValidationGroup="reviewadd" placeholder="Enter Review " CssClass="form-control input-sm" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div style="margin-top: 10px;" class="row">
                                <div class="col-sm-12">

                                    <asp:Button runat="server" ValidationGroup="reviewadd" CssClass="btn btn-success btn-sm" OnClick ="add_dharmshala_review_Click" ID="add_dharmshala_review" Style="position: relative; left: 50%; transform: translateX(-50%); font-size: 20px;" Text="Reveiw" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
   
    </div>--%>

 
<!-- Modal -->
<div class="modal fade" id="book" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title fs-5 text-dark" id="exampleModalLabel">Booking Room</h5>
          <i class="fa fa-times" style="font-size:30px;" data-bs-dismiss="modal" aria-label="Close"></i>
      </div>
   
      <div class="modal-body">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate> 
  <div class="form-group">
    <label>Room Type</label>
    <asp:DropDownList CssClass="form-control" ValidationGroup="booking" id="bkrtype" runat="server" AutoPostBack="true" OnSelectedIndexChanged="bkrtype_SelectedIndexChanged" >

    </asp:DropDownList>
     </div>


  <div class="form-group">
    <label>Booking Date</label>
    <asp:TextBox CssClass="form-control" id="bkDate" ValidationGroup="booking" TextMode="Date" runat="server" aria-describedby="emailHelp" placeholder="Enter Booking Date"></asp:TextBox>
  </div>
              <div class="form-group">
    <label>Total Booking Days</label>
    <asp:TextBox CssClass="form-control" id="bkDay" ValidationGroup="booking" Text="0" TextMode="Number" runat="server" aria-describedby="emailHelp" placeholder="Enter Total Day" AutoPostBack="true" OnTextChanged="bkDay_TextChanged"></asp:TextBox>
  </div>
           <div class="form-group">
    <label>Total Available Room</label>
    <asp:TextBox CssClass="form-control" id="taroom" ValidationGroup="booking" runat="server" Enabled="false">
    </asp:TextBox>
     </div>
          
                   <div class="form-group">
    <label>Total Booking Rooms</label>
    <asp:TextBox CssClass="form-control" id="bktroom" ValidationGroup="booking" TextMode="Number" runat="server" Text="0" aria-describedby="emailHelp" AutoPostBack="true" OnTextChanged="bktroom_TextChanged" placeholder="Enter Total Rooms"></asp:TextBox>
  </div>
                          
          <div class="form-group">
    <label>Total Rent</label>
    <asp:TextBox CssClass="form-control" id="totalRent" ValidationGroup="booking" runat="server" Enabled="false">
    </asp:TextBox>
     </div>
              </ContentTemplate>
          </asp:UpdatePanel>
                 
             
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <asp:Button ID="bookroom" runat="server" ValidationGroup="booking" CssClass="btn btn-primary" OnClick="bookroom_Click" Text="Book"></asp:Button>
      </div>
</form>

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


