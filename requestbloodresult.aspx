<%@ Page Language="C#" AutoEventWireup="true" CodeFile="requestbloodresult.aspx.cs" Inherits="requestbloodresult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Requests detail</title>

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
                        <li><a href="#">Home</a></li>
                        
                        
                        <li><a href="Aboutus.aspx">About us</a></li>
                        <li><a href="Contactus.aspx">Contact us</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">SignUp<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">Register</li>
                                <li role="separator" class="divider"></li>
                                <li class="active"><a href="#">As Donor</a></li>
                               
                                <li><a href="AdminSignUp.aspx">As Admin</a></li>
                                </ul>                                                    
                        </li>
                      <li><a href="SignIn.aspx">Sign In</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString %>" SelectCommand="SELECT * FROM [RequestForBlood]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />               
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Date_of_Birth" HeaderText="Date_of_Birth" SortExpression="Date_of_Birth" />
                <asp:BoundField DataField="Collecting_Date" HeaderText="Collecting_Date" SortExpression="Collecting_Date" />
                <asp:BoundField DataField="Required_Blood" HeaderText="Required_Blood" SortExpression="Required_Blood" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Blood_Group" HeaderText="Blood_Group" SortExpression="Blood_Group" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Usertype" HeaderText="Usertype" SortExpression="Usertype" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </form>
</body>
</html>
