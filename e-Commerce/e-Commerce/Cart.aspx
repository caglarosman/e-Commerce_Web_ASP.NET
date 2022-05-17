<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="e_Commerce.Cart" %>

<!DOCTYPE html>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="css/cart.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <title>e-Commerce Web - Shopping</title>
</head>
<body class="bg-dark">
    <form id="FormProductCartASPX" runat="server">

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

        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="card mt-5 ml-5" style="width: 58rem;">
                        <div class="row">
                            <div class="col-md-8 cart">
                                <div class="title">
                                    <div class="row">
                                        <div class="col">
                                            <h4><b>Shopping Cart</b></h4>
                                        </div>
                                        <div class="col align-self-center text-right text-muted">Total Products: <% =(totalNumberOfProductsInCart) %></div>
                                    </div>
                                </div>
                                <%

                                    for (int i = 0; i < productsInCart.Count; i++)
                                    {
                                %>
                                <div class="row border-top border-bottom">
                                    <div class="row main align-items-center">
                                        <div class="col-2">
                                            <img class="img-fluid" src="<% =("images/products/"+productsInCart[i].Productlmage) %>">
                                        </div>
                                        <div class="col">
                                            <div class="row text-muted"><% =(productsInCart[i].ProductBrand) %></div>
                                            <div class="row"><% =(productsInCart[i].ProductName) %></div>
                                        </div>
                                        <div class="col">
                                            <a href="#">-</a><a href="#" class="border"><% =(productsInCart[i].ProductBrand) %></a><a href="#">+</a>
                                        </div>
                                        <div class="col">$<% =(productsInCart[i].ProductPrice) %>  &nbsp;&nbsp;>&nbsp;&nbsp;  x<% =(howMany[i]) %> <span class="close">&#10005;</span></div>
                                    </div>
                                </div>
                                <%
                                    }

                                %>



                                <div class="back-to-shop"><a href="#">&leftarrow;</a><span class="text-muted">Back to shop</span></div>
                            </div>
                            <div class="col-md-4 summary">
                                <div>
                                    <h5><b>Summary</b></h5>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col" style="padding-left: 0;">Total Products: <% =(totalNumberOfProductsInCart) %></div>
                                    <div class="col text-right">$<% =(totalPrice) %></div>
                                </div>
                                <form>
                                    <p>SHIPPING</p>
                                    <select>
                                        <option class="text-muted">Standard-Delivery- $5.00</option>
                                    </select>
                                    <p>GIVE CODE</p>
                                    <input id="code" placeholder="Enter your code">
                                </form>
                                <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                                    <div class="col">TOTAL PRICE</div>
                                    <div class="col text-right">$<% =(totalPrice + 5) %></div>
                                </div>
                                <button class="btn">CHECKOUT</button>
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
