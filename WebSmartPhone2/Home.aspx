<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebSmartPhone2.qlSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- SECTION -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <asp:Repeater ID="rptSlider" DataSourceID="sdsSlider" runat="server">
                    <ItemTemplate>
                        <!-- shop -->
                        <div class="col-md-4 col-xs-6">
                            <div class="shop">
                                <div class="shop-img">
                                    <img style="height: 180px;" src="/img/slide/<%# Eval("hinh") %>" alt="">
                                </div>

                            </div>
                        </div>
                        <!-- /shop -->


                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /SECTION -->

    <!-- SECTION -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">

                <!-- section title -->

                <div class="col-md-12">
                    <div class="section-title">
                        <h3 class="title">Sản Phẩm Mới</h3>
                    </div>
                </div>

                <!-- /section title -->

                <!-- Products tab & slick -->
                <div class="col-md-12">
                    <div class="row">
                        <div class="products-tabs">
                            <!-- tab -->
                            <div id="tab1" class="tab-pane active">
                                <div class="products-slick " data-nav="#slick-nav-1">
                                    <!-- product -->
                                    <asp:Repeater ID="rptSanPham" DataSourceID="sdsSanPham" runat="server">
                                        <ItemTemplate>
                                            <div class="product m-auto">

                                                <div class="product-img">
                                                    <a href="ChiTietSP.aspx?idSanPham=<%# Eval("id")%>&idLoaiSanPham=<%# Eval("id")%>">
                                                        <img style="width: 240px; height: 230px;" src="/img/sanpham/<%# Eval("hinh") %>" alt=""></a>
                                                    <div class="product-label">
                                                        <span class="sale">-30%</span>
                                                        <span class="new">NEW</span>
                                                    </div>
                                                </div>
                                                <div class="product-body">
                                                    <p class="product-category">Loại</p>
                                                    <h3 class="product-name"><a href="#"><%# Eval("tieude") %></a></h3>
                                                    <h4 class="product-price"><%# Eval("donGia","{0:#,##0} đồng") %><del class="product-old-price"><%# Eval("donGia","{0:#,##0} đồng") %></del></h4>
                                                    <div class="product-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-btns">
                                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                                        <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
                                                    </div>
                                                </div>
                                                <div class="add-to-cart">
                                                    <%--<button class="add-to-cart-btn" runat="server">
                                            <i class="fa fa-shopping-cart"></i> Thêm Vào Giỏ</button>--%>
                                                    <asp:Button CssClass=" btn btn-danger" ID="btThemGioHang" OnClick="btThemGioHang_Click" runat="server"
                                                        CommandArgument='<%# Eval("id") %>' Text="Thêm Vào Giỏ" />
                                                    <i class="fa fa-shopping-cart"></i>
                                                </div>

                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <!-- /product -->


                                </div>
                                <div id="slick-nav-1" class="products-slick-nav"></div>
                            </div>
                            <!-- /tab -->
                        </div>
                    </div>
                </div>
                <!-- Products tab & slick -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /SECTION -->

    <!-- HOT DEAL SECTION -->

    <div id="hot-deal" class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="hot-deal">
                        <ul class="hot-deal-countdown">
                            <li>
                                <div>
                                    <h3>02</h3>
                                    <span>Days</span>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3>10</h3>
                                    <span>Hours</span>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3>34</h3>
                                    <span>Mins</span>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <h3>60</h3>
                                    <span>Secs</span>
                                </div>
                            </li>
                        </ul>
                        <h2 class="text-uppercase">hot deal this week</h2>
                        <p>New Collection Up to 50% OFF</p>
                        <a class="primary-btn cta-btn" href="SanPham.aspx">Shop now</a>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>

    <!-- /HOT DEAL SECTION -->

    <!-- SECTION -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">

                <!-- section title -->
                <div class="col-md-12">
                    <div class="section-title">
                        <h3 class="title">Top Nổi Bật</h3>
                    </div>
                </div>
                <!-- /section title -->

                <!-- Products tab & slick -->
                <div class="col-md-12">
                    <div class="row">
                        <div class="products-tabs">
                            <!-- tab -->
                            <div id="tab2" class="tab-pane fade in active">
                                <div class="products-slick" data-nav="#slick-nav-2">
                                    <!-- product -->
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sdsSanPhamByNoiBat">
                                        <ItemTemplate>
                                            <div class="product">
                                                <div class="product-img">
                                                    <a href="ChiTietSP.aspx?idSanPham=<%# Eval("id")%>">
                                                        <img style="width: 263px; height: 250px;" src="/img/sanpham/<%# Eval("hinh") %>" alt=""></a>
                                                    <div class="product-label">
                                                        <span class="sale">-30%</span>
                                                        <span class="new">NEW</span>
                                                    </div>
                                                </div>
                                                <div class="product-body">
                                                    <p class="product-category">Tên</p>
                                                    <h3 class="product-name" style="height: 50px;"><a href="#"><%# Eval("tieude") %></a></h3>
                                                    <h4 class="product-price"><%# Eval("donGia","{0:#,##0} đồng") %><del class="product-old-price">$990.00</del></h4>
                                                    <div class="product-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="product-btns">
                                                        <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm Yêu Thich</span></button>
                                                        <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
                                                        <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Chi Tiết</span></button>
                                                    </div>
                                                </div>
                                                <div class="add-to-cart">
                                                    <%--<button id="btThemGioHang" class="add-to-cart-btn"
                                              runat="server">
                                            <i class="fa fa-shopping-cart"></i> Thêm Vào Giỏ</button>--%>
                                                    <asp:Button CssClass="btn btn-danger" ID="btThemGioHang" OnClick="btThemGioHang_Click" runat="server"
                                                        CommandArgument='<%# Eval("id") %>' Text="Thêm Vào Giỏ" />
                                                    <i class="fa fa-shopping-cart"></i>
                                                </div>
                                            </div>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <!-- /product -->


                                </div>
                                <div id="slick-nav-2" class="products-slick-nav"></div>
                            </div>
                            <!-- /tab -->
                        </div>
                    </div>
                </div>
                <!-- /Products tab & slick -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /SECTION -->

    <!-- SECTION -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-4 col-xs-6">
                    <div class="section-title">
                        <h4 class="title">Tin Tức</h4>
                        <div class="section-nav">
                            <div id="slick-nav-3" class="products-slick-nav"></div>
                        </div>
                    </div>

                    <div class="products-widget-slick" data-nav="#slick-nav-3">
                        <div>
                            <!-- product widget -->
                            <asp:Repeater ID="Repeater3" runat="server" DataSourceID="sdsTinCum1">
                                <ItemTemplate>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <a href="TinTuc.aspx?id=<%# Eval("id")%>">
                                                <img style="width: 60px; height: 40px;" src="img/tintuc/<%# Eval("hinh") %>" alt="" /></a>
                                        </div>
                                        <div class="product-body" style="width: 360px; height: 100px;">
                                            <p style="height: 40px;" class="product-tieude"><a href="TinTuc.aspx?id=<%# Eval("id")%>"><%# Eval("TieuDe") %></a></p>
                                            <p style="height: 30px;" class="product-tomtat"><%# Eval("TomTat") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- /product widget -->
                        </div>
                        <div>
                            <!-- product widget -->
                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="sdsTinCum2">
                                <ItemTemplate>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <a href="TinTuc.aspx?id=<%# Eval("id")%>">
                                                <img style="width: 60px; height: 40px;" src="img/tintuc/<%# Eval("hinh") %>" alt="" /></a>
                                        </div>
                                        <div class="product-body" style="width: 360px; height: 100px;">
                                            <p style="height: 40px;" class="product-tieude"><a href="TinTuc.aspx?id=<%# Eval("id")%>"><%# Eval("TieuDe") %></a></p>
                                            <p style="height: 30px;" class="product-tomtat"><%# Eval("TomTat") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- /product widget -->
                        </div>
                        <div>
                            <!-- product widget -->
                            <asp:Repeater ID="Repeater4" runat="server" DataSourceID="sdsTinCum3">
                                <ItemTemplate>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <a href="TinTuc.aspx?id=<%# Eval("id")%>">
                                                <img style="width: 60px; height: 40px;" src="img/tintuc/<%# Eval("hinh") %>" alt="" /></a>
                                        </div>
                                        <div class="product-body" style="width: 360px; height: 100px;">
                                            <p style="height: 40px;" class="product-tieude"><a href="TinTuc.aspx?id=<%# Eval("id")%>"><%# Eval("TieuDe") %></a></p>
                                            <p style="height: 30px;" class="product-tomtat"><%# Eval("TomTat") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- /product widget -->
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-xs-6">
                    <div class="section-title">
                        <h4 class="title">Tin Tức</h4>
                        <div class="section-nav">
                            <div id="slick-nav-3" class="products-slick-nav"></div>
                        </div>
                    </div>

                    <div class="products-widget-slick" data-nav="#slick-nav-3">
                        <div>
                            <!-- product widget -->
                            <asp:Repeater ID="Repeater5" runat="server" DataSourceID="sdsTinCum2">
                                <ItemTemplate>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <a href="TinTuc.aspx?id=<%# Eval("id")%>">
                                                <img style="width: 60px; height: 40px;" src="img/tintuc/<%# Eval("hinh") %>" alt="" /></a>
                                        </div>
                                        <div class="product-body" style="width: 360px; height: 100px;">
                                            <p style="height: 40px;" class="product-tieude"><a href="TinTuc.aspx?id=<%# Eval("id")%>"><%# Eval("TieuDe") %></a></p>
                                            <p style="height: 30px;" class="product-tomtat"><%# Eval("TomTat") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- /product widget -->
                        </div>
                        <div>
                            <!-- product widget -->
                            <asp:Repeater ID="Repeater6" runat="server" DataSourceID="sdsTinCum3">
                                <ItemTemplate>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <a href="TinTuc.aspx?id=<%# Eval("id")%>">
                                                <img style="width: 60px; height: 40px;" src="img/tintuc/<%# Eval("hinh") %>" alt="" /></a>
                                        </div>
                                        <div class="product-body" style="width: 360px; height: 100px;">
                                            <p style="height: 40px;" class="product-tieude"><a href="TinTuc.aspx?id=<%# Eval("id")%>"><%# Eval("TieuDe") %></a></p>
                                            <p style="height: 30px;" class="product-tomtat"><%# Eval("TomTat") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- /product widget -->
                        </div>
                        <div>
                            <!-- product widget -->
                            <asp:Repeater ID="Repeater7" runat="server" DataSourceID="sdsTinCum1">
                                <ItemTemplate>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <a href="TinTuc.aspx?id=<%# Eval("id")%>">
                                                <img style="width: 60px; height: 40px;" src="img/tintuc/<%# Eval("hinh") %>" alt="" /></a>
                                        </div>
                                        <div class="product-body" style="width: 360px; height: 100px;">
                                            <p style="height: 40px;" class="product-tieude"><a href="TinTuc.aspx?id=<%# Eval("id")%>"><%# Eval("TieuDe") %></a></p>
                                            <p style="height: 30px;" class="product-tomtat"><%# Eval("TomTat") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- /product widget -->
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-xs-6">
                    <div class="section-title">
                        <h4 class="title">Tin Tức</h4>
                        <div class="section-nav">
                            <div id="slick-nav-3" class="products-slick-nav"></div>
                        </div>
                    </div>

                    <div class="products-widget-slick" data-nav="#slick-nav-3">
                        <div>
                            <!-- product widget -->
                            <asp:Repeater ID="Repeater8" runat="server" DataSourceID="sdsTinCum3">
                                <ItemTemplate>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <a href="TinTuc.aspx?id=<%# Eval("id")%>">
                                                <img style="width: 60px; height: 40px;" src="img/tintuc/<%# Eval("hinh") %>" alt="" /></a>
                                        </div>
                                        <div class="product-body" style="width: 360px; height: 100px;">
                                            <p style="height: 40px;" class="product-tieude"><a href="TinTuc.aspx?id=<%# Eval("id")%>"><%# Eval("TieuDe") %></a></p>
                                            <p style="height: 30px;" class="product-tomtat"><%# Eval("TomTat") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- /product widget -->
                        </div>
                        <div>
                            <!-- product widget -->
                            <asp:Repeater ID="Repeater9" runat="server" DataSourceID="sdsTinCum1">
                                <ItemTemplate>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <a href="TinTuc.aspx?id=<%# Eval("id")%>">
                                                <img style="width: 60px; height: 40px;" src="img/tintuc/<%# Eval("hinh") %>" alt="" /></a>
                                        </div>
                                        <div class="product-body" style="width: 360px; height: 100px;">
                                            <p style="height: 40px;" class="product-tieude"><a href="TinTuc.aspx?id=<%# Eval("id")%>"><%# Eval("TieuDe") %></a></p>
                                            <p style="height: 30px;" class="product-tomtat"><%# Eval("TomTat") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- /product widget -->
                        </div>
                        <div>
                            <!-- product widget -->
                            <asp:Repeater ID="Repeater10" runat="server" DataSourceID="sdsTinCum2">
                                <ItemTemplate>
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <a href="TinTuc.aspx?id=<%# Eval("id")%>">
                                                <img style="width: 60px; height: 40px;" src="img/tintuc/<%# Eval("hinh") %>" alt="" /></a>
                                        </div>
                                        <div class="product-body" style="width: 360px; height: 100px;">
                                            <p style="height: 40px;" class="product-tieude"><a href="TinTuc.aspx?id=<%# Eval("id")%>"><%# Eval("TieuDe") %></a></p>
                                            <p style="height: 30px;" class="product-tomtat"><%# Eval("TomTat") %></p>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- /product widget -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /SECTION -->

    <%--SQL--%>
    <asp:SqlDataSource ID="sdsSlider" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>"
        SelectCommand="SELECT * FROM [slide]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsSanPham" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>"
        SelectCommand="SELECT * FROM [sanPham]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsSanPhamByNoiBat" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>"
        SelectCommand="SELECT * FROM [sanPham] WHERE ([donGia] > 20000000)"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsTinCum1" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>"
        SelectCommand="select*from tintuc where id >= 1  and id <= 3"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsTinCum2" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>"
        SelectCommand="select*from tintuc where id >= 4 and id <= 6"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsTinCum3" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>"
        SelectCommand="select*from tintuc where id >= 7 and id <= 9"></asp:SqlDataSource>
</asp:Content>
