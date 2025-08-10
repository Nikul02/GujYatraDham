<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" Runat="Server">
     <style>
        input[type="radio"]
        {
            margin-left:50px;
        }
    </style> 
    <form id="f1" runat="server">
  <div class="page-nav no-margin row">
        <div class="container">
            <div class="row">
                <h2>Register</h2>
                <ul>
                    <li> <a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><i class="fas fa-angle-double-right"></i> Register</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="row contact-rooo no-margin ">
        <div class="container text-dark" style="font-size:20px;" >
            <div class="row">


                <div style="padding:20px;position:relative;left:50%;transform:translateX(-50%);" class="col-sm-6">
                    <div class="row cont-row">
                        <label>Enter Name:</label>
                        <asp:TextBox ID="txtname" runat="server" placeholder="Enter Your Name" CssClass="form-control input-sm"/>
                    </div>
                    <div class="row cont-row">
                        <label>Enter Email:</label>
                        <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email Id" CssClass="form-control input-sm" TextMode="Email"/>
                    </div>

                    <div class="row cont-row">
                        <label id="gen">Select Gender:</label>
                        <asp:RadioButtonList ID="gen" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>

                    <div class="row cont-row">
                        <label>Mobile No:</label>
                        <asp:TextBox ID="txtmno" runat="server" placeholder="Enter Mobile no" CssClass="form-control input-sm"/>
                    </div>

                    <div class="row cont-row">
                        <label>Password:</label>
                        <asp:TextBox ID="txtpass" runat="server" placeholder="Enter Password"  CssClass="form-control input-sm" TextMode="Password"/>
                    </div>

                    <div class="row cont-row">
                        <label>Enter Address:</label>
                        <asp:TextBox ID="txtadd" runat="server"   CssClass="form-control input-sm" TextMode="MultiLine" />
                    </div>

                    <div class="row cont-row">
                        <label>Enter City:</label>
                        <asp:TextBox ID="txtcity" runat="server" placeholder="Enter City"  CssClass="form-control input-sm"/>
                    </div>

                    <div class="row cont-row">
                        <label>Select Profile Image:</label>
                        <asp:FileUpload  ID="TextBox1" runat="server" placeholder="Enter City"  CssClass="form-control input-sm"/>
                    </div>

                    <div class="row cont-row">
                        <label>Select IdProof:</label>
                        <asp:FileUpload  ID="FileUpload1" runat="server" placeholder="Enter City"  CssClass="form-control input-sm"/>
                    </div>

                    <div style="margin-top:10px;" class="row">
                        <div class="col-sm-12">
                            <button class="btn btn-success btn-sm" style="position:relative;left:50%;transform:translateX(-50%);font-size:20px;">SUBMIT</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
        </form>
</asp:Content>

