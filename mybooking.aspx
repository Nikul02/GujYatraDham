<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="mybooking.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" Runat="Server">
        <div class="page-nav no-margin row">
        <div class="container">
           <h2>
               Our Bookings
           </h2>
        </div>
    </div>

    <div class="container ">
        <div class="w3-bar w3-black">
             <button class="w3-bar-item w3-button" onclick="openMenu('dharmshala')">Dharmshala</button>
            <button class="w3-bar-item w3-button" onclick="openMenu('puja')">Puja</button>
        </div>

       
    </div>



    <div id="dharmshala" class="menu mt-4" >
        <div class="destinations container-fluid">
            <div class="container">
              <div class="row">
    			<div class="col-md-12">
                    <asp:Repeater ID="readRoom_Booking" runat ="server">
                        <HeaderTemplate>
                                <table class="table  table-striped w-100 mh-25">
						    <thead class="thead-dark">
						      <tr class="text-center">
						      <td>Booking Id</td>
                                       <td>Name</td> 
                                     <td>Dharmshala</td>
                                  <td>Room Id </td>
                                   <td>Book Date</td>
                                     <td>Total Day</td>
                                       <td>Total Rooom</td>
						      </tr>
						    </thead>
						    <tbody>
         			
                        </HeaderTemplate>
                        <ItemTemplate >
                               		        <tr class="text-dark text-center ">
						            
						            <td><%# Eval ("bookingId") %></td>
                             
                                <td><%# Eval ("userName") %></td>
                                
                               
                                <td><%# Eval ("dharmName") %></td>
                                
                                
                                
                                <td><%# Eval ("catName") %></td>
                                
                               
                           
                                <td><%# Eval ("bookDate") %></td>
                                
                                
                             
                                <td><%# Eval ("totalDay") %></td>
                                
                               
                                <td><%# Eval ("totalRoom") %></td>
                              </tr>

				
                        </ItemTemplate>
                        <FooterTemplate >
                             </tbody>
						  </table>
                       
                        </FooterTemplate>
                    </asp:Repeater>
               		   			</div>
    		</div>
            </div>

        </div>

    </div>
    <div id="puja" class="menu mt-4" style="display: none">
        <div class="destinations container-fluid">
            <div class="container">
               <div class="row">
    			<div class="col-md-12">
                    <asp:Repeater ID="readPuja_Booking" runat ="server">
                        <HeaderTemplate>
                                <table class="table  table-striped w-100 mh-25">
						    <thead class="thead-dark">
						      <tr class="text-center">
						      <td>Booking Id</td>
                                       <td>Name</td> 
                                     <td>Puja Name</td>
                                   <td>Book Date</td>
                                </tr>
						    </thead>
						    <tbody>
         			
                        </HeaderTemplate>
                        <ItemTemplate >
                               		        <tr class="text-dark text-center ">
						            
						            <td><%# Eval ("bkpujaId") %></td>
                             
                                <td><%# Eval ("userName") %></td>
                                
                               
                                <td><%# Eval ("pujaName") %></td>
                                
                                
                                
                                <td><%# Eval ("bkDate") %></td>
                                
                               
                           
                              </tr>

				
                        </ItemTemplate>
                        <FooterTemplate >
                             </tbody>
						  </table>
                       
                        </FooterTemplate>
                    </asp:Repeater>
               		   			</div>
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

