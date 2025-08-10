<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="about_us.aspx.cs" Inherits="about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" Runat="Server">
    
    <div class="page-nav no-margin row">
  <div class="container">
            <div class="row">
                <h2>About Our Charity</h2>
                <ul>
                    <li> <a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="about_us.aspx"><i class="fas fa-angle-double-right"></i> About Us</a></li>
                </ul>
            </div>
        </div>
    </div>
    
        <div class="about-us container-fluid">
    <div class="container">

        <div class="row natur-row no-margin w-100">
            <div class="text-part col-md-6">
                           <p>Launched in January 2020, Gujyatradham.com is one of the fastest-growing portals for online stay booking at major pilgrimage destinations across Gujrat. Our main focus is to make the ‘Yatra’ simple and carefree for our guests. This will help you devote much of your time to praying to gods instead of spending it on searching for Dharamshala or hygienic food and worrying about the availability of rooms. With Gujyatradham.com you can have all these facilities by booking from home itself. You can see the photographs of rooms available along with information about the location and the facilities available there within before booking. Most of our partner Dharamshalas are located near the temples. This makes the journey easy for you by reducing travel time. Bhojanshala facilities are also available within the premises of the Dharamshalas; you can have hygienic food easily there and avoid comprising on food by going to a fast-food restaurant. We also provide services for Kendras where you can stay and practice Yoga, Meditation and Naturopathy techniques. Such Kendras are situated in the midst of nature away from the hustle and bustle of a city.</p>

                <p>As of now, we have around 2300+ Dharamshalas and Ashrams at 260+ major destinations across India. We are incrementally improving our network to provide the best services to Yatris at every major pilgrimage destination in Gujrat. We believe that you along with your family will be very happy spiritually and mentally by staying at such serene places. Your support and feedback will motivate us and help in providing the best services. </p>
            </div>
            <div class="image-part col-md-6">
                <img src="assets/images/about.jpg" alt="">
            </div>
        </div>
    </div>
    </div>
   
    
             <!--  *************************Our Team Start Here ************************** -->
        
        <div class="our-team">
           <div class="container">
       
                 <div class="row session-title">
                    <h2>What We Offer</h2>
       
                 </div>  
            
            <div class="row">
                     <div class="col-md-3 col-sm-6">
                        <div class="card-1 team-member">
                            <asp:Repeater ID="readMandir" runat="server">
                                <ItemTemplate >
                                <a href="mandir-detail.aspx?mId=<%# Eval ("manId") %>" >  <img src="photos/mandir/<%# Eval ("manImg")%>" alt="Team Member 1"></a>
                                       <p><b>Mandir</b></p>
                           </ItemTemplate>
                            </asp:Repeater>
                           </div>
                     </div>
                    
                       <div class="col-md-3 col-sm-6">
                        <div class="card-1 team-member">
                            <asp:Repeater ID="readDharmshala" runat="server">
                                <ItemTemplate >
                                <a href="dharmshala-detail.aspx?dId=<%# Eval ("dharmId") %>" >  <img src="photos/dharmshala/<%# Eval ("dharmImg")%>" alt="Team Member 1"></a>
                                       <p><b>Dharmshala</b></p>
                           </ItemTemplate>
                            </asp:Repeater>
                           </div>
                     </div>
                        <div class="col-md-3 col-sm-6">
                        <div class="card-1 team-member">
                            <asp:Repeater ID="readPuja" runat="server">
                                <ItemTemplate >
                                <a href="puja-detail.aspx?pId=<%# Eval("pujaId") %>" >  <img src="photos/puja/<%# Eval ("pujaImg")%>" alt="Team Member 1"></a>
                                       <p><b>Puja</b></p>
                           </ItemTemplate>
                            </asp:Repeater>
                          </div>
                     </div>
                        <div class="col-md-3 col-sm-6">
                        <div class="card-1 team-member">
                                
                            <asp:Repeater ID="readRoom" runat="server">
                                <ItemTemplate >
                                 <a href="room-detail.aspx?rId=<%# Eval ("rId") %>" >  <img src="photos/room/<%# Eval ("rImg")%>" alt="Team Member 1"></a>
                                       <p><b>Room</b></p>
                          
                           </ItemTemplate>
                            </asp:Repeater>
                        </div>
                     </div>
                 </div>
           </div>
          
        </div>
        
  <!-- ######## Our Team End ####### -->  
</asp:Content>

