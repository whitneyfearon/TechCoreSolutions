<%@ Page Title="Register" Language="C#" MasterPageFile="~/NestedLayout.master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TechCoreSolutions.Account.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphNestedHeader" runat="server">
    <b>REGISTER</b>
</asp:Content>
<asp:Content ID="registerBody" ContentPlaceHolderID="cphNestedHeaderBody" runat="server">
    <div class="container mt-5">
        <div class="pl-5">
            <div id="divAlert" Visible="false" runat="server" class="alert alert-danger text-center" role="alert">
                <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <h4 class="pb-4">NO <b class="text-primary" style="font-size: xx-large">T</b>ECH CORE SOLUTIONS ACCOUNT YET?</h4>
            <div class="form-horizontal">
                <asp:ValidationSummary runat="server" CssClass="text-danger" />
                <div class="form-group">
                    <asp:Label ID="lblFirstName" runat="server">First Name <i class="text-danger">*</i></asp:Label>
                    <asp:TextBox ID="txtFirstName" CssClass="form-control col-md-4" runat="server"> </asp:TextBox>
                    <div class="pb-3">
                        <asp:RequiredFieldValidator ID="rfvFirstName" ControlToValidate="txtFirstName" runat="server"
                            ErrorMessage=" The First Name field is required." SetFocusOnError="True" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revFirstName" ControlToValidate="txtFirstName" runat="server"
                            ValidationExpression="^[a-zA-Z]+$" ErrorMessage="Please enter your first name." SetFocusOnError="True" CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblLastName" runat="server">Last Name <i class="text-danger">*</i></asp:Label>
                    <asp:TextBox ID="txtLastName" CssClass="form-control col-md-4" runat="server"> </asp:TextBox>
                    <div class="pb-3">
                        <asp:RequiredFieldValidator ID="rfvLastName" ControlToValidate="txtLastName" runat="server"
                            ErrorMessage=" The Last Name field is required." SetFocusOnError="True" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revLastName" ControlToValidate="txtLastName" runat="server"
                            ValidationExpression="^[a-zA-Z]+$" ErrorMessage="Please enter your last name." SetFocusOnError="True" CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblDob" runat="server">Date of Birth <i class="text-danger">*</i></asp:Label>
                    <asp:TextBox ID="txtDob" CssClass="form-control col-md-4" runat="server"> </asp:TextBox>
                    <div class="pb-3">
                        <asp:RequiredFieldValidator ID="revDob" runat="server" ControlToValidate="txtDob" ErrorMessage=" The Date of Birth field is required." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rgvDob" Type="Date" runat="server" ErrorMessage="Enter a date between 01/01/1919 to 12/31/2001" ControlToValidate="txtDob" CssClass="text-danger" Display="Dynamic" MaximumValue="12/31/2001" MinimumValue="01/01/1919" SetFocusOnError="True"></asp:RangeValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblPhoneNumber" runat="server">Phone Number</asp:Label>
                    <asp:TextBox ID="txtPhoneNumber" CssClass="form-control col-md-4" runat="server"> </asp:TextBox>
                    <div class="pb-3">
                        <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" ControlToValidate="txtPhoneNumber" ErrorMessage="Please enter a valid phone number." CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtEmail">Email <i class="text-danger">*</i></asp:Label>
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control col-md-4" TextMode="Email" />
                    <div class="pb-3">
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                            CssClass="text-danger" ErrorMessage="The email field is required." Display="Dynamic" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtPassword">Password <i class="text-danger">*</i></asp:Label>
                    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control col-md-4" />
                    <div class="pb-3">
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                            CssClass="text-danger" ErrorMessage="The password field is required." Display="Dynamic" />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password <i class="text-danger">*</i></asp:Label>
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control col-md-4" />
                    <div class="pb-4">
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                        <asp:CompareValidator runat="server" ControlToCompare="txtPassword" ControlToValidate="ConfirmPassword"
                            CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button runat="server" CssClass="btn btn-primary" OnClick="CreateUser_Click" Text="Register" />
                    <br />
                    <br />
                    <asp:HyperLink ID="hlLoginLog" NavigateUrl="~/Account/Login.aspx" runat="server">Sign In</asp:HyperLink>
                    If you already have an account.
                    <br />
                    <br />
                    <h6 class="text-primary text-left">
                        <asp:Label ID="lblCounter" runat="server"></asp:Label>
                    </h6>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
