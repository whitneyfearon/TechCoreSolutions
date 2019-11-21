<%@ Page Title="About Us" Language="C#" MasterPageFile="~/NestedLayout.master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TechCoreSolutions.About1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphNestedHeader" runat="server">
    <b>ABOUT US</b>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphNestedHeaderBody" runat="server">
     <div class="container-fluid">
        <div class="row pl-5 pt-5">
            <div class="col">
                <br />
                <asp:Image ID="imgAbout" CssClass="pr-5" ImageUrl="~/site/images/about.png" runat="server" Height="300px" Width="600px" />
            </div>
            <div class="col">
                <br />
                <h4>ABOUT <b class="text-primary" style="font-size: xx-large">T</b>ECH CORE SOLUTIONS</h4>
                <br />
                <br />
                <asp:Label Font-Size="Large" runat="server">At Tech Core Solutions, we believe that the power of Tech can change the world.</asp:Label>
                <br />
                <br />
                <asp:Label Font-Italic="true" runat="server"><b class="text-primary" style="font-size: x-large">Jamaica's Largest Tech Store</b></asp:Label>
                <br />
                <br />
                <asp:Label runat="server">
                Founded in 2019 and based in Kingston, Jamaica, Tech Core Solutions was created to provide lower and middle class Jamaicans with easy access to high quality tech products at a reasonable cost.        
                </asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
