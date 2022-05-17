<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="e_Commerce.Default" %>

<system.webserver>
    <directorybrowse enabled="true" />
</system.webserver>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
    <title>e-Commerce Web - Shopping</title>
</head>
<body class="bg-dark">
    <form id="FormDefaultASPX" runat="server">

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

                <asp:TextBox ID="TextBoxSearch" runat="server" CssClass="form-control mr-sm-2 ml-5" placeholder="Search among millions of products"></asp:TextBox>
                <asp:Button ID="ButtonSearch" runat="server" Text="Search" CssClass="btn btn-outline-dark my-2 my-sm-0 ml-1 mr-5" />

            </div>
        </nav>


        <div class="container bg-dark mt-5 pt-5">
            <% counter = 0; %>
            <div class="row">
                <div class="col-3">
                    <div class="card bg-light mb-3" style="max-width: 18rem;" id="testid" runat="server">
                        <div class="card-header font-weight-bold">Welcome <% =(FirstName + " " + LastName + "!") %></div>
                        <div class="card-body">
                            <img src="images/web/shopping_basket.svg" class="img-fluid ml-5" alt="Shopping Basket" style="width: 50%;">
                            <p class="card-text mt-3">e-Commerce Web wishes you pleasant shopping.</p>
                            <div class="row">
                                <asp:Button ID="ButtonLogout" runat="server" CssClass="btn btn-dark ml-4 mr-2" Text="Logout" OnClick="ButtonLogout_Click" />
                                <asp:Button ID="ButtonGotoCart" runat="server" CssClass="btn btn-dark" Text="Go to Cart" OnClick="ButtonGotoCart_Click" />
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-9">
                    <div class="row">
                        <%
                            for (int i = 0; i < virtualDatabase.Products.Count; i++)
                            {
                        %>

                        <div class="card mr-3 mb-3 border border-dark" style="width: 16rem;">
                            <img src="<% =("images/products/" + virtualDatabase.Products[i].Productlmage) %>" class="card-img-top mx-auto mt-2" style="width: 70%;" alt="...">
                            <div class="card-body d-flex flex-column">
                                <div class="row">
                                <% string shortProductName = virtualDatabase.Products[i].ProductName.Length > 20 ? virtualDatabase.Products[i].ProductName.Substring(0, 20) + "..." : virtualDatabase.Products[i].ProductName; %>

                                    <h5 class="card-title mx-auto px-3"><% =(shortProductName) %> </h5>
                                </div>

                                <% string shortDesciption = virtualDatabase.Products[i].ProductDecription.Length > 70 ? virtualDatabase.Products[i].ProductDecription.Substring(0, 70) + "..." : virtualDatabase.Products[i].ProductDecription; %>
                                <p class="card-text"><% =(shortDesciption) %></p>
                                <div class="row  mt-auto" runat="server" id="div_ttt">

                                    <h4 class="card-title ml-3 mt-1">$<% =(virtualDatabase.Products[counter].ProductPrice) %></h4>
                                    <% 

                                        //string tmp = "<asp:Button ID='ButtonViewProduct' Text='2' runat='server' CssClass='align-self-end btn btn-dark ml-auto mr-2' OnClick='ButtonViewProduct_Click' />";
                                        string tmp = "<input id='" + virtualDatabase.Products[counter].ProductID + "' type='button' value='View product' class='btn btn-dark' onclick=\"location.href='ProductInfo.aspx?id=" + virtualDatabase.Products[counter].ProductID + "';\" />";

                                        div_btn.InnerHtml = tmp;
                                        counter++;
                                    %>
                                    <div runat="server" id="div_btn" class="ml-auto mr-3 align-self-end"></div>

                                    <%--<asp:Button ID="ButtonViewProduct" Text="View product" runat="server" CssClass="align-self-end btn btn-dark ml-auto mr-2" OnClick="ButtonViewProduct_Click" />--%>
                                </div>
                            </div>
                        </div>

                        <%
                            }

                        %>
                    </div>

                </div>
            </div>
        </div>




        <%--<div id="div_adRotator" class="mt-5" style="background: #ffffff; width: 100%; height: 180px;">--%>
            <asp:AdRotator ID="AdRotatorDefaultPage" runat="server" AdvertisementFile="~/AdRotate.xml" CssClass="mt-5" />
        <%--</div>--%>


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

        <!-- Remove the container if you want to extend the Footer to full width. -->
        <div class="container-fluid mt-3">
            <!-- Footer -->
            <footer
                class="text-center text-lg-start text-white"
                style="background-color: #3e4551">
                <!-- Grid container -->
                <div class="container p-4 pb-0">
                    <!-- Section: Links -->
                    <section class="">
                        <!--Grid row-->
                        <div class="row">
                            <!--Grid column-->
                            <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">e-Commerce Web</h5>

                                <p>
                                    We were established in 2022 to provide our customers and vendors with a flawless e-commerce experience.                            
                                </p>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-lg-2 col-md-6 mb-4 mb-md-0 ml-auto">
                                <h5 class="text-uppercase">Social Media</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#!" class="text-white">Twitter</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Facebook</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Instagram</a>
                                    </li>

                                </ul>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-lg-2 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">Partners</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#!" class="text-white">e-Commerce Web</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">e-Commerce Fast</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">e-Commerce Mobile</a>
                                    </li>
                                </ul>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-lg-2 col-md-6 mb-4 mb-md-0">
                                <h5 class="text-uppercase">About us</h5>

                                <ul class="list-unstyled mb-0">
                                    <li>
                                        <a href="#!" class="text-white">Who are we?</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Contact</a>
                                    </li>
                                    <li>
                                        <a href="#!" class="text-white">Partners</a>
                                    </li>
                                </ul>
                            </div>
                            <!--Grid column-->


                            <!--Grid column-->
                        </div>
                        <!--Grid row-->
                    </section>
                    <!-- Section: Links -->

                    <hr class="mb-4" />

                    <!-- Section: CTA -->
                    <section class="">
                        <p class="d-flex justify-content-center align-items-center">
                            <span class="me-3">Register for free!</span>
                            <asp:Button ID="ButtonSignup" runat="server" CssClass="btn btn-outline-light btn-rounded ml-3" Text="Sign up!" OnClick="ButtonSignup_Click" />
                        </p>
                    </section>
                    <!-- Section: CTA -->

                    <hr class="mb-4" />

                    <!-- Section: Social media -->
                    <section class="mb-4 text-center">
                        <!-- Google -->
                        <a
                            class="btn btn-outline-light btn-floating m-1"
                            href="#!"
                            role="button">
                            <img src="images/icons/google-glass-logo.png"></a>

                        <!-- Facebook -->
                        <a
                            class="btn btn-outline-light btn-floating m-1"
                            href="#!"
                            role="button">
                            <img src="images/icons/facebook-logo.png"></a>

                        <!-- Twitter -->
                        <a
                            class="btn btn-outline-light btn-floating m-1"
                            href="#!"
                            role="button">
                            <img src="images/icons/twitter.png"></a>

                        <!-- Instagram -->
                        <a
                            class="btn btn-outline-light btn-floating m-1"
                            href="#!"
                            role="button">
                            <img src="images/icons/instagram.png"></a>

                    </section>
                    <!-- Section: Social media -->
                </div>
                <!-- Grid container -->

                <!-- Copyright -->
                <div
                    class="text-center p-3"
                    style="background-color: rgba(0, 0, 0, 0.2)">
                    © 2020 Copyright:
      <a class="text-white" href="https://google.com">e-Commerce Web</a>
                </div>
                <!-- Copyright -->
            </footer>
            <!-- Footer -->
        </div>
        <!-- End of .container -->
    </form>

</body>
</html>
