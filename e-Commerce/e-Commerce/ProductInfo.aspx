<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductInfo.aspx.cs" Inherits="e_Commerce.ProductInfo" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <title>e-Commerce Web - Shopping</title>
</head>
<body class="bg-dark">
    <form id="FormProductInfoASPX" runat="server">

        <nav class="navbar navbar-expand-lg navbar-light bg-light border-dark border-bottom fixed-top">
            <a class="navbar-brand" href="Default.aspx">e-Commerce Web</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="Default.aspx">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Default.aspx">Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Default.aspx">About</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container bg-dark mt-5 pt-5">

            <div class="row">
                <div class="col-3">
                    <div class="card bg-light mb-3" style="max-width: 18rem;">
                        <div class="card-header font-weight-bold">Welcome <% =(FirstName + " " + LastName + "!") %></div>
                        <div class="card-body">
                            <img src="images/web/shopping_basket.svg" class="img-fluid ml-5" alt="Shopping Basket" style="width: 50%;">
                            <p class="card-text mt-3">e-Commerce Web wishes you pleasant shopping.</p>
                            <div class="row">
                                <asp:Button ID="ButtonLogout" runat="server" CssClass="btn btn-dark ml-2" Text="Logout" OnClick="ButtonLogout_Click" />
                                <asp:Button ID="ButtonGotoShopping" runat="server" CssClass="btn btn-dark ml-2" Text="Go to Shopping" OnClick="ButtonGotoShopping_Click" />


                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-9">
                    <div class="row">


                        <div class="card mr-3 mb-3 border border-dark mx-auto" style="width: 26rem;">
                            <img src="<% =("images/products/"+selectedProduct.Productlmage) %>" class="card-img-top mx-auto mt-2" style="width: 70%;" alt="...">
                            <div class="card-body d-flex flex-column">
                                <div class="row">
                                    <h5 class="card-title mx-auto px-3" style="font-size: 26px;"><% =(selectedProduct.ProductName) %> - <strong style="font-size: 30px;">$<% =(selectedProduct.ProductPrice) %></strong> </h5>
                                </div>

                                <div class="row">
                                    <p class="card-text ml-3 mr-3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID:</strong> <% =(selectedProduct.ProductID) %></p>
                                </div>

                                <div class="row">
                                    <p class="card-text ml-3 mr-3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Brand:</strong> <% =(selectedProduct.ProductBrand) %></p>
                                </div>
                                <div class="row">
                                    <p class="card-text ml-3 mr-3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quantity:</strong> <% =(selectedProduct.ProductQuantity) %></p>
                                </div>
                                <div class="row">
                                    <p class="card-text ml-3 mr-3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;Category:</strong> <% =(selectedProduct.ProductCategoryName) %></p>
                                </div>
                                <div class="row">
                                    <p class="card-text ml-3 mr-3"><strong>Description:</strong> <% =(selectedProduct.ProductDecription) %></p>
                                </div>
                                <div id="div_alertSuccess" class="alert alert-dark mt-2" role="alert" runat="server" visible="false">
                                    The product has been added to your cart!
                                </div>
                                <asp:Button ID="ButtonAddToCart" runat="server" Text="Add to Cart" CssClass="btn btn-dark mt-1" OnClick="ButtonAddToCart_Click" />
                                <asp:Button ID="ButtonGoToCart" runat="server" Text="Go to Cart" CssClass="btn btn-dark mt-1" OnClick="ButtonGoToCart_Click" />
                                <asp:Button ID="ButtonReturnToShopping" runat="server" Text="Return to Shopping" OnClick="ButtonGotoShopping_Click" CssClass="btn btn-dark mt-1" />
                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </div>
    </form>


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
</body>
</html>
