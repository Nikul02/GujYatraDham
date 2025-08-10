<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="profile-update.aspx.cs" Inherits="_Default" %>

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
                <h2>Update Profile</h2>
                <ul>
                    <li> <a href="index.aspx"><i class="fas fa-home"></i> Home</a></li>
                    <li><i class="fas fa-angle-double-right"></i> Register</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="row contact-rooo no-margin ">
        <div class="container text-dark" style="font-size:20px;" >
            <div class="row">
                <asp:Repeater ID="readUser" runat="server" OnItemDataBound="readUser_ItemDataBound">
                    <ItemTemplate>
                        
                <div style="padding:20px;position:relative;left:50%;transform:translateX(-50%);" class="col-sm-6">
                    <div class="row cont-row">
                        <label>Enter Name:</label>
                        <asp:TextBox ID="userName" Text='<%# Eval ("userName") %>' runat="server" placeholder="Enter Your Name" CssClass="form-control input-sm"/>
                    </div>
                    <div class="row cont-row">
                        <label>Enter Email:</label>
                        <asp:TextBox ID="userEmail" Text='<%# Eval ("userEmail") %>' runat="server" placeholder="Enter Email Id" CssClass="form-control input-sm" TextMode="Email"/>
                    </div>

                    <div class="row cont-row">
                        <label>Select Gender:</label>
                        
                        <asp:RadioButtonList ID="userGender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" >
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:RadioButtonList>
                            
                    </div>

                    <div class="row cont-row">
                        <label>Mobile No:</label>
                        <asp:TextBox ID="userMno" Text='<%# Eval ("userMno") %>' runat="server" placeholder="Enter Mobile no" CssClass="form-control input-sm"/>
                    </div>

                    <div class="row cont-row">
                        <label>Password:</label>
                        <asp:TextBox ID="userPass" Text='<%# Eval ("userPass") %>' runat="server" placeholder="Enter Password"  CssClass="form-control input-sm" />
                    </div>

                    <div class="row cont-row">
                        <label>Enter Address:</label>
                        <asp:TextBox ID="userAdd" runat="server" Text='<%# Eval ("userAdd") %>'  CssClass="form-control input-sm" TextMode="MultiLine" />
                    </div>

                    <div class="row cont-row">
                        <label>Enter City:</label>
                        <asp:TextBox ID="userCity" Text='<%# Eval ("userCity") %>' runat="server" placeholder="Enter City"  CssClass="form-control input-sm"/>
                    </div>

                    <div class="row cont-row">
                        <label>Select Profile Image:</label>
                        <img src="/photos/user/profile/<%# Eval ("img") %>" width="50px" height="50px" />
                        <asp:HiddenField ID="oldimg" runat="server" Value='<%# Eval ("img") %>'/>
                        <asp:FileUpload  ID="img" runat="server" placeholder="Enter City"  CssClass="form-control input-sm"/>
                    </div>

                    <div class="row cont-row">
                        <label>Select IdProof:</label>
                        <img src="/photos/user/proof/<%# Eval ("idProof") %>" width="50px" height="50px" />
                        <asp:HiddenField ID="oldidProof" runat="server" Value='<%# Eval ("idProof") %>' />
                            <asp:FileUpload  ID="idProof" runat="server" placeholder="Enter City"  CssClass="form-control input-sm"/>
                    </div>

                    <div style="margin-top:10px;" class="row">
                        <div class="col-sm-12">
                            <asp:Button  CssClass="btn btn-success btn-sm" ID="update_profile" OnClick="update_profile_Click"  style="position:relative;left:50%;transform:translateX(-50%);font-size:20px;" Text="SUBMIT" runat="server"/>
                        </div>
                    </div>
                
                    </ItemTemplate>
                </asp:Repeater>
</div>

            </div>
        </div>

    </div>
        </form>

</asp:Content>

