using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Commerce
{
    public partial class Cart : System.Web.UI.Page
    {
        public int totalNumberOfProductsInCart = ShoppingBasket.totalNumberOfProductsInCart;
        public double totalPrice = 0;
        public List<Product> productsInCart = ShoppingBasket.productsInCart;
        public List<int> howMany = ShoppingBasket.howMany;
        public List<int> productIDsForItemsInCart = ShoppingBasket.productIDsForItemsInCart;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            totalNumberOfProductsInCart = ShoppingBasket.totalNumberOfProductsInCart;

            for (int i = 0; i < productsInCart.Count; i++)
            {
                totalPrice += productsInCart[i].ProductPrice * howMany[i];
            }
        }
    }
}