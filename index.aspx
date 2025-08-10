    <%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" runat="Server">

    <div class="slider container-fluid"> 
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                        <img src="photos/slider1.jpg" class="d-block w-100" alt="...">
                        <div class="detail-card">
                        </div>
                                 </div>
                <div class="carousel-item">
                        <img src="photos/mandir/dwarka-mandir-1.jpg" class="d-block w-100" alt="...">
                        <div class="detail-card">
                        </div>

                 </div>

            </div>
            <a
                class="carousel-control-prev"
                href="#carouselExampleIndicators"
                role="button"
                data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a
                class="carousel-control-next"
                href="#carouselExampleIndicators"
                role="button"
                data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!-- Slideshow container -->
    <!-- ################# Why Choos US Starts Here #######################--->

    <div class="why-choos-us container-fluid">
        <div class="container">
            <div class="session-title">
                <h2>Why Choos Us ?</h2>
            </div>
            <div class="why-ro row">
                <div class="col-lg-6 col-md-6">
                    <div class="col-card">
                        <div class="icon">
                            <i class="far fa-calendar-plus"></i>
                        </div>
                        <div class="detail">
                            <h4>Easy Booking</h4>
                            <p>An online booking system is a piece of a software used for reservation management.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="col-card">
                        <div class="icon">
                            <i class="fas fa-dollar-sign"></i>
                        </div>
                        <div class="detail">
                            <h4>Value for Money</h4>
                            <p>Best value for money is defined as the most advantageous combination of cost, quality and sustainability to meet customer requirements.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="col-card">
                        <div class="icon">
                            <i class="fas fa-car"></i>
                        </div>
                        <div class="detail">
                            <h4>Religious Places</h4>
                            <p>A religious place is a location that is designated as sacred or holy by a particular religion and is used for religious ceremonies and practices.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="col-card">
                        <div class="icon">
                            <i class="far fa-comments"></i>
                        </div>
                        <div class="detail">
                            <h4>24 x 7 Support</h4>
                            <p>24/7 customer support is a service that provides customers with assistance at all times of the day, regardless of time zone.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- ################# Popular Packages Starts Here #######################--->

     <div class="destinations container-fluid">
        <div class="container">
            <div class="session-title">
                <h2>Most Visited Places</h2>
              </div>
            <div class="dest-row row">
           <asp:Repeater ID="readMandir" runat="server">
    <ItemTemplate >
             <div class="col-lg-4 col-md-6">
                    <div class="dest-col">
                        <div class="dest-img">
                            <img src="photos/mandir/<%# Eval ("manImg") %>" alt="">
                        </div>
                        <h3><%# Eval ("manName") %></h3>

                        <a class="btn btn-outline-success" href="mandir-detail.aspx?mId=<%# Eval ("manId") %>">View More</a>
                    </div>
                </div>
                    </ItemTemplate>
                </asp:Repeater>
                
            </div>
        </div>

    </div>


    <!--################### Destinations Starts Here #######################--->

    <div class="destinations container-fluid">
        <div class="container">
            <div class="session-title">
                <h2>Puja Rituals</h2>
            
            </div>
            <div class="dest-row row">
                <asp:Repeater ID="readPuja" runat="server">
                    <ItemTemplate >
                        <div class="col-lg-4 col-md-6">
                    <div class="dest-col">
                        <div class="dest-img">
                            <img src="photos/puja/<%# Eval ("pujaImg") %>" alt="">
                        </div>
                        <h3><%# Eval ("pujaName") %></h3>

                        <a class="btn btn-outline-success" href="puja-detail.aspx?pId=<%# Eval ("pujaId") %>">View More</a>
                    </div>
                </div>
                    </ItemTemplate>
                </asp:Repeater>
                
            </div>
        </div>

    </div>


    <!--################### Tour Type Starts Here #######################--->
 

    <!--################### Tour Review Starts Here #######################--->

    <div class="review container-fluid">
        <div class="container">
            <div class="session-title">
                <h2>What people say about Us</h2>
            </div>
            <div class="row review-row">
                <asp:Repeater ID="readAllReview" runat="server">
                    <ItemTemplate>
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


    
</asp:Content>

