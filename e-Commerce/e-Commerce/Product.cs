using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_Commerce
{
    public class Product
    {
        private int productID;
        private string productName;
        private double productPrice;
        private string productlmage;
        private string productDecription;
        private string productBrand;
        private int productQuantity;
        private string productCategoryName;

        public int ProductID { get => productID; set => productID = value; }
        public string ProductName { get => productName; set => productName = value; }
        public double ProductPrice { get => productPrice; set => productPrice = value; }
        public string Productlmage { get => productlmage; set => productlmage = value; }
        public string ProductDecription { get => productDecription; set => productDecription = value; }
        public string ProductBrand { get => productBrand; set => productBrand = value; }
        public int ProductQuantity { get => productQuantity; set => productQuantity = value; }
        public string ProductCategoryName { get => productCategoryName; set => productCategoryName = value; }

        public Product(int ProductID, string ProductName, double ProductPrice,
        string Productlmage, string ProductDecription, string ProductBrand,
        int ProductQuantity, string ProductCategoryName
        )
        {
            this.ProductID = ProductID;
            this.ProductName = ProductName;
            this.ProductPrice = ProductPrice;
            this.Productlmage = Productlmage;
            this.ProductDecription = ProductDecription;
            this.ProductBrand = ProductBrand;
            this.ProductQuantity = ProductQuantity;
            this.ProductCategoryName = ProductCategoryName;
        }

        public Product()
        {
            this.ProductID = 0;
            this.ProductName = "Invalid Product!";
            this.ProductPrice = 0;
            this.Productlmage = "invalid_product.svg";
            this.ProductDecription = "ERROR!";
            this.ProductBrand = "ERROR!";
            this.ProductQuantity = 0;
            this.ProductCategoryName = "ERROR!";
        }

    }
}