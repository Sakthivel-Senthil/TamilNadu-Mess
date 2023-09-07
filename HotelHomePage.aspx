<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HotelHomePage.aspx.cs" Inherits="TamilNadu_Mess.HotelHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #B941CF;
        }
    </style>
    <asp:LinkButton ID="LogoutButton" runat="server" OnClick="LogoutButton_Click" Text="(Logout)" Font-Bold="true" ForeColor="#ff0000"></asp:LinkButton>
    <asp:Table ID="UserPage" runat="server" Height="591px" Width="1168px" BackColor="#000000">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell ColumnSpan="3">
                <asp:Label ID="lblWelcomePage" runat="server" ForeColor="aqua" Text="Lets Oder Now Get Free delivery!" Font-Bold="true" Font-Size="Larger"></asp:Label>
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Justify">
                <asp:Image ID="imgFood" runat="server" ImageUrl="https://i.imgur.com/tOHLJ4s.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="lblFoodName" runat="server" Text="Dosa" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="lblFoodRate" runat="server" Text="25 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="lblStockAvailability" runat="server" Text="Stock Left - 10" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnDosa" runat="server" Text=" ADD" OnClick="btnDosa_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">White
                <asp:Image ID="Image1" runat="server" ImageUrl="https://2.bp.blogspot.com/-Gz8PMFgjdTI/WTKpcmh_eDI/AAAAAAAABNU/CBW-TqQAtoAfFgA1km-6EAS4mALIgZzlwCLcB/s1600/poori-puri-hd-png-Stock-Images-Royalty-Free-Images-Vectors.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label1" runat="server" Text="Puri" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text="15 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text="Stock Left - 08" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnPuri" runat="server" Text=" ADD" OnClick="btnPuri_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">
                <asp:Image ID="Image2" runat="server" ImageUrl="https://pluspng.com/img-png/idli-png--1200.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label4" runat="server" Text="Idly With Vada" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label5" runat="server" Text="10 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label6" runat="server" Text="Stock Left - 05" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnIdly" runat="server" Text=" ADD" OnClick="btnIdly_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">
                <asp:Image ID="Image3" runat="server" ImageUrl="https://i.pinimg.com/originals/4c/eb/aa/4cebaac8dc9e76f513c44c6958793130.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label7" runat="server" Text="Rava Idily" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label8" runat="server" Text="20 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label9" runat="server" Text="Stock Left - 07" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnRava" runat="server" Text=" ADD" OnClick="btnRava_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">
                <asp:Image ID="Image4" runat="server" ImageUrl="https://pngimg.com/uploads/breakfast/breakfast_PNG26.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label10" runat="server" Text="Omlete" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label11" runat="server" Text="10 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label12" runat="server" Text="Stock Left - 05" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnOmlete" runat="server" Text=" ADD" OnClick="btnOmlete_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">
                <asp:Image ID="Image5" runat="server" ImageUrl="https://www.pngmart.com/files/3/Breakfast-PNG-Transparent-Image.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label13" runat="server" Text="Tea with Snacks" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label14" runat="server" Text="10 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label15" runat="server" Text="Stock Left - 40" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnTea" runat="server" Text=" ADD" OnClick="btnTea_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Justify">
                <asp:Image ID="Image6" runat="server" ImageUrl="https://www.pngall.com/wp-content/uploads/7/Breakfast-Transparent.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label16" runat="server" Text="Bread" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label17" runat="server" Text="30 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label18" runat="server" Text="Stock Left - 10" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnBread" runat="server" Text=" ADD" OnClick="btnBread_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">
            <asp:Image ID="Image7" runat="server" ImageUrl="http://purepng.com/public/uploads/large/purepng.com-noodlenoodlechinesestaple-foodwheat-doughnudel-1411527963191asbjf.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label19" runat="server" Text="Noodles" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label20" runat="server" Text="20 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label21" runat="server" Text="Stock Left - 20" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnNoodles" runat="server" Text=" ADD" OnClick="btnNoodles_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">
            <asp:Image ID="Image8" runat="server" ImageUrl="https://www.neehees.com/wp-content/uploads/2020/11/Onion-Chili-Uttapam.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label22" runat="server" Text="onion uttapam" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label23" runat="server" Text="40 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label24" runat="server" Text="Stock Left - 35" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnuttapam" runat="server" Text=" ADD" OnClick="btnuttapam_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">
            <asp:Image ID="Image9" runat="server" ImageUrl="https://www.pngkit.com/png/full/254-2544687_indian-thali-png.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label25" runat="server" Text="alu paratha" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label26" runat="server" Text="50 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label27" runat="server" Text="Stock Left - 20" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnparatha" runat="server" Text=" ADD" OnClick="btnparatha_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">
            <asp:Image ID="Image10" runat="server" ImageUrl="https://takepng.com/files/preview/800x911/11647510147ypswi4hwrz9lzranh6jugtsyavsxzfwnm43cx0pardp2elefbeiphx1czovc3dm9jn1dkkuivh8svasbx7xwepiwljpojb0bv5rw.png?size=medium" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label28" runat="server" Text="Special Dosa" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label29" runat="server" Text="25 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label30" runat="server" Text="Stock Left - 45" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnSpecialDosa" runat="server" Text=" ADD" OnClick="btnSpecialDosa_Click" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Justify">
            <asp:Image ID="Image11" runat="server" ImageUrl="https://www.chefmarcsmealprep.com/wp-content/uploads/2018/03/kisspng-health-food-healthy-diet-meal-delivery-service-weight-loss-5b649d89de2764.36415564153332058591.png" Height="100px" Width="100px" /> <br />
                <asp:Label ID="Label31" runat="server" Text="Vegitables Dish" Font-Bold="true" Font-Size="Medium" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label32" runat="server" Text="  50 RS - Only!" ForeColor="White"></asp:Label><br />
                <asp:Label ID="Label33" runat="server" Text="  Stock Left - 20" ForeColor="aqua" Font-Bold="true"></asp:Label>
                <asp:Button ID="btnVegitables" runat="server" Text=" ADD" OnClick="btnVegitables_Click1" CssClass="add-to-cart-button" Font-Size="X-Small" ></asp:Button>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="3" HorizontalAlign="Justify">
                <asp:DropDownList ID="ddlMenu" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMenu_SelectedIndexChanged1">
                    <asp:ListItem Text="Select Food" Value=""></asp:ListItem>
                    <asp:ListItem Text="Dosa" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Puri" Value="2"></asp:ListItem>
                    <asp:ListItem Text="IDLY" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Rava Idily" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Omlete" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Tea with Snacks" Value="6"></asp:ListItem>
                    <asp:ListItem Text="Bread" Value="7"></asp:ListItem>
                    <asp:ListItem Text="Noodles" Value="8"></asp:ListItem>
                    <asp:ListItem Text="onion uttapam" Value="9"></asp:ListItem>
                    <asp:ListItem Text="alu paratha" Value="10"></asp:ListItem>
                    <asp:ListItem Text="Special Dosa" Value="11"></asp:ListItem>
                    <asp:ListItem Text="VegitablesDish" Value="12"></asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Table ID="CartTable" runat="server" Width="400px">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell Font-Bold="true" ForeColor="#3399ff">
                Item: 'See Down!'
            </asp:TableHeaderCell>
            <asp:TableHeaderCell Font-Bold="true" ForeColor="#6666ff">
                Iteam Selected: 'See Down!'
            </asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow runat="server" ID="CartTableRow" Visible="false">
            <asp:TableCell ColumnSpan="2" Text="No items in the cart." />
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="BuyNow" runat="server" Text="Buy Now" ForeColor="#0000ff" Font-Bold="true" OnClick="BuyNow_Click"/>
    <asp:Label ID="lblTotalAmount" runat="server" Text="Total Amount: " Font-Bold="true"></asp:Label>
    <asp:Label ID="lblSelectedItem" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblOrderPlaced" runat="server" Text=""></asp:Label>
    <asp:Button runat="server" ID="btnDecrement" Text="-" OnClick="btnDecrement_Click" Width="26px" />
    <asp:Button runat="server" ID="btnIncrement" Text="+" OnClick="btnIncrement_Click" Width="26px" />
    </asp:Content>