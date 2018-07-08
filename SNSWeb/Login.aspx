<%@ Page Language="C#" Inherits="SNSWeb.Login" %>
    <!DOCTYPE html>
    <html>

    <head runat="server">
         <link href="SNSStyle.css" rel="stylesheet">
        <title>Login</title>
    </head>

    <body>
        <h1>SNS Cake Bakery</h1>
        
        <ul>
            <li><a class="NavLink" href="Login.aspx">Home</a></li>
            <li><a class="NavLink" href="Registration.aspx">Sign Up</a></li>
            <img class ="NavImg" src= "/Images/SNSlogo.png"/>
            <li><a class="NavLink" href="Order.aspx">Order</a></li>
            <li><a class="NavLink" href="about.asp">About</a></li>
            <li><img class ="Cart" src= "/Images/ovenIcon.png"/></li>
        </ul>
        <form id="form1" runat="server">

            <h2> - Login - </h2>
            <div class="registrationTablesDiv">
                <asp:Table runat="server" CssClass="loginTable">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Username:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox CssClass="textBox" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Password:</asp:TableCell>
                        <asp:TableCell runat="server">
                            <asp:TextBox CssClass="textBox" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell CssClass="forgotPassworkLink" HorizontalAlign="Center" ColumnSpan="4">
                            <asp:HyperLink>Forgot Password</asp:HyperLink>
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>
            </div>
            
            <div align="center" class="buttonDiv">
                <asp:Button id="button1" CssClass="RegistrationBtn" runat="server" Text="Sign in" />
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