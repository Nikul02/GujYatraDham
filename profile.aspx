  <%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" Runat="Server">
    
       <div class="page-nav no-margin row">
 <div class="container ">        <section class="ftco-section ">
			<div class="container">
				<div class="row">
    			<div class="col-md-12">
                    <asp:Repeater ID="readUser" runat ="server">
                        <HeaderTemplate>
                                <table class="table w-100 mh-25">
						    <thead class="thead-dark">
						      <tr class="text-center">
						        <th colspan=2>Profile Detail</th>
						      </tr>
						    </thead>
						    <tbody>
         			
                        </HeaderTemplate>
                        <ItemTemplate >
                               		        <tr class="text-dark">
						            <td>User ID</td>
						            <td><%# Eval ("userId") %></td>
                                </tr>

                                <tr class="text-dark">
                                <td>Name</td>
                                <td><%# Eval ("userName") %></td>
                                
                                <tr class="text-dark">
                                <td>Gender</td>
                                <td><%# Eval ("userGender") %></td>
                                
                                <tr class="text-dark">
                                <td>City </td>
                                <td><%# Eval ("userCity") %></td>
                                
                                <tr class="text-dark">
                                <td>Address</td>
                                <td><%# Eval ("userAdd") %></td>
                                
                                <tr class="text-dark">
                                <td>Mobile Number</td>
                                <td><%# Eval ("userMno") %></td>
                                
                                <tr class="text-dark">
                                <td>Email Address</td>
                                <td><%# Eval ("userEmail") %></td>
                              
                                      <tr style="background-color:black ; color:white; " >
                                <td>Profile Image</td>
                                <td>Proof Image</td>
                                            <tr class="text-dark">
                                <td><img src="/photos/user/profile/<%# Eval ("img") %>" width="200px" height="200px" style="border-radius:30px;"/></td>
                                <td><img src="/photos/user/proof/<%#Eval ("idProof") %>" width="200px" height="200px" style="border-radius:30px;"/></td>
                              
                                
                                <tr>
                                  <td colspan=2><a href="mybooking.aspx" class="btn btn-dark w-25">My Booking</a></td>
                                </tr>

                                <tr class="text-dark">
                                  <td ><a  href='profile-update.aspx?uid=<%# Eval ("userId") %>' class="btn btn-dark">Update </a></td>
                                  <td ><a  href="logout.aspx" class="btn btn-dark"> Log Out </a></td>
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

	</section>
           </div></div>

</asp:Content>

