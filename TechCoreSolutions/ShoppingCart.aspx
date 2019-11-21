<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="TechCoreSolutions.ShoppingCart" %>
<asp:Content ID="cartsBody" ContentPlaceHolderID="MainContent" runat="server">
   <asp:Literal ID="server" runat="server"><h4 id="ShoppingCartTitle" class="text-center p-5"><b class="text-primary" style="font-size: xx-large">T</b>ECH CORE SOLUTIONS CART</h4></asp:Literal>
    <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
        ItemType="TechCoreSolutions.Models.CartItem" SelectMethod="GetShoppingCartItems" 
        CssClass="table table-striped table-bordered">   
        <Columns>
        <asp:BoundField DataField="ProductID" HeaderText="ID" SortExpression="ProductID" />
        <asp:BoundField DataField="Product.productName" HeaderText="Name" />        
        <asp:BoundField DataField="Product.unitPrice" HeaderText="Price (each)" DataFormatString="{0:c}"/>  
        <asp:TemplateField   HeaderText="Quantity">            
                <ItemTemplate>
                    <asp:TextBox ID="PurchaseQuantity" TextMode="Number" Width="40" runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox> 
                </ItemTemplate>        
        </asp:TemplateField>    
        <asp:TemplateField HeaderText="Item Total">            
                <ItemTemplate>
                    <%#: String.Format("{0:c}", ((Convert.ToDouble(Item.Quantity)) *  Convert.ToDouble(Item.Product.unitPrice)))%>
                </ItemTemplate>        
        </asp:TemplateField> 
        <asp:TemplateField HeaderText="Remove Item">            
                <ItemTemplate>
                    <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
                    
                </ItemTemplate>        
        </asp:TemplateField>
        </Columns>        
    </asp:GridView>
    <div>
        <p></p>
        <strong>
            <asp:Label ID="LabelTotalText" runat="server" Text="Order Total: "></asp:Label>
            <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
        </strong> 
    </div>
    <br />
    <table> 
    <tr>
      <td>
        <asp:Button ID="UpdateBtn" CssClass="btn btn-primary" runat="server" Text="Update" OnClick="UpdateBtn_Click" />
      </td>
      <td>
          <%--<asp:Button ID="CheckoutImageBtn"  OnClick="CheckoutBtn_Click" runat="server" Text="Checkout" />--%>
          <asp:Button ID="CheckoutImageBtn" CssClass="btn btn-primary" runat="server" text="Checkout" onclick="CheckoutBtn_Click" onclientclick="return confirm('Are you sure you want to checkout?');" />

      </td>
    </tr>
    </table>

</asp:Content>

