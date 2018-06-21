<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserResult.aspx.cs" Inherits="UserResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Uid" DataSourceID="SqlDataSourceUser" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Uid" HeaderText="Uid" InsertVisible="False" ReadOnly="True" SortExpression="Uid" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Date_of_Birth" HeaderText="Date_of_Birth" SortExpression="Date_of_Birth" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Blood_Group" HeaderText="Blood_Group" SortExpression="Blood_Group" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Confirm_Password" HeaderText="Confirm_Password" SortExpression="Confirm_Password" />
                
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
