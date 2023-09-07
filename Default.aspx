<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TamilNadu_Mess._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url('https://github.com/Practice-Here/Calculator/assets/140873521/7ea30cf8-c782-49af-b265-60f75d44a2ce');
            background-repeat: no-repeat;
            background-size: cover;
        }
        .auto-style1 {
            height: 36px;
        }
    </style>

    <div class="jumbotron" style="font-size: large;">
        <h2 style="color: #9A09C3;">Welcome to the Tamil Nadu Food App!</h2>
        <p class="lead">Discover the delicious flavors of Tamil Nadu cuisine</p>
        <table style="width: 100%;">
            <tr>
                <td style="text-align: justify;" class="auto-style1">
                    <asp:Button ID="RegisterButton" runat="server" Text="Register" ForeColor="#1045A5" BorderStyle="Solid" Font-Bold="true" OnClick="RegisterButton_Click" Height="36px" Width="122px" />
                    <asp:Button ID="Login" runat="server" Text="User Login" ForeColor="#1045A5" Font-Bold="true" BorderStyle="Solid" OnClick="Login_Click" Height="36px" Width="131px" />
                    <asp:Button ID="AdminButton" runat="server" Text="Admin Login" ForeColor="#1045A5" Font-Bold="true" BorderStyle="Solid" OnClick="AdminButton_Click" Height="37px" Width="143px" />
                </td>
                <td style="text-align: center;" class="auto-style1"></td>
            </tr>
        </table>
    </div>

    <div class="row">
    <div class="col-md-4">
        <h2 style="color:aqua">"Discover Local Eateries"</h2>
        <p>Explore a variety of local eateries in Tamil Nadu serving traditional dishes.</p><br />
        <p><a class="btn btn-default" href="https://lakshmisharath.com/ten-old-eateries-in-chennai-you-must-not-miss/">Find Restaurants &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2 style="color:aqua">"Tasty Tamil Nadu Recipes"</h2>
        <p>Discover a collection of delicious Tamil Nadu recipes and learn how to prepare them at home.</p><br />
        <p><a class="btn btn-default" href="https://www.chitrasfoodbook.com/2015/04/12-breakfast-recipes-south-indian.html">Explore Recipes &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2 style="color:aqua">"Food Culture Insights"</h2>
        <p>Dive into the rich food culture of Tamil Nadu and explore captivating stories and articles.</p><br />
        <p><a class="btn btn-default" href="https://medium.com/@mayawiilson/what-is-food-culture-and-how-does-it-impact-health-20bfc2d07a2d">Read the Blog &raquo;</a></p>
    </div>
</div>

</asp:Content>
