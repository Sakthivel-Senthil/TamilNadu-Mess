<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankyouPage.aspx.cs" Inherits="TamilNadu_Mess.ThankyouPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url('https://github.com/Practice-Here/Calculator/assets/140873521/90a5c187-7324-4a2c-a3f6-3351a7408b4c');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .content-container {
            background-color: rgba(255, 255, 255, 0.8); /* Add a semi-transparent white background over the image */
            padding: 20px;
            border-radius: 10px;
            width: 55%;
            margin: 20px auto;
            text-align: center;
            height: 548px;
        }
        .message {
            font-weight: bold;
            color: #333;
            margin: 10px 0;
        }
    </style>
    
    <div class="content-container" style="background-color: rgba(255, 255, 255, 0.5); padding: 20px; border-radius: 10px; width: 74%; margin: 20px auto; text-align: center;">
    <asp:Table ID="orderTable" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="1px" CellPadding="10" HorizontalAlign="Center" Height="397px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="lblUserName" runat="server" Text="User Name → " ForeColor="#B106D9" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lblTotalAmount" runat="server" Text="Your Total Amount → " ForeColor="#B106D9" Font-Bold="true"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="lblSelectedItem" runat="server" Text="Selected Item → " ForeColor="#B106D9" Font-Bold="true"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Label ID="lblHeading" runat="server" Text="Your Order Details Here!" Font-Bold="true" ForeColor="#000000"></asp:Label>
</div>
    <div style="text-align: center; margin: 20px auto; width: 100%;">
        <asp:Table ID="DD" runat="server" Width="100%" Height="24px">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Label ID="lblDown" runat="server" ForeColor="White" Text="← Arrives Soon! Please keep your phone nearby as our delivery team will be contacting you shortly. Our delivery personnel will bring your order right to your doorstep. Enjoy your food! →"></asp:Label><br />
                    <asp:Label ID="lblDown1" runat="server" ForeColor="White" Text="← Thank you once again for choosing us. We value your business and hope to serve you again soon. →"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </asp:Content>