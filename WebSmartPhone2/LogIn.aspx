<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="WebSmartPhone2.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>TRANG ĐĂNG NHẬP</h1>

    <div class="container" style="text-align: center;width:70%">
        <div class="row" style="text-align: center">
            <div class="col-md-6 offset-md-3 text-center">
                <h2 class="text-center text-dark mt-5">TRANG ĐĂNG NHẬP</h2>
                <div class="text-center mb-5 text-dark">Made with bootstrap</div>
                <div class="card my-5">

                    <form1 class="card-body cardbody-color p-lg-5 text-center text-center">

                        <div class="text-center">
                            <img src="https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295397__340.png" class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                                width="300px" alt="profile">
                        </div>

                        <div class="mb-3">
                            <input type="text" class="form-control" id="Username" aria-describedby="emailHelp"
                                placeholder="Tên đăng nhập">
                        </div>
                        <div class="mb-3">
                            <input type="password" class="form-control" id="password" placeholder="Mật khẩu">
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-color px-5 mb-5 w-100">Đăng Nhập</button></div>
                        <div id="emailHelp" class="form-text text-center mb-5 text-dark">
                            Chưa Đăng Ký ?
                <a href="#" class="text-dark fw-bold">Tạo Tài Khoản</a>
                        </div>
                    </form1>
                </div>
                </div>
            <div class="col-md-3 offset-md-2">
                <div class="product-img">
                        <img src="./img/product01.png" alt="">
                        <div class="product-label">
                            <span class="sale">-30%</span>
                            <span class="new">NEW</span>
                        </div>
                    </div>
            </div>
        </div>
    </div>



</asp:Content>
