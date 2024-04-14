<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="WebSmartPhone2.TinTuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Content -->
    <div class="container">
        <div class="row">

            <!-- Blog Post Content Column -->
            <asp:Repeater ID="rptTinTuc1" runat="server" DataSourceID="sdsTinTuc">
                <ItemTemplate>
                    <div class="col-lg-9">
                        <!-- Blog Post -->
                        <!-- Title -->
                        <h1><%# Eval("TieuDe") %></h1>
                        <!-- Preview Image -->
                        <img style="width: 800px; text-align: center; height: 400px" class="img-responsive" src="img/tintuc/<%# Eval("Hinh") %>" alt="">
                        <hr>

                        <!-- Post Content -->
                        <p class="lead"><%# Eval("NoiDung") %></p>
                        <hr>
                    </div>
                </ItemTemplate>
            </asp:Repeater>


            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-3">

                <div class="panel panel-default">
                    <div class="panel-heading" style="background-color: black; color: white"><b>Tin liên quan</b></div>
                    <div class="panel-body">
                        <asp:Repeater ID="rptTinTuc2" runat="server" DataSourceID="sdsTinTucLienQuan">
                            <ItemTemplate>
                                <!-- item -->
                                <div class="row" style="margin-top: 10px;">
                                    <div class="col-md-5">
                                        <a>
                                            <img class="img-responsive" src="img/tintuc/<%# Eval("Hinh") %>" alt="">
                                        </a>
                                        &nbsp;
                                    </div>
                                    <div class="col-md-7">
                                        <a href="#"><b><%# Eval("TieuDe") %></b></a>
                                    </div>
                                    <p><%# Eval("TomTat") %></p>
                                    <div class="break"></div>
                                </div>
                                <!-- end item -->

                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>

        </div>
        <!-- /.row -->
    </div>
    <!-- end Page Content -->
    <asp:SqlDataSource ID="sdsTinTuc" runat="server" ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString%>" 
        SelectCommand="SELECT * FROM [tinTuc] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsTinTucLienQuan" runat="server" ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString%>" 
        SelectCommand="SELECT TOP 3 * FROM [tinTuc] WHERE ([id] != @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
