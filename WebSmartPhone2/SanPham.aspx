<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="WebSmartPhone2.SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!-- SECTION -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- ASIDE -->
                <div id="aside" class="col-md-3">
                    <!-- aside Widget -->
                    <div class="aside">
                        <h3 class="aside-title"></h3>

                    </div>
                    <!-- /aside Widget -->

                    <!-- aside Widget -->
                    <div class="aside">
                        <h3 class="aside-title">Sản Phẩm Bán chạy</h3>

                        <div class="col-6 ">
                            <ul class="list-group" id="menu">
                                <li href="#" class="list-group-item menu1 active" style="background-color: #D10024; font: bold">LOẠI SẢN PHẨM
                                </li>
                                <asp:Repeater ID="rptLoaiSP" runat="server" DataSourceID="sdsLoaiSanPham">
                                    <ItemTemplate>
                                        <li href="#" class="list-group-item menu1">
                                            <a href="#"><%# Eval("Ten") %></a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <!-- /aside Widget -->
                </div>
                <!-- /ASIDE -->

                <!-- STORE -->
                <div id="store" class="col-md-9">
                    <!-- store top filter -->
                    <div class="store-filter clearfix">
                        <div class="store-sort" style="float: left">
                            <%--<!-- SEARCH BAR -->
                            <div>
                                <div class="header-search">
                                    <div class="form-inline">
                                        <div class="col-md-3 " style="width: 150px">
                                            <h4>Tìm Kiếm</h4>
                                        </div>
                                        <asp:TextBox ID="txtTimKiem" CssClass="form-control" runat="server"></asp:TextBox>
                                        <button runat="server" id="btnTimKiem" class="search-btn active btn btn-danger"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </div>
                                </div>
                            </div>
                            <!-- /SEARCH BAR -->--%>

                        </div>
                    </div>
                    <!-- /store top filter -->

                    <!-- store products -->
                    <div class="row">
                        <!-- product -->
                        <asp:ListView ID="lvSanPham" runat="server" DataSourceID="sdsSanPham">

                            <ItemTemplate>
                                <div class="col-md-4 col-xs-6 ">
                                    <div class="product">
                                        <div class="product-img" style="text-align: center">
                                            <a href="ChiTietSP.aspx?idSanPham=<%# Eval("id")%>&idLoaiSanPham=<%# Eval("idLoaiSanPham")%>">
                                                <img src="/img/sanpham/<%# Eval("hinh") %>" style="width: 150px; height: 150px"></a>
                                            <div class="product-label">
                                                <span class="sale">-30%</span>
                                                <span class="new">NEW</span>
                                            </div>
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">Tên</p>
                                            <h3 class="product-name" style="height: 50px"><a href="ChiTietSP.aspx?idSanPham=<%# Eval("id")%>&idLoaiSanPham=<%# Eval("idLoaiSanPham")%>"><%# Eval("tieude") %></a></h3>
                                            <h4 class="product-price"><%# Eval("donGia","{0:#,##0} đồng") %><del class="product-old-price">$990.00</del></h4>
                                            <div class="product-btns">
                                                <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Thêm Yêu Thích</span></button>
                                                <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">So Sánh</span></button>
                                                <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Xem Chi Tiết</span></button>
                                            </div>
                                        </div>
                                        <div class="add-to-cart">

                                            <%--<button id="btThemGioHang" class="add-to-cart-btn"
                                              runat="server">
                                            <i class="fa fa-shopping-cart"></i> Thêm Vào Giỏ</button>--%>
                                            <asp:Button ID="btThemGioHang" CssClass="btn btn-danger" OnClick="btThemGioHang_Click" runat="server"
                                                CommandArgument='<%# Eval("id") %>' Text="Thêm Vào Giỏ" />
                                            <i class="fa fa-shopping-cart"></i>

                                        </div>
                                    </div>
                                </div>

                                <!-- /product -->
                                <div class="clearfix visible-sm visible-xs"></div>
                                <%--<div class="clearfix visible-lg visible-md"></div>--%>
                                <%--<div class="clearfix visible-sm visible-xs"></div>--%>
                                <%--<div class="clearfix visible-lg visible-md visible-sm visible-xs"></div>--%>
                            </ItemTemplate>

                            <%--Phân trang--%>
                            <LayoutTemplate>
                                <br />
                                <div class="form-inline">
                                    <div id="itemPlaceHolder" runat="server">
                                    </div>
                                </div>
                                <br />
                                <div class="store-filter clearfix">
                                    <ul class="ulpager">
                                        <li class="active" style="text-align: center">
                                            <a href="#">
                                                <div style="font-size: 20px; margin-top: 70px">
                                                    <asp:DataPager ID="Pager" runat="server" PageSize="9">
                                                        <Fields>
                                                            <asp:NumericPagerField ButtonType="Button"
                                                                NextPreviousButtonCssClass="bg-danger"
                                                                CurrentPageLabelCssClass="bg-success" />
                                                        </Fields>
                                                    </asp:DataPager>
                                                </div>
                                            </a></li>
                                    </ul>
                                </div>


                                <div class="row">
                                    <div class="col-md-12 text-center">
                                    </div>
                                </div>
                            </LayoutTemplate>

                        </asp:ListView>
                    </div>

                    <!-- /store products -->
                </div>
                <!-- /STORE -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /SECTION -->

    <!---------------------------SQL----------------------------->

    <asp:SqlDataSource ID="sdsSanPham" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>"
        SelectCommand="SELECT * FROM [sanPham] WHERE ([idTheLoai] = @idTheLoai)">
        <SelectParameters>
            <asp:QueryStringParameter Name="idTheLoai" QueryStringField="idtheloai" DefaultValue="1" Type="Int32" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsLoaiSanPham" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>"
        SelectCommand="SELECT * FROM [loaiSanPham] WHERE ([idTheLoai] = @idTheLoai)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="idTheLoai" QueryStringField="idtheloai" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsSPTheoLoaiSp" runat="server" ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>" SelectCommand="SELECT * FROM [sanPham] WHERE ([idLoaiSanPham] = @idLoaiSanPham)">
        <SelectParameters>
            <asp:QueryStringParameter Name="idLoaiSanPham" QueryStringField="idLoaiSanPham" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <%--<asp:SqlDataSource ID="sdsTiemKiem" runat="server" ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>" SelectCommand="SELECT * FROM [sanPham] WHERE ([TieuDe] LIKE '%' + @TieuDe + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTimKiem" Name="TieuDe" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    --%>
</asp:Content>
