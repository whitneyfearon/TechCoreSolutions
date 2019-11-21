<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="TechCoreSolutions.Products" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<asp:TextBox ID="txtSearch" AutoPostBack="true" runat="server" ToolTip="Search by part of ProductName"></asp:TextBox><asp:Button ID="btnSearch" Text="Search" runat="server" CausesValidation="false" OnClick="btnSearch_Click" />--%>
    <h4 class="text-center pl-5 pt-5 pr-5">ALL <b class="text-primary" style="font-size: xx-large">T</b>ECH CORE SOLUTIONS PRODUCTS</h4>
    <div>
          <% if (Context.User.Identity.GetUserName() == "admin@gmail.com")
                    { %>
                        <div class="text-left" style="padding-left: 65px">
                            <a href="AddProduct.aspx" class="btn btn-primary">Add New Product</a>
                        </div>
                <% } %>
        <asp:ListView ID="ProductList" ItemType="TechCoreSolutions.Models.Product" SelectMethod="GetSearchedItems"
            DataKeyNames="ProductId" UpdateMethod="UpdateProduct" DeleteMethod="DeleteProduct" InsertMethod="ProductList_InsertItem"
            OnSelectedIndexChanged="ProductList_SelectedIndexChanged" GroupItemCount="4" GroupPlaceholderID="groupPlaceholder1" ItemPlaceholderID="itemPlaceholder1" runat="server">
            <LayoutTemplate>              
                <div>
                    <div id="groupPlaceholder1" runat="server">
                    </div>
                </div>
                </table>                 
            </LayoutTemplate>
            <GroupTemplate>
                <div style="clear: both">
                    <div id="itemPlaceholder1" runat="server">
                    </div>
                </div>
            </GroupTemplate>
            <ItemTemplate>
                <div class="pl-5">
                    <div style="float: left" class="pl-3 pr-2 pt-3">
                        <div class="card card-hover" style="width: 18rem;">
                            <img src="site/images/<%# Item.imageURL%>" class="card-img-top" alt="...">
                            <input type="hidden" name="ProductId" value="<%# Item.productId%>" />
                            <div class="card-body">
                                <h6 class="card-title"><%# Item.productName %></h6>
                                <p class="card-text">
                                    <span class="font-italic font-weight-bold">JMD $<asp:Label ID="lblProducts" runat="server" Text="<%# Item.unitPrice%>"></asp:Label></span>
                                </p>
                                <%--<asp:Button ID="ProductButton" CommandName="Insert"  CssClass="btn btn-primary" runat="server" Text="Add Product" OnClick="ProductButton_Click" CommandArgument="<%# Item.productId%>" CausesValidation="true" />--%>
                                <%-- <button data-toggle="modal" data-target="#successModal" data-name="<%# Item.productDescription%>" data-price="<%# Item.unitPrice%>" class="add-to-cart btn btn-primary reveal">Add to cart</button>--%>

                                <% if (Context.User.Identity.GetUserName() == "admin@gmail.com")
                                    { %>
                                        <asp:Button CommandName="Edit" Text="Edit" ToolTip="Edit this product" CausesValidation="false" CssClass="btn btn-primary reveal" runat="server" />
                                        <asp:Button CommandName="Delete" Text="Delete" ToolTip="Delete this product" CausesValidation="false" CssClass="btn btn-primary reveal" OnClientClick="javascript:return confirm('Are you sure to delete record?')" runat="server" />

                                <% }
                                    else if(Context.User.Identity.IsAuthenticated == false)
                                    { %>
                                <asp:Button runat="server" Text="Add To Cart" ID="btnAdd" Cssclass="btn btn-primary reveal" onclick="ProductButton_Click" />
                                        
                                <%}else
                                    { %>
                                        <a class="btn btn-primary reveal" href="/AddToCart.aspx?productID=<%#:Item.productId %>"><span data-toggle="modal" data-target="#successModal">Add To Cart</span></a>
                                        
                                <%} %>
                            </div>
                        </div>
                    </div>
                </div>

            </ItemTemplate>
            <EditItemTemplate>
                <div class="pl-5">
                    <div style="float: left" class="pl-3 pr-2 pt-3">
                        <div class="card-body card-hover" style="width: 18rem;">
                            <b class="font-italic text-primary">EDITING IN PROCESS</b>
                            <br />
                            <br />
                            <br />
                            Image:
                            <br />
                            <asp:TextBox ID="txtImage" runat="server"
                                TextMode="SingleLine" Text='<%# BindItem.imageURL%>' Visible="false" />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:Label ID="Label1" runat="server"></asp:Label> 
                            <br />
                            <br />
                            Product Name:
                        <asp:TextBox ID="txtPName" runat="server"
                            TextMode="SingleLine" Text='<%# BindItem.productName %>' />
                            <br />
                            <br />
                            Unit Price:<br />
                            <asp:TextBox ID="txtUnitPrice" runat="server"
                                TextMode="SingleLine" Text='<%# BindItem.unitPrice%>' /></h5>
                         <br />
                            <br />
                            <br />
                            <div class="card-body">
                                <asp:Button CommandName="Update" Text="Update" CausesValidation="false" CssClass="btn btn-primary" runat="server" />
                                <asp:Button CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-primary" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </EditItemTemplate>
        </asp:ListView>
        <div style="clear: both;" class="pt-5 text-center">
            <asp:DataPager ID="DataPager1" PagedControlID="ProductList" PageSize="20" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary" ButtonType="Button"
                        ShowFirstPageButton="true" ShowPreviousPageButton="true"
                        ShowNextPageButton="false" ShowLastPageButton="false" />
                    <asp:NumericPagerField ButtonType="Link" />
                    <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary" ButtonType="Button"
                        ShowLastPageButton="true" ShowNextPageButton="true"
                        ShowFirstPageButton="false" ShowPreviousPageButton="false" />
                </Fields>
            </asp:DataPager>
        </div>
    </div>
</asp:Content>

