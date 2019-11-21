<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TechCoreSolutions._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header>   
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <!-- Slide One - Set the background image for this slide in the line below -->
                <div class="carousel-item active" style="background-image: url('site/images/slide1.jpeg')">
                    <div class="carousel-caption d-none d-md-block">
                        <%--<h2 class="display-4">First Slide</h2>
          <p class="lead">This is a description for the first slide.</p>--%>
                    </div>
                </div>
                <!-- Slide Two - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('site/images/slide2.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <%-- <h2 class="display-4">Second Slide</h2>
          <p class="lead">This is a description for the second slide.</p>--%>
                    </div>
                </div>
                <!-- Slide Three - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('site/images/slide3.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <%-- <h2 class="display-4">Third Slide</h2>
          <p class="lead">This is a description for the third slide.</p>--%>
                    </div>
                </div>

                <div class="carousel-item" style="background-image: url('site/images/slide4.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <%--<h2 class="display-4">First Slide</h2>
          <p class="lead">This is a description for the first slide.</p>--%>
                    </div>
                </div>

            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </header>
    <%--<div id="divAlert" runat="server" class="alert alert-success text-center" role="alert">
                <asp:Label ID="divSuccess" runat="server"></asp:Label>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>--%>
    <div class="container">
        <div class="row pt-5">              
            <div>
                <h3 class="text-center">TRENDING PRODUCTS</h3>
                <ul class="nav nav-tabs pt-3 font-weight-bold">
                    <li class="nav-item"><a class="nav-link tabs active" data-toggle="tab" href="#tab-1" role="tab">SMARTPHONES AND TABLETS</a></li>
                    <li class="nav-item"><a class="nav-link tabs" data-toggle="tab" href="#tab-2" role="tab">LAPTOP AND COMPUTERS</a></li>
                    <li class="nav-item"><a class="nav-link tabs" data-toggle="tab" href="#tab-3" role="tab">CAMERAS AND PHOTOGRAPHY</a></li>
                    <li class="nav-item"><a class="nav-link tabs" data-toggle="tab" href="#tab-4" role="tab">OTHERS</a></li>
                </ul>
                <div class="card-tabs-1">
                    <div class="pb-2">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab-1">
                                <div class="card-deck">
                                    <div class="card card-hover">
                                        <asp:Image ID="imgIphone11" CssClass="card-img-top" ImageUrl="~/site/images/iphone11.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">iPhone 11 Pro Max 512GB</h6>
                                            <%-- <p class="card-text">
                                                <asp:Label ID="lblIphone11" runat="server" Font-Italic="True" Font-Bold="True">JMD $150,200</asp:Label>.
                                            </p>
                                            <button data-toggle="modal" data-target="#successModal" data-name="Apple-IPhone-11-Pro" data-price="150200" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgSamsungS10" CssClass="card-img-top" ImageUrl="~/site/images/samsung s10.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Samsung Galaxy S10</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblSamsungS10" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 85,263</asp:Label>.
                                            </p>
                                            <%--<button data-toggle="modal" data-target="#successModal" data-name="Samsung-S10" data-price="85263" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgHuawei" CssClass="card-img-top" ImageUrl="~/site/images/Huawei P20.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Huawei P20 Pro</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblHuawei" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 70,900</asp:Label>
                                            </p>
                                            <%--<button data-toggle="modal" data-target="#successModal" data-name="Huawei-P20-Pro-6.1" data-price="70900" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgIpad" CssClass="card-img-top" ImageUrl="~/site/images/ipad.png" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Apple iPad Pro</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblIpad" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 120,500</asp:Label>
                                            </p>
                                           <%-- <button data-toggle="modal" data-target="#successModal" data-name="Apple-iPad-Pro" data-price="125000" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab-2">
                                <div class="card-deck">
                                    <div class="card card-hover">
                                        <asp:Image ID="imgMacBookPro" ImageUrl="~/site/images/macbook.jpg" runat="server" CssClass="card-img-top" />
                                        <div class="card-body">
                                            <h6 class="card-title">Apple MacBook Pro 13.3"</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblMacbookPro" runat="server" Font-Italic="True" Font-Bold="True">JMD $100388.91</asp:Label>
                                            </p>
                                          <%--  <button data-toggle="modal" data-target="#successModal" data-name="Apple-MacBook-Pro" data-price="100388.91" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgHpPavilion" CssClass="card-img-top" ImageUrl="~/site/images/hp pavilion.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">HP Pavilion X360 15.6" 2-in-1</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblHpPavilion" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 54,500</asp:Label>
                                            </p>
                                       <%--<button data-toggle="modal" data-target="#successModal" data-name="HP-Pavilion-X360" data-price="54500" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgDellDesktop" CssClass="card-img-top" ImageUrl="~/site/images/Dell Desktop.jpeg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Dell Desktop PC Tower System</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblDellDesktop" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 30,200</asp:Label>
                                            </p>
                                         <%--   <button data-toggle="modal" data-target="#successModal" data-name="Dell-Desktop-PC-Tower-System" data-price="30200" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgMicrosoftSurface" CssClass="card-img-top" ImageUrl="~/site/images/microsoft surface.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Microsoft Surface Laptop 13.5" </h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblMicrosoftSurface" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 80,000</asp:Label>
                                            </p>
                                           <%-- <button data-toggle="modal" data-target="#successModal" data-name="Microsoft-Surface-Laptop" data-price="80000" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab-3">
                                <div class="card-deck">
                                    <div class="card card-hover">
                                        <asp:Image ID="imgInstax" CssClass="card-img-top" ImageUrl="~/site/images/instax.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Fujifilm Instax Mini 9 Instant Camera</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblInstax" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 6,500</asp:Label>
                                            </p>
                                           <%-- <button data-toggle="modal" data-target="#successModal" data-name="Fujifilm-Instax-Mini-Camera" data-price="6500" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgNikon755" CssClass="card-img-top" ImageUrl="~/site/images/nikon755.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Nikon DF Black x755</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblNikon755" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 150,220</asp:Label>
                                            </p>
                                          <%--  <button data-toggle="modal" data-target="#successModal" data-name="Nikon-DF-Black" data-price="150220" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgCanonPowerShot" CssClass="card-img-top" ImageUrl="~/site/images/canon.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Canon PowerShot G7</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblCanonPowerShot" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 95,600</asp:Label>
                                            </p>
                                            <%--<button data-toggle="modal" data-target="#successModal" data-name="Canon-PowerShot-G7" data-price="95600" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgCrane" CssClass="card-img-top" ImageUrl="~/site/images/crane.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Zhiyun Crane 2</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblCrane" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 103,200</asp:Label>
                                            </p>
                                           <%-- <button data-toggle="modal" data-target="#successModal" data-name="Zhiyun-Crane-2" data-price="103200" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab-4">
                                <div class="card-deck">
                                    <div class="card card-hover">
                                        <asp:Image ID="imgEcho" ImageUrl="~/site/images/echo.jpg" runat="server" CssClass="card-img-top" />
                                        <div class="card-body">
                                            <h6 class="card-title">Amazon - Echo Dot (3rd Gen) - Smart Speaker with Alexa</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblEcho" runat="server" Font-Italic="True" Font-Bold="True">JMD $7,000</asp:Label>
                                            </p>
                                            <%--<button data-toggle="modal" data-target="#successModal" data-name="Amazon-Echo-Dot" data-price="7000" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgAirpods" ImageUrl="~/site/images/airpods.jpg" runat="server" CssClass="card-img-top" />
                                        <div class="card-body">
                                            <h6 class="card-title">Apple AirPods with Charging Case</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblXiaomi" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 10,205</asp:Label>
                                            </p>
                                            <%--<button data-toggle="modal" data-target="#successModal" data-name="Apple-Airpods" data-price="10205" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgPlayStation4" CssClass="card-img-top" ImageUrl="~/site/images/playstation4.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">SONY PlayStation 4 Pro </h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblPlayStation4" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 40,827</asp:Label>
                                            </p>
                                            <%--<button data-toggle="modal" data-target="#successModal" data-name="SONY-PlayStation-4-Pro" data-price="40827" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                    <div class="card card-hover">
                                        <asp:Image ID="imgBeats" CssClass="card-img-top" ImageUrl="~/site/images/beats.jpg" runat="server" />
                                        <div class="card-body">
                                            <h6 class="card-title">Beats by Dr. Dre - Solo Wireless</h6>
                                             <%-- <p class="card-text">
                                                <asp:Label ID="lblBeats" runat="server" Font-Italic="True" Font-Bold="True">JMD$ 30,000</asp:Label>
                                            </p>
                                           <%-- <button data-toggle="modal" data-target="#successModal" data-name="Beats-by-Dr-Dre" data-price="30000" class="add-to-cart btn btn-primary card-btn reveal">Add to cart</button>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
