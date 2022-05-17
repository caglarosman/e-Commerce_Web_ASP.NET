using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_Commerce
{
    public static class ShoppingBasket
    {
        public static List<int> howMany = new List<int>();
        public static List<int> productIDsForItemsInCart = new List<int>();
        public static List<Product> productsInCart = new List<Product>();
        public static int totalNumberOfProductsInCart = 0;
        public static VirtualDatabase virtualDatabase = new VirtualDatabase();
        

        public static void IncreaseItemCountInCart(int productID)
        {
            if (productIDsForItemsInCart.Contains(productID))
            {
                int index = productIDsForItemsInCart.IndexOf(productID);
                howMany[index]++;
            }
            else
            {
                productIDsForItemsInCart.Add(productID);
                howMany.Add(1);

                Product product = new Product();
                foreach (Product tmp in virtualDatabase.Products)
                {
                    if(tmp.ProductID == productID)
                    {
                        product = tmp;
                        break;
                    }
                }

                productsInCart.Add(product);
            }
            totalNumberOfProductsInCart++;
        }

        public static void DecreaseItemCountInCart(int productID)
        {
            if (productIDsForItemsInCart.Contains(productID))
            {
                int index = productIDsForItemsInCart.IndexOf(productID);
                if (howMany[index] == 1)
                {
                    howMany.RemoveAt(index);
                    productIDsForItemsInCart.RemoveAt(index);
                    productsInCart.RemoveAt(index);
                }
                else
                {
                    howMany[index]--;
                }
            }
            totalNumberOfProductsInCart--;
        }

        public static void ClearBasket()
        {
            howMany.Clear();
            productIDsForItemsInCart.Clear();
            productsInCart.Clear();
        }
    }
}