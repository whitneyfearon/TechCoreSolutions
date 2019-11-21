using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechCoreSolutions.Models;

namespace TechCoreSolutions
{
    public partial class AddProduct : System.Web.UI.Page
    {
        TechEntities DBContext = new TechEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Context.User.Identity.GetUserName() != "admin@gmail.com")
            //{
            //    Response.Redirect("Default.aspx");
            //}

        }
        protected void AddProductButton_Click(object sender, EventArgs e)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/site/images/" + str));
            string Image = str;
            //string name = TextBox1.Text;
            // Add product data to DB.
            Product newProduct = new Product
            {
                productName = AddProductName.Text,
                //productDescription = AddProductIdentifier.Text,
                unitPrice = int.Parse(AddUnitPrice.Text),
                imageURL = Image
            };
            //newProduct.Date_Of_Birth = AddDOB.Text;
            DBContext.Products.Add(newProduct);
            DBContext.SaveChanges();
            Response.Write("<script>javascript:alert('Product Added  successfully');</script>");

            AddProductName.Text = "";
            AddUnitPrice.Text = "";
            //AddImageURL.Text = "";
        }
    }
}