<%@ Page Language="C#" Inherits="SNSWeb.Order" %>

    <!DOCTYPE html>
    <html>

    <head runat="server">
        <link href="SNSStyle.css" rel="stylesheet">
        <title id="">Order</title>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
        <script type="text/javascript" src="Scripts/SNSScripts.js"></script>
        <script>
        </script>
    </head>

    <body>
        <h1>SNS Cake Bakery</h1>

        <ul>
            <li><a class="NavLink" href="Login.aspx">Home</a></li>
            <li><a class="NavLink" href="Registration.aspx">Sign Up</a></li>
            <img class="NavImg" src="/Images/SNSlogo.png" />
            <li><a class="NavLink" href="Order.aspx">Order</a></li>
            <li><a class="NavLink" href="about.asp">About</a></li>
            <li><img class="Cart" src="/Images/ovenIcon.png" /></li>
        </ul>

        <form id="form1" runat="server">
            <asp:HiddenField runat="server" id="pageFadeOut"></asp:HiddenField>
            <asp:HiddenField runat="server" id="pageFadeIn"></asp:HiddenField>
            
            <h2 runat="server" id="orderTableTitle"> - Order - </h2>
            
            <div class="orderTableDiv">
                <asp:Table id="ordersTable" runat="server" CssClass="orderTable">

                    <asp:TableRow runat="server" id="cakeRow">
                        <asp:TableCell>
                            <div class="orderRow">
                                <asp:LinkButton OnClick= "cakeButton_Click" Font-Underline="false" ForeColor="Black" runat="server" Text="- Cakes -"></asp:LinkButton>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server" id="cupcakeRow">
                        <asp:TableCell>
                            <div class="orderRow">
                                <asp:LinkButton OnClick="cakeButton_Click" Font-Underline="false" ForeColor="Black" runat="server" Text="- Cupcakes -"></asp:LinkButton>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server" id="cheesecakeRow">
                        <asp:TableCell>
                            <div class="orderRow">
                                <asp:LinkButton OnClick="cakeButton_Click" Font-Underline="false" ForeColor="Black" runat="server" Text="- Cheesecake -"></asp:LinkButton>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server" id="cookiesRow">
                        <asp:TableCell>
                            <div class="orderRow">
                                <asp:LinkButton OnClick="cakeButton_Click" Font-Underline="false" ForeColor="Black" runat="server" Text="- Cookies -"></asp:LinkButton>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>

                <asp:Table runat="server" id="orderDetailsTable" CssClass = "orderDetailsTable">
                    
                    <asp:TableRow runat="server" id="occasionRow">
                        <asp:TableCell>
                            <div class="orderRow">
                                <asp:Label runat="server" id="occasionLbl" />
                                <asp:DropDownList runat="server" id="occasionDdl" CssClass="dropDownList" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server" id="dessertTypeRow">
                        <asp:TableCell>
                            <div class="orderRow">
                                <asp:Label runat="server" id="desertTypeLbl" />
                                <asp:DropDownList runat="server" id="desertTypeDdl" CssClass="dropDownList" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server" id="desertFlavorRow">
                        <asp:TableCell>
                            <div class="orderRow">
                                <asp:Label runat="server" id="desertFlavorLbl" />
                                <asp:DropDownList runat="server" id="desertFlavorDdl" CssClass="dropDownList" />
                            </div>
                        </asp:TableCell>
                    
                    <asp:TableRow runat="server" id="frostingTypeRow">
                        <asp:TableCell>
                            <div class="orderRow">
                                <asp:Label runat="server" id="frostingFlavorLbl" />
                                <asp:DropDownList runat="server" id="frostingFlavorDdl" CssClass="dropDownList" />
                            </div>
                        </asp:TableCell>

                        <asp:TableRow runat="server" id="servingSizeRow">
                        <asp:TableCell>
                            <div class="orderRow">
                                <asp:Label runat="server" id="servingSizeLbl" />
                                <asp:TextBox runat="server" id="servingSizeDdl" CssClass="textBox" />
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:TableRow>
                    
                </asp:Table>

            </div>
            <div align="center" class="orderBtnDiv">
                <asp:Button id="addItemBtn" CssClass="OrderFormBtn" runat="server" Text="Add Item" OnClick="addItemBtn_Click" />
                <asp:Button id="doneBtn" CssClass="OrderFormBtn" OnClick="addItemBtn_Click" runat="server" Text="Done" />
                <asp:Button id="checkOutBtn" CssClass="OrderFormChkBtn" runat="server" Text="Checkout" OnClick="addItemBtn_Click" />
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