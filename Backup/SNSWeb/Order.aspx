<%@ Page Language="C#" Inherits="SNSWeb.Order" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
    <!DOCTYPE html>
    <html>

    <head runat="server">
        <link href="SNSStyle.css" rel="stylesheet">
        <title>Order</title>
    </head>

    <body>
        <h1>SNS Cake Bakery</h1>

        <ul>
            <li><a class="NavLink" href="Login.aspx">Home</a></li>
            <li><a class="NavLink" href="Registration.aspx">Sign Up</a></li>
            <img class="NavImg" src="/Images/SNSlogo.png" />
            <li><a class="NavLink" href="Order.aspx">Order</a></li>
            <li><a class="NavLink" href="about.asp">About</a></li>
        </ul>

        <form id="form1" runat="server">
            <h2> - Order - </h2>
            <div class="orderTableDiv">

                <asp:Table runat="server" CssClass="orderTable">

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Occasion:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:DropDownList CssClass="dropDownList" runat="server" id="occasionDdl"></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Desert Type: </asp:TableCell>
                        <asp:TableCell runat="server">
                     
                                <asp:DropDownList CssClass="dropDownList" runat="server" id="desertTypeDdl"></asp:DropDownList>
                 
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Cake Stand/ Tower Rental:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:RadioButton CssClass="radioBtn" runat="server" Text="Yes"></asp:RadioButton>
                            <asp:RadioButton CssClass="radioBtn" runat="server" Text="No"></asp:RadioButton>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Serving Size:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:DropDownList CssClass="dropDownList" runat="server" id="servingSizeDdl"></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Desert Flavor:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:DropDownList CssClass="dropDownList" id="DesertFlavorDdl" runat="server"></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Frosting Flavor:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:DropDownList CssClass="dropDownList" runat="server" id="frostingFlavorDdl"></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"> Food Alergies:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <textarea class="textBox" runat="server" id="foodAlergiesTextArea"></textarea>
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>

            </div>
            <div align="center" class="orderBtnDiv">
                <asp:Button id="addItemBtn" CssClass="OrderFormBtn" runat="server" Text="Add Item" OnClick="addItemBtn_Click" />
                <asp:Button id="doneBtn" CssClass="OrderFormBtn" runat="server" Text="Done" />

            </div>
        </form>
        <ul>
            <li><a class="bottomNavLink" href="Login.aspx">Home</a></li>
            <li><a class="bottomNavLink" href="Registration.aspx">Sign Up</a></li>
            <li><a class="bottomNavLink" href="Order.aspx">Order</a></li>
            <li><a class="bottomNavLink" href="about.asp">About</a></li>
        </ul>
    </body>

    </html>