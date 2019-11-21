using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TechCoreSolutions.Models;

namespace TechCoreSolutions.Logic
{
  public class AddProducts
  {
    public bool AddProduct(string ProductName, string ProductDesc, string ProductPrice, string ProductImagePath)
    {
      var myProduct = new Product();
      myProduct.productName = ProductName;
      myProduct.productDescription = ProductDesc;
      myProduct.unitPrice = Convert.ToDecimal(ProductPrice);
      myProduct.imageURL = ProductImagePath;
      //myProduct.CategoryID = Convert.ToInt32(ProductCategory);

      using (TechEntities _db = new TechEntities())
      {
        // Add product to DB.
        _db.Products.Add(myProduct);
        _db.SaveChanges();
      }
      // Success.
      return true;
    }
  }
}