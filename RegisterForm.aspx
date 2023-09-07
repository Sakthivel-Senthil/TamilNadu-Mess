<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="TamilNadu_Mess.RegisterForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="tblRegisterHere" runat="server" Height="374px" Width="289px"  BackImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/82e4d48b-4605-4a9b-8c71-4c90198ae1fc">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>
                <asp:Label ID="Createaccount" runat="server" Text="Create Account !" ForeColor="#00FF00" Font-Bold="true"></asp:Label>
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblUsername" runat="server" Text="Username" ForeColor="#ff00ff" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUsername" runat="server" Text=""></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblEmail" runat="server" Text="Email" ForeColor="#ff00ff" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail" runat="server" Text=""></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblNewpassword" runat="server" Text="New password" ForeColor="#ff00ff" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtNewpassword" runat="server" Text=""></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="Register" runat="server" Text="Register Here" OnClick="Register_Click" Width="108px" BorderColor="#000000" Font-Bold="true" ForeColor="#7B1BBB" />
</asp:Content>
