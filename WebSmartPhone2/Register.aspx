<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebSmartPhone2.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row bg-danger" style="width: 500px; margin-top: 30px; margin-left: 350px">
            <div class="col">
                <h2 class="text-center text-dark mt-5">TRANG ĐĂNG KÝ</h2>
                <div class=" mb-3 text-dark"></div>
                <div class="card my-5">

                    <form1 class="card-body cardbody-color p-lg-5 text-center text-center" >

                        <div class="text-center">
                            <img src="https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295397__340.png"
                                class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                                style="width: 200px; height: 250px" alt="profile">
                        </div>

                        <div class="mb-3">
                            <asp:Label runat="server" Text="Text"></asp:Label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Nhập Tên"></asp:TextBox>

                        </div>
                        <div class="mb-3">
                            <asp:Label runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Nhập Email"></asp:TextBox>

                        </div>
                        <div class="mb-3">

                            <asp:Label runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" placeholder="Nhập Password"></asp:TextBox>
                        </div>

                        <br />

                        <asp:Button ID="btnRegister" runat="server" CssClass="form-text text-center mb-5 text-dark" Text="Đăng Ký" OnClick="btnRegister_Click" />

                        <div id="emailHelp" class="form-text text-center mb-5 text-dark">
                            Đến
               
                            <a href="LogIn.aspx" class="text-dark fw-bold">Đăng Nhập</a>
                            <br />
                        </div>
                        <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
                        <asp:ValidationSummary ID="vsLoi" runat="server" ShowSummary="False" />

                    </form1>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
