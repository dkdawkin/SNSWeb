<%@ Page Language="C#" Inherits="SNSWeb.Order" %>

    <!DOCTYPE html>
    <html>

    <head runat="server">
        <link href="SNSStyle.css" rel="stylesheet">
        <title>Order</title>
        <script type="text/javascript"  src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
        <script type="text/javascript"  src= "Scripts/SNSScripts.js"></script>
    </head>

    <body>
        <h1>SNS Cake Bakery</h1>

        <ul>
            <li><a class="NavLink" href="Login.aspx">Home</a></li>
            <li><a class="NavLink" href="Registration.aspx">Sign Up</a></li>
            <img class="NavImg" src="/Images/SNSlogo.png" />
            <li><a class="NavLink" href="Order.aspx">Order</a></li>
            <li><a class="NavLink" href="#">About</a></li>
        </ul>

        <form id="form1" runat="server">
            <h2 id="orderTableTitle"> - Order - </h2>
            <div class="orderTableDiv">

                <asp:Table id="ordersTable" runat="server" CssClass="orderTable">

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
                            <asp:RadioButton id="radioBtnYes" CssClass="radioBtn" runat="server" Text="Yes"></asp:RadioButton>
                            <asp:RadioButton id="radioBtnNo" CssClass="radioBtn" runat="server" Text="No"></asp:RadioButton>
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

                <asp:Table id="confTable" runat="server" CssClass="orderConfTable">

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Occasion:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:DropDownList CssClass="dropDownList" runat="server" ></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Desert Type: </asp:TableCell>
                        <asp:TableCell runat="server">
                     
                                <asp:DropDownList CssClass="dropDownList" runat="server" ></asp:DropDownList>
                 
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>

            </div>
            <div align="center" class="orderBtnDiv">
                <asp:Button id="addItemBtn" CssClass="OrderFormBtn" runat="server" Text="Add Item" OnClientClick="addItemBtn_Click();return false;" />
                <asp:Button id="doneBtn" CssClass="OrderFormBtn" OnClientClick="doneBtnClick(); return false;" runat="server" Text="Done" />
                <asp:Button id="checkOutBtn" CssClass="OrderFormChkBtn" runat="server" Text="Checkout" />

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