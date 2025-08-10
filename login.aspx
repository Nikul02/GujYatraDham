<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cntp1" Runat="Server">
    <form id="f1" runat="server">
  <div class="page-nav no-margin row">
        <div class="container">
            <div class="row">
                <h2>Login</h2>
                <ul>
                    <li> <a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><i class="fas fa-angle-double-right"></i> Login</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="row contact-rooo no-margin ">
        <div class="container text-dark" style="font-size:20px;" >
            <div class="row">

                <div style="padding:20px;position:relative;left:50%;transform:translateX(-50%);" class="col-sm-6">
                    <div class="row cont-row">
                        <label> Email Id:</label>
                        <asp:TextBox ID="email" runat="server" placeholder="Enter Email" CssClass="form-control input-sm" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="row cont-row">
                        <label>Password:</label>
                       
                        <asp:TextBox runat="server" placeholder="Enter Password" ID="pass"  CssClass ="form-control input-sm"></asp:TextBox>
                    </div>

                    <div style="margin-top:10px;" class="row">
                        <div class="col-sm-12">
                          
                        <asp:Button runat="server" CssClass="btn btn-success btn-sm" ID="login" style="position:relative;left:50%;transform:translateX(-50%);font-size:20px;" Text="Login" OnClick="login_Click"/>
                             </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
        </form>
</asp:Content>

