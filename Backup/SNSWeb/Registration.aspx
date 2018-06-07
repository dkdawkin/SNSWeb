<%@ Page Language="C#" Inherits="SNSWeb.Default" %>
    <%@ MasterType VirtualPath="~/SNSMaster.master" %>
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
                
                    <h2> - Register A New Account - </h2>
                    <div class="registrationTablesDiv">

                        <asp:Table runat="server" CssClass="RegistrationTable">

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">First Name:</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox CssClass="textBox" runat="server"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">Last Name:</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox CssClass="textBox" runat="server"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">Email Address:</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox CssClass="textBox" runat="server"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">Phone Number:</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox CssClass="textBox" runat="server"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

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

                            <asp:TableRow runat="server">
                                <asp:TableCell runat="server">Confirm Password:</asp:TableCell>
                                <asp:TableCell runat="server">
                                    <asp:TextBox CssClass="textBox" runat="server"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>

                        </asp:Table>

                    </div>
                    <div align="center" class="buttonDiv">
                        <asp:Button id="button1" CssClass="RegistrationBtn" runat="server" Text="Sign Up" OnClick="button1Clicked" />

                    </div>
                </form>
        <ul>
            <li><a class="bottomNavLink" href="Login.aspx">Home</a></li>
            <li><a class="bottomNavLink" href="Registration.aspx">Sign Up</a></li>
            <li><a class="bottomNavLink" href="contact.asp">Contact</a></li>
            <li><a class="bottomNavLink" href="about.asp">About</a></li>
        </ul>
         
        </body>

        </html>