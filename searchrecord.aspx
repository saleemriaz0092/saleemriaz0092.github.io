<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchrecord.aspx.cs" Inherits="searchrecord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Donor Registration</title>

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
                                                                        
                 

                      <li><a href="SignIn.aspx">Sign In</a></li>
                      
                    </ul>
                </div>
            </div>
        </div>
    </div>
         <!-- search start -->
    <div class="container">
            <div class="form-horizontal">
                <h2>Donor Record</h2>
                <hr />
                <div class="center-page">
                    <label class="col-xs-11">Select your city</label>
                        <div class="col-xs-11">
                            <asp:DropDownList ID="tblc" runat="server" CssClass="form-control">
                                <asp:ListItem>Select city</asp:ListItem>
                                <asp:ListItem>Jhelum</asp:ListItem>
                                <asp:ListItem>Azad Kashmir</asp:ListItem>
                                <asp:ListItem>Bhimber</asp:ListItem>
                                <asp:ListItem>Islamabad</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    <label class="col-xs-11">Select your Group</label>
                        <div class="col-xs-11">
                            <asp:DropDownList ID="tbb" runat="server" CssClass="form-control">
                                <asp:ListItem>Select Blood Group</asp:ListItem>
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
                    <div class="col-xs-11 space-vert">
                            <asp:Button ID="btnsearch" runat="server" CssClass="btn btn-success" Text="Search" OnClick="btnsearch_Click" />
                        </div>
                    <asp:GridView ID="GridView1" runat="server" Width="354px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    </asp:GridView>
                    </div>
                </div>
    
    </div>
    </form>
</body>
</html>
