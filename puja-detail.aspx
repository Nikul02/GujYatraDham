<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="puja-detail.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" runat="Server">
    <div class="page-nav no-margin row">
        <div class="container">
            <div class="row">
                <h2>Mandir Name</h2>
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i>Home</a></li>
                    <li><a href="mandir-detail.aspx?mId=<%= Convert.ToInt16 (Request.QueryString ["mId"]) %>"><i class="fas fa-angle-double-right"></i>Mandirs</a></li>
                    <li><a href="#"><i class="fas fa-angle-double-right"></i>Puja</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container ">
        <div class="w3-bar w3-black">
            <button class="w3-bar-item w3-button" onclick="openMenu('puja')">Puja</button>
            <button class="w3-bar-item w3-button" onclick="openMenu('review')">Review</button>
        </div>

        <div id="puja" class="menu mt-4">
            <asp:Repeater ID="readPuja" runat="server">
                <ItemTemplate>
                    <div class="about-us container-fluid">
                        <div class="container">

                            <div class="row natur-row no-margin w-100">
                                <div class="text-part col-md-6">
                                    <h2>Detail of <%# Eval ("pujaName") %></h2>
                                    <p><%# Eval ("pujaDetail") %></p>
                                </div>
                                <div class="image-part col-md-6">
                                    <img src="/photos/puja/<%# Eval ("pujaImg") %>" alt="" height="400px" width="400px">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                              <button class="btn btn-primary mt-2" data-bs-toggle="modal" data-bs-target="#bookPuja">Book Now</button>
                            </div>
                            <div class="col-6">
                                Price :  <%# Eval ("pujaPrice") %>
                            </div>

                            <div class="col-6">
                            </div>
                            <div class="col-6">
                                Schedule :  <%# Eval ("pujaSchedule") %>
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
             <asp:Repeater ID="read_puja_review" runat="server">
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

                                    <asp:Button runat="server" CssClass="btn btn-success btn-sm" ID="add_puja_review" OnClick="add_puja_review_Click"  Style="position: relative; left: 50%; transform: translateX(-50%); font-size: 20px;" Text="Reveiw" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
     
    </div>




    </div>
    <!-- Modal -->
    <div class="modal fade" id="bookPuja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title fs-5 text-dark" id="exampleModalLabel">Booking Room</h5>
          <i class="fa fa-times" style="font-size:30px;" data-bs-dismiss="modal" aria-label="Close"></i>
      </div>
       
      <div class="modal-body">
        
  <div class="form-group">
    <label>Booking Date</label>
    <asp:TextBox CssClass="form-control" id="bkDate" TextMode="Date" runat="server" aria-describedby="emailHelp" placeholder="Enter Booking Date"></asp:TextBox>
  </div>
     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <asp:Button ID="book_puja" runat="server" CssClass="btn btn-primary"  OnClick="book_puja_Click" Text="Book"></asp:Button>
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

