<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="ThemSP.aspx.cs" Inherits="WebSmartPhone2.ThemSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h4>TRANG THÊM SẢN PHẨM</h4>

    <div class=" m-auto w-50">
        <div class="row mb-2">
            <div class="col-md-2">Loại Sản Phẩm</div>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlTheLoai" CssClass="form-control" runat="server" AutoPostBack="True"
                    DataSourceID="sdsTheLoai" DataTextField="Ten" DataValueField="id">
                </asp:DropDownList>
            </div>
        </div>
        <div class="row mb-2">
            <div class="col-md-2">Hãng Sản Phẩm</div>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlHangSP" CssClass="form-control" runat="server" AutoPostBack="True"
                    DataSourceID="sdsHangSP" DataTextField="Ten" DataValueField="id">
                </asp:DropDownList>
            </div>
        </div>
        <div class="row mb-2">
            <div class="col-md-2">Tên Sản Phẩm</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtTenSP" CssClass="form-control" runat="server"></asp:TextBox>

            </div>
        </div>
        <div class="row mb-2">
            <div class="col-md-2">Tính Năng</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtTinhNang" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row mb-2">
            <div class="col-md-2">Nổi Bật</div>
            <div class="col-md-10">
                <asp:CheckBox ID="ckNoiBat" runat="server" />
            </div>
        </div>
        <%--<div class="row mb-2">
            <div class="col-md-2">Ngày Cập Nhật</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtNgay" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>--%>
        <div class="row mb-2">
            <div class="col-md-2">Đơn Giá</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtGia" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTenSp" runat="server" ControlToValidate="txtGia"
                    ErrorMessage="Tên Tour không được rỗng (*)" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvGia" runat="server" ErrorMessage="Giá bán Không hợp lệ (>0) (*)" ForeColor="Red"
                    ControlToValidate="txtGia" Operator="GreaterThanEqual" ValueToCompare="0" Type="Double"></asp:CompareValidator>
            </div>
        </div>

        <div class="row mb-2">
            <div class="col-md-2">Hình Sản Phẩm</div>
            <div class="col-md-10">
                <asp:FileUpload ID="FHinh" Font-Size="20px" Height="20px" runat="server" />
            </div>
        </div>
        <div class="row mb-2">
            <div class="col-md-2"></div>
            <div class="col-md-10">
                <asp:Button ID="btThem" runat="server" Text="Thêm Sản Phẩm" CssClass="btn btn-danger" OnClick="btThem_Click" />

            </div>
        </div>
    </div>
    <a href="QuanTriSP.aspx" class="btn btn-info">Tiếp Tục Xem Sản Phẩm </a>
    
    <!------------------SQL------------------------>
    <asp:SqlDataSource ID="sdsTheLoai" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>" 
        SelectCommand="SELECT * FROM [Theloai]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsHangSP" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>" 
        SelectCommand="SELECT * FROM [loaiSanPham] WHERE ([idTheLoai] = @idTheLoai)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlTheLoai" DefaultValue="1" Name="idTheLoai" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
