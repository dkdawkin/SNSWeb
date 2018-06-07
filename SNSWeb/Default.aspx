<%@ Page Language="C#" Inherits="Home.Default" %>
    <!DOCTYPE html>
    <html>

    <head runat="server">
        <link href="SNSStyle.css" rel="stylesheet">
        <title>Registration</title>
    </head>

    <body>
        <h1>SNS Cake Bakery</h1>

        <ul>
            <li><a class="NavLink" href="Login.aspx">Home</a></li>
            <li><a class="NavLink" href="Registration.aspx">Sign Up</a></li>
            <img class ="NavImg" src= "/Images/SNSlogo.png"/>
            <li><a class="NavLink" href="Order.aspx">Order</a></li>
            <li><a class="NavLink" href="about.asp">About</a></li>
        </ul>

        <form id="form1" runat="server">
            <h2> - Welcome - </h2>
            <div class="registrationTablesDiv">

            </div>
            <div align="center" class="buttonDiv">
                <asp:Button id="button1" CssClass="RegistrationBtn" runat="server" Text="Sign Up" OnClick="button1Clicked" />

            </div>
        </form>
        <ul>
            <li><a class="bottomNavLink" href="Login.aspx">Home</a></li>
            <li><a class="bottomNavLink" href="Registration.aspx">Sign Up</a></li>
            <li><a class="bottomNavLink" href="order.aspx">Order</a></li>
            <li><a class="bottomNavLink" href="about.asp">About</a></li>
        </ul>
    </body>

    </html>