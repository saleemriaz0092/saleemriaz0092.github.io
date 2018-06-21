﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonorHome.aspx.cs" Inherits="DonorHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Donor Home</title>

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
        <div class="navbar navbar-default navbar-fixed-top" role="navigation" style="height:50px">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" >
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span>
                        <img alt="Logo" src="images/AJSlogo.png" height="35" width="50" /></span>AJS BLOOD BANK</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        
                        <li><a href="Aboutus.aspx">About us</a></li>
                        <li><a href="Contactus.aspx">Contact us</a></li>
                        <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Profile<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Your Profile</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="DonorProfile.aspx">Edit </a></li>                              
                                    </ul>
                            </li>
                        <li><a href="searchrecord.aspx">Search</a></li>
                      <li> <asp:Button ID="btnsignOut" runat="server" CssClass="btn btn-default navbar-btn" Text="Sign Out" OnClick="btnsignOut_Click"  /></li>
                    </ul>
                </div>
            </div>


            <!--- carousel -->
        </div>
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="images/1.jpg" alt="..." />
                    <div class="carousel-caption">
                        <h3>Give Blood Save life</h3>
                        <p>AJS</p>
                        <p><a class="btn btn-lg btn-primary" href="BloodDonatingForm.aspx" role="button">Donate Blood</a></p>
                        <p><a class="btn btn-lg btn-primary" href="RequestForBlood.aspx" role="button">Request For Blood</a></p>
                    </div>
                </div>
                <div class="item">
                    <img src="images/2.jpg" alt="..." />
                    <div class="carousel-caption">

                        <h3>Give Blood Save life</h3>
                        <p>AJS</p>
                        <p><a class="btn btn-lg btn-primary" href="BloodDonatingForm.aspx" role="button">Donate Blood</a></p>
                        <p><a class="btn btn-lg btn-primary" href="RequestForBlood.aspx" role="button">Request For Blood</a></p>
                    </div>
                </div>

                <div class="item">
                    <img src="images/3.jpg" alt="..." />
                    <div class="carousel-caption">

                        <h3>Give Blood Save life</h3>
                        <p>AJS</p>
                        <p><a class="btn btn-lg btn-primary" href="BloodDonatingForm.aspx" role="button">Donate Blood</a></p>
                        <p><a class="btn btn-lg btn-primary" href="RequestForBlood.aspx" role="button">Request For Blood</a></p>
                    </div>
                </div>
                <div class="item">
                    <img src="images/4.jpg" alt="..." />
                    <div class="carousel-caption">
                        <h3>Give Blood Save life</h3>
                        <p>AJS</p>
                        <p><a class="btn btn-lg btn-primary" href="BloodDonatingForm.aspx" role="button">Donate Blood</a></p>
                        <p><a class="btn btn-lg btn-primary" href="RequestForBlood.aspx" role="button">Request For Blood</a></p>
                    </div>
                </div>
                
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <!--- carousel -->
    </div>
        
   <!--- -->
         <!--- -->
    <br />
    <br />
    <br />    
    <!--- Middle Content -->
    <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="images/4.jpg" alt="9" width="140" />
                <h2>Why We Give Blood</h2>
                <p>
                    Giving blood saves lives. The blood you give is a lifeline in an emergency and for people who need long-term treatments.

Many people would not be alive today if donors had not generously given their blood.
                </p>
                <p><a class="btn btn-default" role="button">View &raquo;</a></p>
    </div>
          
                    <div class="col-lg-4">
                        <img class="img-circle" src="images/4.jpg" alt="9" width="140" />
                        <h2>Why We Give Blood</h2>
                        <p>
                            Giving blood saves lives. The blood you give is a lifeline in an emergency and for people who need long-term treatments.

Many people would not be alive today if donors had not generously given their blood.
                        </p>
                        <p><a class="btn btn-default" role="button">View &raquo;</a></p>
                    </div>
            <div class="col-lg-4">
                        <img class="img-circle" src="images/4.jpg" alt="9" width="140" />
                        <h2>Why We Give Blood</h2>
                        <p>
                            Giving blood saves lives. The blood you give is a lifeline in an emergency and for people who need long-term treatments.

Many people would not be alive today if donors had not generously given their blood.
                        </p>
                        <p><a class="btn btn-default" role="button">View &raquo;</a></p>
                    </div>
                </div>
        </div>
     </form>
    <!--- Middle Content -->
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