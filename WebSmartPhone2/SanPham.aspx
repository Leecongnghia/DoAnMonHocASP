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
                        <h3 class="aside-title">Top selling</h3>
                        
                        <div class="col-6 ">
                            <ul class="list-group" id="menu">
                                <li href="#" class="list-group-item menu1 active">Menu
                                </li>
                                <asp:Repeater ID="rptTheLoai" DataSourceID="sdsTheLoai" runat="server">
                                    <ItemTemplate>
                                        <li href="#" class="list-group-item menu1">
                                            <a href="#"><%# Eval("") %></a>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:Repeater ID="rptLoaiSanPham" DataSourceID="sdsLoaiSanPham" runat="server">
                                    <ItemTemplate>
                                        <ul>
                                            <li class="list-group-item">
                                                <a href="#"><%# Eval("Ten") %></a>
                                            </li>
                                        </ul>
                                    </ItemTemplate>
                                </asp:Repeater>
                                </li>
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
                        <div class="store-sort">
                            <label>
                                Giá Từ
                                <select class="input-select">
                                    <option value="0">Popular</option>
                                    <option value="1">Position</option>
                                </select>
                            </label>

                            <label>
                                đến :
								
                                <select class="input-select">
                                    <option value="0">20</option>
                                    <option value="1">50</option>
                                </select>
                            </label>
                        </div>
                        <ul class="store-grid">
                            <li class="active"><i class="fa fa-th"></i></li>
                            <li><a href="#"><i class="fa fa-th-list"></i></a></li>
                        </ul>
                    </div>
                    <!-- /store top filter -->
                        
                    <!-- store products -->
                    <div class="row">
                        <!-- product -->
                        <asp:Repeater ID="rptSanPham" runat="server" DataSourceID="sdsSanPham">
                            <ItemTemplate>
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img src="/img/sanpham/<%# Eval("hinh") %>" alt="">
										<div class="product-label">
											<span class="sale">-30%</span>
											<span class="new">NEW</span>
										</div>
									</div>
									<div class="product-body">
										<p class="product-category">Tên</p>
										<h3 class="product-name"><a href="#"><%# Eval("tieude") %></a></h3>
										<h4 class="product-price"><%# Eval("donGia","{0:#,##0} đồng") %><del class="product-old-price">$990.00</del></h4>
										<div class="product-btns">
											<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
											<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
											<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
									</div>
								</div>
							</div>

							<!-- /product -->
							    <div class="clearfix visible-sm visible-xs"></div>
                                </ItemTemplate>
                            </asp:Repeater>
                                
                    </div>
                    
                    <!-- /store products -->

                    <!-- store bottom filter -->
                    <div class="store-filter clearfix">
                        <span class="store-qty"></span>
                        <ul class="store-pagination">
                            <li class="active">1</li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                    <!-- /store bottom filter -->

                    

                </div>
                <!-- /STORE -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /SECTION -->

    <!----SQL--->
    
    <asp:SqlDataSource ID="sdsSanPham" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>" 
        SelectCommand="SELECT * FROM [sanPham]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsLoaiSanPham" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>" 
        SelectCommand="SELECT * FROM [loaiSanPham]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsTheLoai" runat="server"></asp:SqlDataSource>
</asp:Content>
