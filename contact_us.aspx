<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" runat="Server">
    <!--  ************************* Page Title Starts Here ************************** -->
    <form id="abc" runat="server">
        <div class="page-nav no-margin row">
            <div class="container">
                <div class="row">
                    <h2>Contact Us</h2>
                    <ul>
                        <li><a href="index.aspx"><i class="fas fa-home"></i>Home</a></li>
                        <li><i class="fas fa-angle-double-right"></i>Contact US</li>
                    </ul>
                </div>
            </div>
        </div>





        <!--  ************************* Contact Us Starts Here ************************** -->


        <div style="margin-top: 0px;" class="row no-margin">

            <iframe style="width: 100%" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3777452.9390264275!2d68.68527999421728!3d22.39441512244484!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3959051f5f0ef795%3A0x861bd887ed54522e!2sGujarat!5e0!3m2!1sen!2sin!4v1708730102442!5m2!1sen!2sin" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>


        </div>

        <div class="row contact-rooo no-margin">
            <div class="container">
                <div class="row">


                    <div style="padding: 20px" class="col-sm-7">
                        <h2>Contact Form</h2>
                        <br>
                        <div class="row cont-row">
                            <label>Name</label>
                            <asp:TextBox ID="name" runat="server" placeholder="Enter Name" CssClass="form-control input-sm"></asp:TextBox>
                        </div>
                        <div class="row cont-row">
                            <label>Email</label>
                            <asp:TextBox ID="email" runat="server" placeholder="Enter Email" CssClass="form-control input-sm" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="row cont-row">
                            <label>Subject</label>
                            <asp:TextBox ID="subject" runat="server" placeholder="Enter Subject" CssClass="form-control input-sm"  TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="row cont-row">
                            <label>Message</label>
                            <asp:TextBox ID="message" runat="server" placeholder="Enter Message" CssClass="form-control input-sm"  TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div style="margin-top:10px;" class="row">
                        <div class="col-sm-12">
                            <asp:Button  CssClass="btn btn-success btn-sm" ID="addcu"  OnClick="addcu_Click" style="position:relative;left:50%;transform:translateX(-50%);font-size:20px;" Text="Send Message" runat="server"/>
                        </div>
                    </div>
                    </div>
                    <div class="col-sm-5">

                        <div style="margin: 50px" class="serv">

<img src="photos/cu.jpg" />
                        </div>


                    </div>

                </div>
            </div>

        </div>
    </form>
</asp:Content>

