<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="QuanTriSP.aspx.cs" Inherits="WebSmartPhone2.QuanTriSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row">
         <div class="col-md-6">
               <div class="form-inline">
                   <div class="row text-right text-info btn-group-sm">Tên Sản Phẩm Cần Tìm
                    <asp:TextBox ID="txtTenDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:Button ID="btTimKiem" runat="server" Text="Tìm Kiếm" CssClass="btn btn-default" />
                        </div>
               </div>
         </div>
        <div class="col-md-6 text-right">
              <a href="ThemSP.aspx" class="btn btn-success">Thêm Sản Phẩm Mới</a>
         </div>
    </div>
        <br />
    <asp:GridView ID="gvDienThoai" runat="server" CssClass="GridPager table table-bordered mt-2" AutoGenerateColumns="False"
        DataKeyNames="id" DataSourceID="sdsSanPham" AllowPaging="True" PageSize="5" CellPadding="4" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Mã SP" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:ImageField DataImageUrlField="Hinh" DataImageUrlFormatString="img/sanpham/{0}" ReadOnly="true" ControlStyle-Width="100px" 
        ControlStyle-Font-Size="5px" HeaderStyle-Height="15px" HeaderText="Hình" SortExpression="Hinh" />
            <asp:BoundField DataField="TieuDe" HeaderText="Tên Điện Thoại" SortExpression="TieuDe" ReadOnly="true" />
            <asp:BoundField DataField="donGia" DataFormatString="{0: #,##0} đồng" HeaderText="Đơn Giá" SortExpression="donGia" />
            <asp:BoundField DataField="NoiDung" HeaderText="Tính Năng" SortExpression="NoiDung" ReadOnly="true"  />
             
            
            <asp:TemplateField ItemStyle-Wrap="false">
                <ItemTemplate>
                    <asp:Button ID="btSua" runat="server" CssClass="btn" BackColor="#0099ff" CommandName="Edit" Text="Sửa" />
                    <asp:Button ID="btXoa" OnClientClick="return confirm('Bạn muốn xoá sản phẩm này?')" runat="server" CssClass="btn btn-danger" CommandName="Delete" Text="Xoá" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Button ID="btCapnhat" runat="server" CssClass="btn btn-success" CommandName="Update" Text="Ghi" />
                    <asp:Button ID="btKhong" runat="server" CssClass="btn btn-warning" CommandName="Cancel" Text="Không" />
                </EditItemTemplate>

                <ItemStyle Wrap="False"></ItemStyle>
            </asp:TemplateField>
            
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#D10024" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#D10024" CssClass="text-center" Font-Bold="True" ForeColor="White" />
        <PagerStyle  BackColor="#D10024"  CssClass = "GridPager"  HorizontalAlign="Center" />
        <%--<PagerTemplate>
            <ul class="pagination">
                <asp:Repeater ID="Pager" ItemType="System.Int32" SelectMethod="GetPages" runat="server">
                    <ItemTemplate>
                        <li class='<%#((int)Item == this.gvDienThoai.PageIndex+1)? "active" : "" %>'>
                            <asp:LinkButton CommandName="Page" CommandArgument="<%# Item %>"
                                Text="<%# Item %>" runat="server" OnClick="Pager_Click" />
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </PagerTemplate>--%>
        <PagerSettings FirstPageText="Đầu"  LastPageText="Cuối" NextPageText="Sau" PreviousPageText="Trước"  />
        
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        
    </asp:GridView>


    <asp:SqlDataSource ID="sdsSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:QLDoAnShopDienThoaiConnectionString %>" 
        DeleteCommand="DELETE FROM [sanPham] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [sanPham] ([idTheLoai], [TieuDe], [donGia], [NoiDung], [Hinh], [NoiBat], [idLoaiSanPham]) VALUES (@idTheLoai, @TieuDe, @donGia, @NoiDung, @Hinh, @NoiBat, @idLoaiSanPham)" 
        SelectCommand="SELECT * FROM [sanPham] WHERE ([TieuDe] LIKE '%' + @TieuDe + '%')" 
        UpdateCommand="UPDATE [sanPham] SET  [donGia] = @donGia <%--[idTheLoai] = @idTheLoai [TieuDe] = @TieuDe [NoiDung] = @NoiDung [Hinh] = @Hinh [NoiBat] = @NoiBat  [idLoaiSanPham] = @idLoaiSanPham--%>    WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idTheLoai" Type="Int32" />
            <asp:Parameter Name="TieuDe" Type="String" />
            <asp:Parameter Name="donGia" Type="Int32" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter Name="Hinh" Type="String" />
            <asp:Parameter Name="NoiBat" Type="Int32" />
            <asp:Parameter Name="idLoaiSanPham" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTenDienThoai" DefaultValue="a" Name="TieuDe" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="idTheLoai" Type="Int32" />
            <asp:Parameter Name="TieuDe" Type="String" />
            <asp:Parameter Name="donGia" Type="Int32" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter Name="Hinh" Type="String" />
            <asp:Parameter Name="NoiBat" Type="Int32" />
            <asp:Parameter Name="idLoaiSanPham" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>