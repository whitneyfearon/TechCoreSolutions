<%@ Page Title="Login" Language="C#" MasterPageFile="~/NestedLayout.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TechCoreSolutions.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphNestedHeader" runat="server">
    <b>LOGIN</b>
</asp:Content>
<asp:Content ID="loginBody" ContentPlaceHolderID="cphNestedHeaderBody" runat="server">
    <div class="container mt-5">
        <div class="pl-5">
            <div id="divAlert" Visible="false" runat="server" class="alert alert-danger text-center" role="alert">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <h4 class="pb-4">ALREADY HAVE A <b class="text-primary" style="font-size: xx-large">T</b>ECH CORE SOLUTIONS ACCOUNT?</h4>
            <section id="loginForm">
                <div class="form-horizontal">
<%--                    <asp:PlaceHolder runat="server" ID="ErrorMessage" >
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>--%>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email">Email</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control col-md-4" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control col-md-4" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn-primary btn" />
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                </p>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>

        <%--<div class="col-md-4">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>--%>
    </div>
</asp:Content>
