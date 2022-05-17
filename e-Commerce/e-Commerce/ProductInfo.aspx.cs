using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Commerce
{
    public partial class ProductInfo : System.Web.UI.Page
    {
        public static string FirstName, LastName;
        public static int selectedProductID = 1000;
        public static Product selectedProduct = new Product();
        public static VirtualDatabase virtualDatabase = new VirtualDatabase();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.Cookies["User"] != null)
                {
                    HttpCookie cookie = Request.Cookies["User"];
                    FirstName = cookie["FirstName"];
                    LastName = cookie["LastName"];
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception) { }

            string tmpStrID = Request.QueryString["id"];
            selectedProductID = Convert.ToInt32(tmpStrID);
            selectedProduct = virtualDatabase.GetProductByID(selectedProductID);

            if (selectedProductID == null || selectedProductID <= 0 || selectedProduct.ProductDecription == "ERROR!")
            {
                ButtonAddToCart.Enabled = false;
            }
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            try
            {
                if (Request.Cookies["User"] != null)
                {
                    HttpCookie cookie = Request.Cookies["User"];
                    cookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cookie);
                }
            }
            catch (Exception) { }

            ShoppingBasket.ClearBasket();
            Response.Redirect("Login.aspx");
        }

        protected void ButtonAddToCart_Click(object sender, EventArgs e)
        {
            ShoppingBasket.IncreaseItemCountInCart(selectedProductID);
            div_alertSuccess.Visible = true;
        }

        protected void ButtonGoToCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void ButtonGotoShopping_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}