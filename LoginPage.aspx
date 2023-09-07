<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="TamilNadu_Mess.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="tblLoginPage" runat="server" Height="377px" Width="205px" BackImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/ffc749b4-95a1-4f6f-8995-86556d799d6e">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>
                <asp:Label Text="Welcome_Buddy!" ID="Welcome_Buddy" ForeColor="#cc33ff" runat="server"></asp:Label>
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <div id="container">
                    <img id="profileImage" src="http://clipart-library.com/images_k/face-profile-silhouette/face-profile-silhouette-18.png" alt="Profile Image" style="border-radius: 10%; width: 80px; height: 80px;" />
                </div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblUsername" runat="server" Text="User Name" ForeColor="#ff00ff" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUsername" runat="server" Text="" ></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
                <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="#ff00ff" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPassword" runat="server" Text=""></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="Register" runat="server" Text="New user" OnClick="Register_Click" BorderColor="#000000" Font-Bold="true" />
    <asp:Button ID="Clear" runat="server" Text="Clear" OnClick="Clear_Click" BorderColor="#000000" Font-Bold="true" />
    <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" BorderColor="#000000" Font-Bold="true" />
</asp:Content>