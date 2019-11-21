<%@ Page Title="Add Products" Language="C#" MasterPageFile="~/NestedLayout.master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="TechCoreSolutions.AddProduct" %>
<asp:Content ID="cNestedHeader" ContentPlaceHolderID="cphNestedHeader" runat="server">
    <b>NEW PRODUCT</b>
</asp:Content>
<asp:Content ID="registerBody" ContentPlaceHolderID="cphNestedHeaderBody" runat="server">
    <div class="container mt-5">
        <div class="pl-5">
            <h4 class="pb-4">ADD NEW <b class="text-primary" style="font-size: xx-large">T</b>ECH CORE SOLUTIONS PRODUCT</h4>
            <div class="form-group">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="LabelAddImageURL" runat="server">Image URL:</asp:Label>
                            <br />
                            <br />
                        </td>

                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:Label ID="Label1" runat="server"></asp:Label> 
                            <%--<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" /> --%>
                            <%--<asp:TextBox ID="AddImageURL" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" Text="* First name required." ControlToValidate="AddImageURL" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                            --%><br />
                            <br />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="LabelAddPName" runat="server">Product Name:</asp:Label>
                            <br />
                            <br />
                        </td>

                        <td>
                            <asp:TextBox ID="AddProductName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator5" runat="server" Text="* Product name required." ControlToValidate="AddProductName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                        </td>
                    </tr>

                    <%--<tr>
                        <td>
                            <asp:Label ID="LabelProductIdentifier" runat="server">Product Identifier:</asp:Label>
                            <br />
                            <i class="text-primary" style="font-size: small">(Preferred Format: word-word)</i> &nbsp;
                            <br />

                        </td>

                        <td>
                            <asp:TextBox ID="AddProductIdentifier" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" Text="* Product Identifier required." ControlToValidate="AddProductIdentifier" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="revProductIdentifier" ControlToValidate="AddProductIdentifier" runat="server" ValidationExpression="^[a-zA-Z0-9-]+$" ErrorMessage="No spaces allowed. Only special character allowed is - " SetFocusOnError="True" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>--%>

                    <tr>
                        <td>
                            <asp:Label ID="LabelAddUnitPrice" runat="server">Unit Price:</asp:Label>
                            <br />
                            <br />
                        </td>
                        <td>
                            <asp:TextBox ID="AddUnitPrice" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" runat="server" Text="* Unit Price required." ControlToValidate="AddUnitPrice" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <p></p>
                <p></p>
                <asp:Button ID="AddProductButton" CssClass="btn btn-primary" runat="server" Text="Add Product" OnClick="AddProductButton_Click" CausesValidation="true" />

            </div>
        </div>
    </div>
</asp:Content>

