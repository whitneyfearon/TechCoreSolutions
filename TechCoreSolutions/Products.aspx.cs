using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechCoreSolutions.Models;
using System.Web.ModelBinding;

namespace TechCoreSolutions
{
    public partial class Products : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //FileUpload fuimage = (FileUpload)ProductList.EditItem.FindControl("fuimage");
            //string str = fuimage.FileName;
            //fuimage.PostedFile.SaveAs(Server.MapPath("~/site/images/" + str));
            //string Image = str;
        }

        TechEntities DBContext = new TechEntities();

        public IQueryable<Product> GetSearchedItems([Control("txtSearch")]string Search)
        {
            //As there is no search word is given so listview is populated with all records sorted by First Name
            IQueryable<Product> query = DBContext.Products.OrderBy(emp => emp.productName);

            if (!string.IsNullOrEmpty(Search))
            {
                query = query.Where(emp => emp.productName.Contains(Search));

            }
            return query;
        }
        //protected IQueryable<Product> cart(string productName)
        //{
        //    IQueryable<Product> query = DBContext.Products.OrderBy(emp => emp.productName);

        //    if (!string.IsNullOrEmpty(productName))
        //    {
        //        query = query.Where(emp => emp.productName.Contains(productName));

        //    }
        //    return query;

        //}

        protected void ProductButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login.aspx");


            //// Add product data to DB.
            // Add product data to DB.
            //Product newProduct = new Product();
            ////newProduct.productId = int.Parse(AddProductId.Text);
            ////newProduct.productId = int.Parse(AddProductId.Text);
            //newProduct.productName = AddProductName.Text;
            //newProduct.productDescription = AddProductIdentifier.Text;
            //newProduct.unitPrice = int.Parse(AddUnitPrice.Text);
            //newProduct.imageURL = AddImageURL.Text;
            ////newProduct.Date_Of_Birth = AddDOB.Text;
            //DBContext.Products.Add(newProduct);
            //DBContext.SaveChanges();
            //Response.Write("<script>javascript:alert('Product Added  successfully');</script>");

            //AddProductName.Text = "";
            //AddUnitPrice.Text = "";
            //AddImageURL.Text = "";
        }

        //public Product Details(int? id)
        //{

        //    var documentType = DBContext.Products
        //        .FirstOrDefault(m => m.productId == id);


        //    return documentType;
        //}

        public void DeleteProduct(int productId)
        {
            Product oProduct = DBContext.Products.Find(productId);
            DBContext.Products.Remove(oProduct);
            try
            {
                DBContext.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                throw raise;
            }

            Response.Write("<script>javascript:alert('Product Deleted successfully');</script>");


        }

        protected void ProductList_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProductList.DataBind();
            Response.Write("<script>Window.location.reload()</script>");

        }

        public void UpdateProduct(Product modifiedProduct)
        {
            TextBox txt = (TextBox)ProductList.EditItem.FindControl("txtImage");

            FileUpload FileUpload1 = (FileUpload)ProductList.EditItem.FindControl("FileUpload1");
            //string str = FileUpload1.FileName;

            if (FileUpload1.HasFile == false)
            {
                string str = txt.Text;
                //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/site/images/" + str));
                string Image = str;
                Product oProduct = DBContext.Products.FirstOrDefault(i => i.productId == modifiedProduct.productId);
                //oProduct.productId = modifiedProduct.productId;
                oProduct.productName = modifiedProduct.productName;
                oProduct.unitPrice = modifiedProduct.unitPrice;
                oProduct.imageURL = str;
                DBContext.SaveChanges();
                Response.Write("<script>javascript:alert('Product Updated successfully');</script>");

            }
            else
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/site/images/" + str));
                string Image = str;
                Product oProduct = DBContext.Products.FirstOrDefault(i => i.productId == modifiedProduct.productId);
                //oProduct.productId = modifiedProduct.productId;
                oProduct.productName = modifiedProduct.productName;
                oProduct.unitPrice = modifiedProduct.unitPrice;
                oProduct.imageURL = str;
                DBContext.SaveChanges();
                Response.Write("<script>javascript:alert('Product Updated successfully');</script>");

            }
               
        }

    }
}