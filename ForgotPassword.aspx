<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgor Password !</title>
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
        <div class="container">
            <div class="form-horizontal">
                <h2>Recover Password</h2>
                <hr />
                <h4>Please enter your email address, we will send you the instructions to reset your password.</h4>
               <div class="form-group">
                   <asp:Label ID="lblemail" runat="server" CssClass="col-md-2 control-label" Text="Your Email"></asp:Label>
                   <div class="col-md-3">
                       <asp:TextBox ID="tbemail" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatortbemail" CssClass="text-danger" runat="server" ErrorMessage="Please enter your email address" ControlToValidate="tbemail"></asp:RequiredFieldValidator>
                       <br />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidatortbemail" runat="server" ControlToValidate="tbemail" CssClass="text-danger" ErrorMessage="Please enter valid email address!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </div>
               </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnRecoverPassword" runat="server" CssClass="btn btn-default" Text="Reset" OnClick="btnrecoverpassword_Click" />
                        <asp:Label ID="lblRecoverPassword" runat="server" ></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!--- Footer start -->
    <hr />
    <footer>
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy 2018 AJSBloodBank.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="Aboutus.aspx">About us</a>&middot; <a href="Contactus.aspx">Contact us</a>&middot;</p>
         
        </div>
    </footer>
    <!--- Footer end -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
