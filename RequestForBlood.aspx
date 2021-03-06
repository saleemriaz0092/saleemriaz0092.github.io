﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequestForBlood.aspx.cs" Inherits="RequestForBlood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Request For Blood Form</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="mystyle.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span>
                        <img alt="Logo" src="images/AJSlogo.png" height="35" /></span>AJS BLOOD BANK</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Default.aspx">Home</a></li>                                             
                        <li><a href="Aboutus.aspx">About us</a></li>
                        <li><a href="Contactus.aspx">Contact us</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">SignUp<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">Register</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="DonorRegistration.aspx">As Donor</a></li>
                              
                                <li><a href="AdminSignUp.aspx">As Admin</a></li>
                                </ul>
                            
                        
                            </li>
                       <li><a href="SignIn.aspx">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
        <!--- sigup start -->
        <div class="container">
            <div class="form-horizontal">
            
        <h2>Blood Request Form</h2>
        <hr />
        <div class="center-page">
                        <label class="col-xs-11">FirstName</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbFname" runat="server" CssClass="form-control" placeholder="FirstName"></asp:TextBox>
            </div>
            <label class="col-xs-11">LastName</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbLname" runat="server" Class="form-control" placeholder="LastName"></asp:TextBox>
            </div>
            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbemail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
            </div>
            <label class="col-xs-11">Date of Birth</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbDOB" runat="server" Class="form-control" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
            </div>
            <label class="col-xs-11">When You want to collect?</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbDOBR" runat="server" Class="form-control" placeholder="When you want to collect Blood?" TextMode="Date"></asp:TextBox>
            </div>
            <label class="col-xs-11">Amount of Blood?</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbbloodamount" runat="server" Class="form-control" placeholder="How much blood required?" TextMode="Number"></asp:TextBox>
            </div>
            <label class="col-xs-11">Gender</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="tbgender" runat="server" CssClass="form-control">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div>
            <label class="col-xs-11">Blood Group</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="tbBG" runat="server" CssClass="form-control">
                    <asp:ListItem Selected="True">Select Blood Group</asp:ListItem>
                    <asp:ListItem>A+</asp:ListItem>
                    <asp:ListItem>A-</asp:ListItem>
                    <asp:ListItem>B+</asp:ListItem>
                    <asp:ListItem>B-</asp:ListItem>
                    <asp:ListItem>O+</asp:ListItem>
                    <asp:ListItem>O-</asp:ListItem>
                    <asp:ListItem>AB+</asp:ListItem>
                    <asp:ListItem>AB-</asp:ListItem>
                </asp:DropDownList>
            </div>
            <label class="col-xs-11">Country</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbcountry" runat="server" Class="form-control" placeholder="Country"></asp:TextBox>
            </div>
            <label class="col-xs-11">City</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbcity" runat="server" Class="form-control" placeholder="City"></asp:TextBox>
            </div>
            <label class="col-xs-11">Mobile</label>
            <div class="col-xs-11">
                <asp:TextBox ID="tbmobile" runat="server" Class="form-control" placeholder="Mobile Number" TextMode="Phone"></asp:TextBox>
            </div>
            <div class="col-xs-11 space-vert3">
            <asp:Button ID="btnRequestsubmit" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="btnRequestsubmit_Click" />
                <asp:Button ID="btnRequestCancel" runat="server" CssClass="btn btn-success" Text="Cancel" CausesValidation="False" OnClick="btnRequestCancel_Click" />
                </div>     
        
        </div>
         </div>
            </div>
      </form>
   
        <!---signup end -->
        <!--- Footer start -->
    <footer class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy 2018 AJSBloodBank.com &middot; <a href="#">SingUp</a> &middot; <a href="Aboutus.aspx">About us</a>&middot; <a href="Contactus.aspx">Contact us</a>&middot;</p>
        </div>
    </footer>
    <!--- Footer end -->
   
        
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>