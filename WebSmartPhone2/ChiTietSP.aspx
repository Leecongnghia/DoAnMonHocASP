<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="ChiTietSP.aspx.cs" Inherits="WebSmartPhone2.ChiTietSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>TRANG CHI TIẾT SẢN PHẨM</h1>
    <!-- SECTION -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- Product main img -->
                <div class="col-md-6 m-auto">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="dsChiTietIdSP">
                        <ItemTemplate>
                            <div id="product-main-img">
                                <div class="product-preview">
                                    <img alt="" src="img/sanpham/<%# Eval("Hinh") %>" />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
                <!-- /Product main img -->



                <!-- Product details -->
                <div class="col-md-6 m-auto mt-4">
                    <asp:Repeater ID="Repeater3" runat="server" DataSourceID="dsChiTietIdSP">
                        <ItemTemplate>
                            <div class="product-details">
                                <h2 class="product-name"><%# Eval("TieuDe") %></h2>
                                <div>
                                    <h3 class="product-price"><%# Eval("donGia","{0:#,##0} đồng") %> <del class="product-old-price"><%#Eval ("donGia","{0:#,##0} đồng")%></del></h3>
                                    <span class="product-available">In Stock</span>
                                </div>
                                <p><%#  Eval("NoiDung")%></p>


                                <div class="add-to-cart ">
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Thêm Giỏ Hàng</button>
                                </div>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <ul class="product-btns">
                                    <li><a href="#"><i class="fa fa-heart-o"></i>Yêu Thích</a></li>
                                    <li><a href="#"><i class="fa fa-exchange"></i>So Sánh</a></li>
                                </ul>

                                <ul class="product-links">
                                    <li>Loại:</li>
                                    <li><a href="#">Headphones</a></li>
                                    <li><a href="#">Accessories</a></li>
                                </ul>

                                <ul class="product-links">
                                    <li>Chia Sẻ:</li>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i></a></li>
                                </ul>

                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <!-- /Product details -->

                <!-- Product tab -->
                <div class="col-md-12">
                    <div id="product-tab">
                        <!-- product tab nav -->
                        <ul class="tab-nav">
                            <li><a data-toggle="tab" href="#tab1">Miêu Tả</a></li>
                        </ul>
                        <!-- /product tab nav -->

                        <!-- product tab content -->
                        <div class="tab-content">
                            <!-- tab1  -->
                            <div id="tab1" class="tab-pane fade in active">
                                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="dsChiTietIdSP">
                                    <ItemTemplate>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <p><%# Eval("NoiDung") %></p>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                            <!-- /tab1  -->
                        </div>
                        <!-- /product tab content  -->
                    </div>
                </div>
                <!-- /product tab -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /SECTION -->

    <!-- Section -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">

                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h3 class="title">Sản Phẩm Liên Quan</h3>
                    </div>
                </div>

                <!-- product -->
                <asp:Repeater ID="Repeater4" runat="server" DataSourceID="dsChiTietIdLoaiSP">
                    <ItemTemplate>
                        <div class="col-md-3 col-xs-6">
                            <div class="product">
                                <div class="product-img" style="text-align: center;">
                                    <img style="width: 200px; height: 250px;" src="img/sanpham/<%# Eval("hinh") %>" alt="">
                                    <div class="product-label">
                                        <span class="sale">-30%</span>
                                    </div>
                                </div>
                                <div class="product-body">
                                    <p class="product-category">Category</p>
                                    <h3 class="product-name" style="height: 50px"><a href="#"><%# Eval("TieuDe") %></a></h3>
                                    <h4 class="product-price"><%# Eval("donGia","{0:#,##0} đồng") %> <del class="product-old-price"><%# Eval("donGia","{0:#,##0} đồng") %></del></h4>
                                    <div class="product-rating">
                                    </div>
                                    <div class="product-btns">
                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                        <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                    </div>
                                </div>
                                <div class="add-to-cart">
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Thêm Giỏ Hàng</button>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


                <!-- /product -->


            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /Section -->

    <!-- NEWSLETTER -->
    <div id="newsletter" class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="newsletter">
                        <p><strong>ĐĂNG KÝ NHẬN TIN KHUYẾN MÃI</strong></p>
                        <form1>
                            <input class="input" type="email" placeholder="Enter Your Email">
                            <button class="newsletter-btn"><i class="fa fa-envelope"></i>Subscribe</button>
                        </form1>
                        <ul class="newsletter-follow">
                            <li>
                                <a href="#"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /NEWSLETTER -->
    <asp:SqlDataSource ID="dsChiTietIdSP" runat="server" ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>" SelectCommand="SELECT * FROM [sanPham] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="idSanPham" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsChiTietIdLoaiSP" runat="server" ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>" SelectCommand="SELECT  TOP 4 *FROM [sanPham] WHERE ([idLoaiSanPham] = @idLoaiSanPham )">
        <SelectParameters>
            <asp:QueryStringParameter Name="idLoaiSanPham" QueryStringField="idLoaiSanPham" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
