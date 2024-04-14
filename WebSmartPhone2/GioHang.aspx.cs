﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using WebSmartPhone2.Models;

namespace WebSmartPhone2
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LienKetDuLieuGridView();

            }
        }

        private void LienKetDuLieuGridView()
        {
            Cart cart = (Cart)Session["CART"];
            if (cart != null)
            {
                //Liên kết dữ liệu cho gvGioHang
                gvGioHang.DataSource = cart.Items;
                gvGioHang.DataBind();
                //Gán tổng thành tiền cho Label
                lbThanhTien.Text = string.Format("<h4>Tạm tính tiền: <b> {0: #,##0} đồng </b></h4>", cart.Total);
            }
        }

        protected void gvGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //b1. lấy mã sản phẩm cần xoá khỏi giỏ hàng và số lượng
            int masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
            int soluong = int.Parse(((TextBox)gvGioHang.Rows[e.RowIndex].FindControl("txtSoLuong")).Text);
            //b2.lấy giỏ hàng từ Session
            Cart cart = (Cart)Session["CART"];
            //b3.Cập nhật lại số lượng cho sản phẩm
            cart.Update(masp, soluong);
            //b4.Nạp lại dữ liệu cho gvGioHang (làm tươi lại giao diện)
            LienKetDuLieuGridView();
        }

        protected void gvGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //b1.Lấy mã sản phẩm cần xoá khỏi giỏ hàng
            int masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
            Response.Write($"<script> alert('Đã xóa sản phẩm {masp} thành công ') </script>");
            //Response.Write("<script> alert('Đã thêm sản phẩm vào giỏ') </script>");
            //b2.Lấy giỏ hàng từ Session
            Cart cart = (Cart)Session["CART"];
            //b3.Xoá sản phẩm khỏi giỏ
            cart.Delete(masp);
            //b4.Nạp lại dữ liệu cho gvGioHang (làm tươi lại giao diện)
            LienKetDuLieuGridView();
        }
    }
}