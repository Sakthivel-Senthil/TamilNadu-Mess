<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="TamilNadu_Mess.PaymentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="PaymentPage1" runat="server" Height="549px" Width="499px" BackImageUrl="https://img.freepik.com/free-vector/e-wallet-concept-illustration_114360-7561.jpg?w=740&t=st=1689585324~exp=1689585924~hmac=abaf9498d1ee056bd83ebfdc1742f3bb8b8c642f28c26ea16a3ecb68accb3aff">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right" BorderColor="#000000">
                <asp:DropDownList ID="SelectPayment" runat="server" AutoPostBack="true" OnSelectedIndexChanged="SelectPayment_SelectedIndexChanged">
                    <asp:ListItem Text="Select Payment Method" Value="Select"></asp:ListItem>
                    <asp:ListItem Text="Cash on Delivery" Value="COD"></asp:ListItem>
                    <asp:ListItem Text="Online Payment" Value="Online"></asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="CashOnDeliveryRow" runat="server" Visible="false" style="background-image: url('https://img.freepik.com/free-vector/young-man-using-smartphone-app-paying-delivery-order_74855-7954.jpg?w=900&t=st=1689584637~exp=1689585237~hmac=348cd89bf0f48a347a6033f59539ede9d8f5d2326a0a351d5733baee47df395d'); background-repeat: no-repeat; background-size: cover;">
            <asp:TableCell>
                <h3 style="color: #000000; background-color: #e8e8e8">Cash on Delivery - Fill this</h3>
                <asp:Table ID="CashOnDeliveryTable" runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblAddress" runat="server" Font-Bold="true" ForeColor="#ff0000" Text="Address:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtAddress" BorderColor="#000000" runat="server" Text=""></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblContactNumber" runat="server" Font-Bold="true" ForeColor="#ff0000" Text="Contact Number:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtContactNumber" BorderColor="#000000" runat="server" Text=""></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblCustomer" runat="server" Text=""></asp:Label>
                            <asp:Button ID="PlaceOrderButton" runat="server" Font-Bold="true" Text="Place Order" BackColor="#66ff66" OnClick="PlaceOrderButton_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="OnlinePaymentRow" runat="server" Visible="false" HorizontalAlign="Left" style="background-image: url('https://img.freepik.com/free-vector/delivery-service-with-mask-concept_23-2148505104.jpg?w=740&t=st=1689584141~exp=1689584741~hmac=9888cc425054c47cea83e6d736c23f73954067a0ed4c3ddb9f48790b2db8ddd4'); background-repeat: no-repeat; background-size: cover;">
            <asp:TableCell>
                <h3 style="color: #000000; background-color: #e8e8e8">Online Payment - (Debit/Credit Card)</h3>
                <asp:Table ID="OnlinePaymentTable" runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblCardHolderName" runat="server" Font-Bold="true" ForeColor="#ff0000" Text="Card Holder Name:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtCardHolderName" BorderColor="#000000" runat="server" Text=""></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblCardNumber" runat="server" Font-Bold="true" ForeColor="#ff0000" Text="Card Number:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtCardNumber" BorderColor="#000000" runat="server" Text=""></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblExpryDate" runat="server" Font-Bold="true" ForeColor="#ff0000" Text="Expiry Date:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtExpryDate" BorderColor="#000000" runat="server" Text=""></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblCcvCode" runat="server" Font-Bold="true" ForeColor="#ff0000" Text="CCV Code:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtCcvCode" BorderColor="#000000" runat="server" Text=""></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblYourname" runat="server" Text=""></asp:Label>
                            <asp:Button ID="PayNowButton" runat="server" Text="Pay Now" Font-Bold="true" BackColor="#66ff66" OnClick="PayNowButton_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Label ID="MessageLabel" runat="server"></asp:Label>
</asp:Content>