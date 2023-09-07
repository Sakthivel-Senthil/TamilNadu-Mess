<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminAccess.aspx.cs" Inherits="TamilNadu_Mess.AdminAccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table runat="server" BackImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/9c06b821-46ed-43d7-a370-5c2a08a0a81f" Height="395px" Width="340px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblID" runat="server" Text="ID" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtID" runat="server" Text="" BorderStyle="Solid"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblUsername" runat="server" Text="Username" ForeColor="Black" Font-Bold="true"></asp:Label>
                </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUsername" runat="server" Text="" BorderStyle="Solid"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblEmail" runat="server" Text="Email" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail" runat="server" BorderStyle="Solid" Text=""></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblNewpassword" runat="server" Text="New password" ForeColor="Black" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtNewpassword" runat="server" Text="" BorderStyle="Solid"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
    <asp:Button ID="Update" runat="server" Text="UPDATE HERE" OnClick="Update_Click" BorderStyle="Solid" ForeColor="#ff00ff" Font-Bold="true" /><br />
    <asp:Table runat="server">
    <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblDID" runat="server" Text="DID" ForeColor="#ff0000" BorderStyle="Solid" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtDID" runat="server" Text="" BorderStyle="Solid"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
    <asp:Button ID="Delete" runat="server" Text="DELETE HERE" OnClick="Delete_Click" BorderStyle="Solid" ForeColor="#ff00ff" Font-Bold="true" /><br />
</asp:Content>