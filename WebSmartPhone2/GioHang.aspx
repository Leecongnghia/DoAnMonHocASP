<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="WebSmartPhone2.GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Trang Giỏ hàng</h2>

    <div class="container">
        <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False"
            EmptyDataText="Không Có Gì Trong Giỏ Hàng Của Bạn" EmptyDataRowStyle-CssClass="active text-center " Width="100%" CellPadding="4" ShowFooter="True"
            DataKeyNames="masp" OnRowDeleting="gvGioHang_RowDeleting" OnRowUpdating="gvGioHang_RowUpdating" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="Black" />
            <Columns>
                <asp:ImageField ItemStyle-HorizontalAlign="Center" DataImageUrlField="hinh"
                    DataImageUrlFormatString="img/sanpham/{0}" 
                    HeaderText="Ảnh sản phẩm" ControlStyle-Width="150px">
                    <ControlStyle Width="80px" Height="100px"></ControlStyle>

                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:ImageField>
                <asp:BoundField HeaderText="Tên Sản Phẩm" DataField="tensp" />
                <asp:BoundField HeaderText="Đơn Giá" DataField="DonGia"
                    DataFormatString="{0:#,##0}đ" />
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtSoLuong" TextMode="Number" runat="server"
                            CssClass="form-control text-center" Width="100px" Text='<%# Eval("soluong")%>'>
                        </asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Thành Tiền" DataField="Thanhtien"
                    DataFormatString="{0:#,##0}đ" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btDelete" Width="60px" CssClass=" btn btn-danger" runat="server" ToolTip="Xóa"
                            CommandName="Delete" Text="Xóa" />
                        <asp:Button ID="btCapNhat" Width="80px" CssClass=" btn btn-info" runat="server" ToolTip="Cập nhật"
                            CommandName="Update" Text="Cập Nhật" />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#D10024" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#D10024" Font-Bold="True" Font-Size="15px" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="Gray" ForeColor="White" />
            <SelectedRowStyle BackColor="#D10024" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </div>
    <br />
    <div class="row">
        <div class="col-md-4">
            <a href="SanPham.aspx" class="btn btn-color row active">Tiếp tục mua hàng</a>
        </div>
        <div class="col-md-5 text-right">
            <asp:Label ID="lbThanhTien" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row" style="padding-bottom: 10px">
        <div class="col-md-10 text-right">
            <asp:Button ID="btDatHang" runat="server" Text="Đặt hàng" CssClass="btn btn-danger" />
        </div>
    </div>


</asp:Content>
