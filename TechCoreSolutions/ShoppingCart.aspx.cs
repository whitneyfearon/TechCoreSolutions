using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechCoreSolutions.Logic;
using TechCoreSolutions.Models;

namespace TechCoreSolutions
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Total"] = lblTotal.Text;
          
                using (ShoppingCartActions usersShoppingCart = new ShoppingCartActions())
                {
                    decimal cartTotal = 0;
                    cartTotal = usersShoppingCart.GetTotal();
                    if (cartTotal > 0)
                    {
                        // Display Total.
                        lblTotal.Text = cartTotal.ToString();
                        //Session["Total"] = lblTotal.Text;
                        //lblTotal.Text = String.Format("{0:c}", cartTotal);
                        Session["Total"] = lblTotal.Text;
                    }
                    else
                    {
                        LabelTotalText.Text = "";
                        lblTotal.Text = "";
                        server.Text = "Shopping Cart is Empty";
                        UpdateBtn.Visible = false;
                        CheckoutImageBtn.Visible = false;


                    }
                }

            
        }

        public List<CartItem> GetShoppingCartItems()
        {
            ShoppingCartActions actions = new ShoppingCartActions();
            return actions.GetCartItems();
        }

        public List<CartItem> UpdateCartItems()
        {
            using (ShoppingCartActions usersShoppingCart = new ShoppingCartActions())
            {
                string cartId = usersShoppingCart.GetCartId();

                ShoppingCartActions.ShoppingCartUpdates[] cartUpdates = new ShoppingCartActions.ShoppingCartUpdates[CartList.Rows.Count];
                for (int i = 0; i < CartList.Rows.Count; i++)
                {
                    IOrderedDictionary rowValues = new OrderedDictionary();
                    rowValues = GetValues(CartList.Rows[i]);
                    cartUpdates[i].ProductId = Convert.ToInt32(rowValues["ProductID"]);

                    CheckBox cbRemove = new CheckBox();
                    cbRemove = (CheckBox)CartList.Rows[i].FindControl("Remove");
                    cartUpdates[i].RemoveItem = cbRemove.Checked;

                    TextBox quantityTextBox = new TextBox();
                    quantityTextBox = (TextBox)CartList.Rows[i].FindControl("PurchaseQuantity");
                    cartUpdates[i].PurchaseQuantity = Convert.ToInt16(quantityTextBox.Text.ToString());
                }
                usersShoppingCart.UpdateShoppingCartDatabase(cartId, cartUpdates);
                CartList.DataBind();
                lblTotal.Text = String.Format("{0:c}", usersShoppingCart.GetTotal());
                Session["Total"] = lblTotal.Text;
                return usersShoppingCart.GetCartItems();
            }
        }

        public static IOrderedDictionary GetValues(GridViewRow row)
        {
            IOrderedDictionary values = new OrderedDictionary();
            foreach (DataControlFieldCell cell in row.Cells)
            {
                if (cell.Visible)
                {
                    // Extract values from the cell.
                    cell.ContainingField.ExtractValuesFromCell(values, cell, row.RowState, true);
                }
            }
            return values;
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            UpdateCartItems();
            Response.Redirect("ShoppingCart.aspx");
        }

        protected void CheckoutBtn_Click(object sender, EventArgs e)
        {
            using (ShoppingCartActions usersShoppingCart =
              new ShoppingCartActions())
            {
                usersShoppingCart.EmptyCart();
            }

            CartList.Columns.Clear();
            LabelTotalText.Text = null;
            lblTotal.Text = null;
            UpdateBtn.Visible = false;
            CheckoutImageBtn.Visible = false;
            server.Text = "Shopping Cart is Empty";
            Response.Redirect("ShoppingCart.aspx");
        }
    }
}