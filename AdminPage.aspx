<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="TamilNadu_Mess.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="tblAdmin" runat="server" Height="384px" Width="268px" BackImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/9c06b821-46ed-43d7-a370-5c2a08a0a81f">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>
                <asp:Label ID="WelcomeAdmin" runat="server" Text="Welcome Admin!" ForeColor="#ffffff"></asp:Label>
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <div id="container" Align="Center">
                    <img id="profileImage" src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" alt="Profile Image" style="border-radius: 100%; width: 90px; height: 90px;" />
                </div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblUsername" runat="server" Text="User Name" ForeColor="White"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUsername" runat="server" Text=""></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="White"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPassword" runat="server" Text=""></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" />
</asp:Content>