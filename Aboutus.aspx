<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
                            

                            <li class="active"><a href="Aboutus.aspx">About us</a></li>
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
                <h2>About Us</h2>
                <hr />
                <div class="row">
                <div class="col-lg-4">
                <img class="img-circle" src="images/4.jpg" alt="9" width="140" />
                
              <p>
                  This "AJS BLOOD BANK".This webiste is for all the people who want to donate or have need of blood.You can search here for blood and also can save lives by donating blood to needy person. 
                  
                    Giving blood saves lives. The blood you give is a lifeline in an emergency and for people who need long-term treatments.

Many people would not be alive today if donors had not generously given their blood.
              </p>
                
                </div>
            </div>
                </div>
            </div>
        <div />
       
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