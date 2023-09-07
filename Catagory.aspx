<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catagory.aspx.cs" Inherits="TamilNadu_Mess.Catagory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:LinkButton ID="LogoutButton" runat="server" OnClick="LogoutButton_Click" Text="(Logout)" Font-Bold="true" style="background-image: url('http://getwallpapers.com/wallpaper/full/e/a/d/28876.jpg');"></asp:LinkButton>
        <asp:LinkButton ID="Access" runat="server" OnClick="Access_Click" Text="(ACCESS)" Font-Bold="true" style="background-image: url('http://getwallpapers.com/wallpaper/full/e/a/d/28876.jpg');"></asp:LinkButton>
        <asp:Table runat="server" Width="100%" BackImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/9c06b821-46ed-43d7-a370-5c2a08a0a81f" Height="32px">
        <asp:TableRow>
            <asp:TableCell Width="50%">
                <asp:GridView ID="Dataview" runat="server" Height="134px" Width="100%" ForeColor="White" Font-Bold="true"></asp:GridView>
            </asp:TableCell>
            <asp:TableCell Width="50%" HorizontalAlign="Right">
                <asp:Button ID="OderList" runat="server" Text="User List" OnClick="OderList_Click" ForeColor="#ff00ff" Font-Bold="true" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell Width="50%">
                <asp:GridView ID="FoodDetails" runat="server" Height="134px" Width="100%" ForeColor="White" Font-Bold="true"></asp:GridView>
            </asp:TableCell>
            <asp:TableCell Width="50%" HorizontalAlign="Right">
                <asp:Button ID="Foodorders" runat="server" Text="Food orders List" OnClick="Foodorders_Click" ForeColor="#ff00ff" Font-Bold="true" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
        <asp:Table runat="server" Width="100%" BackImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/9c06b821-46ed-43d7-a370-5c2a08a0a81f" Height="41px">
              <asp:TableRow>
            <asp:TableCell Width="50%">
    <asp:GridView ID="CODview" runat="server" Height="134px" Width="339px" ForeColor="White" Font-Bold="true"></asp:GridView>
            </asp:TableCell>
            <asp:TableCell Width="50%" HorizontalAlign="Right">
    <asp:Button ID="CODList" runat="server" Text="COD List" OnClick="CODList_Click" ForeColor="#ff00ff" Font-Bold="true" />
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="50%">
    <asp:GridView ID="Onlinepayment" runat="server" Height="134px" Width="339px" ForeColor="White" Font-Bold="true"></asp:GridView>
                    </asp:TableCell>
            <asp:TableCell Width="50%" HorizontalAlign="Right">
    <asp:Button ID="Onlinefood" runat="server" Text="Online list" OnClick="Onlinefood_Click" ForeColor="#ff00ff" Font-Bold="true" />
                </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </asp:Content>