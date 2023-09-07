<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TamilNadu_Mess.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Add styles for the background here */
        body {
            background-image: url('https://github.com/Practice-Here/Calculator/assets/140873521/fe834897-566f-4368-8ce4-5f2e707d3323'); /* Replace with your image file path */
           background-size: cover; /* Adjust image sizing as needed */
            background-repeat: no-repeat;
        }

        /* Add any other styles you need for your content */
        h2, p, h3 {
            /* Add your text styles here */
        }
    </style>
    <h2 style="color: blueviolet;">Contact Us!</h2>
    <p>Feel free to reach out to us for any inquiries or assistance!</p>
    <address>
        <strong>"Tamil Nadu Mess"</strong><br />
        123 Mess Street<br />
        Chennai, Tamil Nadu 600001<br />
        <abbr title="Phone">Phone:</abbr>
        +91 1234567890
    </address>
    <h3 style="color: blueviolet;">Dont Be Stranger!</h3>
    <p>For specific inquiries, please use the following contact details:</p>
    <address>
        <strong>Customer Support:</strong>   <a href="mailto:support@tamilnadumess.com">support@tamilnadumess.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:marketing@tamilnadumess.com">marketing@tamilnadumess.com</a>
    </address>
</asp:Content>
