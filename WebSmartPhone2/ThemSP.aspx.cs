using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSmartPhone2
{
    public partial class ThemSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btThem_Click(object sender, EventArgs e)
        {
            //Mở kết nối CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["QLDoAnShopDienThoaiConnectionString"].ConnectionString);
            conn.Open();
            //([idTheLoai], [TieuDe], [donGia], [NoiDung], [Hinh], [NoiBat], [idLoaiSanPham])
            string sql = "INSERT INTO sanPham (idTheLoai,TieuDe,donGia,NoiDung,Hinh,idLoaiSanPham) " +
                "values(@idTheLoai,@TieuDe,@donGia,@NoiDung,@Hinh,@idLoaiSanPham)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@TieuDe", txtTenSP.Text);
            cmd.Parameters.AddWithValue("@idTheLoai", ddlTheLoai.SelectedValue);
            cmd.Parameters.AddWithValue("@idLoaiSanPham", ddlHangSP.SelectedValue);
            cmd.Parameters.AddWithValue("@donGia", txtGia.Text);
            cmd.Parameters.AddWithValue("@NoiDung", txtTinhNang.Text);
            

            if (FHinh.HasFile)
            {
                //Xử lý uploads Hình
                string path = Server.MapPath("~/img/sanpham/") + FHinh.FileName;
                FHinh.SaveAs(path);
                cmd.Parameters.AddWithValue("@Hinh", FHinh.FileName);
            }
            else
            {
                cmd.Parameters.AddWithValue("@Hinh", "no_imge.png");
            }

            if (cmd.ExecuteNonQuery() > 0) //Thêm thành công
            {
                Response.Write("<script> alert('Thêm Sản Phẩm Thành Công') </script>");
            }
            else
            {
                Response.Write("<script> alert('Thêm Sản Phẩm Thất Bại') </scipt>");
            }
        }
    }
}