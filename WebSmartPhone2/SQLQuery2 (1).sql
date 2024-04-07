create database QLDoAnShopDienThoai
GO
USE [QLDoAnShopDienThoai]
GO


CREATE TABLE Theloai (
	id int IDENTITY(1,1)NOT NULL,
	Ten nvarchar(255) NOT NULL,
	CONSTRAINT pk_Theloai PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)ON [PRIMARY]
SET IDENTITY_INSERT TheLoai ON 
INSERT INTO Theloai(id, Ten) VALUES
(1,N'Điện Thoại'),
(2,N'LapTop'),
(3,N'Tai Nghe'),
(4,N'Bàn Phím'),
(5,N'Chuột');
SET IDENTITY_INSERT TheLoai off
 select*from Theloai



 CREATE TABLE loaiSanPham (
	id int IDENTITY(1,1)NOT NULL,
	idTheLoai int not null,
	Ten nvarchar(255) NOT NULL,
	CONSTRAINT pk_loaiSanPham PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
CONSTRAINT FK_loaisanpham_idtheloai FOREIGN KEY (idTheLoai) REFERENCES [dbo].[TheLoai](id)
)
SET IDENTITY_INSERT loaiSanPham ON 
INSERT INTO loaiSanPham(id,idTheLoai, Ten) VALUES
--điện thoai
(1,1,N'Iphone'),
(2,1,N'SamSung'),
(3,1,N'Oppo'),
(4,1,N'Realme'),
(5,1,N'Nokia'),
(6,1,N'Xiaomi'),
(7,1,N'Vivo'),
--laptop
(8,2,N'Dell'),
(9,2,N'MacBook'),
(10,2,N'Asus'),
(11,2,N'HP'),
(12,2,N'Lenovo'),
(13,2,N'Acer'),
--tai nghe
(14,3,N'Sony'),
(15,3,N'Wireless'),
(16,3,N'Gamming'),
--bàn phím
(17,4,N'AKKO'),
(18,4,N'Apple'),
(19,4,N'Dareu '),
(20,4,N'E-DRA'),
(21,4,N'Logitech'),
--chuột
(22,5,N'Gamming'),
(23,5,N'Không Dây')


SET IDENTITY_INSERT loaiSanPham off
 select*from loaiSanPham

CREATE TABLE slide (
	id int IDENTITY(1,1)NOT NULL,
	Ten nvarchar(255) NOT NULL,
	Hinh varchar(255) NOT NULL,
	CONSTRAINT pk_slide PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
SET IDENTITY_INSERT slide ON 
INSERT INTO slide(id, Ten,Hinh) VALUES
(1,N'banner thế giới di động','banner-tgdd-800x300.jpg'),
(2,N'iphone 14 promax','sl-iphone-14-promax.jpg'),
(3,N'Huawei 10','thietkehaithanh-banner-1-1.jpg')
SET IDENTITY_INSERT slide OFF
 select*from slide

 
CREATE TABLE sanPham (
  id int IDENTITY(1,1)NOT NULL,
  idTheLoai int not null,
  TieuDe nvarchar(255) NOT NULL,
  donGia int not null,
  NoiDung nvarchar(max),
  Hinh varchar(255) NOT NULL,
  NoiBat int NOT NULL DEFAULT 0,
  idLoaiSanPham int NOT NULL,
  CONSTRAINT pk_sanPham PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
CONSTRAINT FK_sanpham_idloaisanpham FOREIGN KEY (idLoaiSanPham) REFERENCES [dbo].[loaiSanPham](id),
CONSTRAINT FK_sanpham_idtheloai FOREIGN KEY (idTheLoai) REFERENCES [dbo].[TheLoai](id)
) 
SET IDENTITY_INSERT sanPham ON
INSERT INTO sanPham(id,idTheLoai,TieuDe, donGia,NoiDung,Hinh,NoiBat,idLoaiSanPham) VALUES
--Điện Thoại
(1,1,N'Điện thoại iPhone 11 (64GB) - Chính hãng VN/A',5690000,N'iPhone 11 - siêu phẩm được mong chờ nhất năm 2019 của Apple chuẩn bị ra mắt. Với những cải tiến vượt trội, phiên bản iPhone mới nhất hứa hẹn sẽ làm bùng nổ thị trường công nghệ.','iphone-11-black-2-up-vertical-us-en-screen-1.jpg',1,1),
(2,1,N'iPhone 12 64GB - Cũ Đẹp',8090000,N'SP được thu lại từ khách bán lại - thu cũ, ngoại hình đẹp như máy mới. Máy có thể đã qua bảo hành hãng hoặc sửa chữa thay thế linh kiện để đảm bảo sự ổn định khi dùng.Có nguồn gốc rõ ràng, xuất bán đầy đủ hoá đơn eVAT.','iphone12-64g.jpg',0,1),
(3,1,N'Điện Thoại iPhone 13 Pro Max 128GB Alpine Green',15090000,N'Thương hiệu: TecHland - Số 1 Điện Thoại iPhone, Máy Tính Apple, Loa Bluetooth Cao Cấp.Màu sắc: Alpine Green, Bộ nhớ trong: 128GB, Màn hình: 6.7″ Super Retina XDR OLED, Bảo mật: Face ID, Chống nước: Tiêu chuẩn IP68, Camera: 3 Ống ...','iphone-13-pro-max-green.jpg',0,1),
(4,1,N'iPhone 14 128GB | Giá tốt, giảm sốc 03/2024, có thu cũ',13590000,N'iPhone 14 128GB sở hữu màn hình Retina XDR OLED kích thước 6.1 inch cùng độ sáng vượt trội lên đến 1200 nits. Máy cũng được trang bị camera kép 12 MP phía sau cùng cảm biến điểm ảnh lớn, đạt 1.9 micron giúp cải thiện khả năng chụp thiếu sáng. Mẫu iPhone 14 mới cũng mang trong mình con chip Apple A15 Bionic phiên bản 5 nhân mang lại hiệu suất vượt trội.','iphone-14_1.jpg',0,1),
(5,1,N'Điện thoại iPhone 15 128GB',20390000,N'Mua điện thoại iPhone 15 128GB chính hãng, giảm đến 2,5 triệu, thu cũ giảm đến 2 triệu, đủ bộ màu xanh, hồng, vàng, đen, có trả góp 0%, bảo hành 1 ...','iphone-15-xanh-la-1.jpg',1,1),
(6,1,N'Nokia 105 Dual SIM 2G, Blue ( International Warranty )',170000,N'Kích thước, 112 x 49.5 x 14.4 mm (4.41 x 1.95 x 0.57 in), Trọng lượng, 75 g (2.57 oz), Bộ nhớ đệm / Ram, 4 MB, Số SIM, 2, Sim thường, Loại màn ...','Nokia-105-2SIM-Blue.jpg',1,5),
(7,1,N'Điện thoại Nokia 215 4G TA-1272 DS VN Xanh - Hàng chính hãng',940000,N'Mua điện thoại Nokia 215 4G giá rẻ, giao hàng tận nơi, có thể cà thẻ tại nhà, bảo hành toàn quốc. Xem ngay tại Thế Giới Di Động!','nokia-215-xanh-ngoc-new-600x600-200x200.jpg',0,5),
(8,1,N'Nokia 3310 Unlocked Mobile Phone Vintage Classic | Mobile phone, Nokia, Unlocked mobile',359000,N'Thương hiệu: Vintage Mobile... , The Nokia 3310 is an iconic mobile phone which was very successful at the time of its release. It is now back on the market with a modernized ...','Nokia-3310-Vintage-Mobile-777_1024x.jpg',1,5),
(9,1,N'Điện thoại OPPO A55 4GB/64GB Xanh Chính Hãng, Giá Tốt | Nguyễn Kim',3899000,N'Thương hiệu: OPPOMua Điện thoại OPPO A55 4GB/64GB Xanh có thiết kế sang trọng, hiệu năng ổn định, camera chất lượng và dung lượng pin ấn tượng với giá tốt, miễn phí ...','oppo-a55.jpg',0,3),
(10,1,N'Điện thoại OPPO Find N3 Flip 5G',19699000,N'Thương hiệu: OPPOĐặt trước OPPO Find N3 Flip 5G chính hãng trợ giá đến 2 triệu, tặng tai nghe Enco Air3, gói Permium service 1.2 triệu, OPPO Care 4.5 triệu, góp 0% ...','oppo-n3-flip-den-thumb-600x600.jpg',1,3),
(11,1,N'OPPO Reno8 5G (8+256GB) giá rẻ, giao ngay',5889000,N'Điện thoại OPPO Reno 8 chính hãng, cấu hình cực khủng với mức giá tốt. Hỗ trợ trả góp 0%, thu cũ trợ giá lên đời hấp dẫn. Mua OPPO Reno8 giá rẻ tại FPTShop.','oppo-reno8.jpg',0,3),
(12,1,N'Điện thoại OPPO Reno11 5G',5790000,N'Mua OPPO Reno11 5G chính hãng, giá ưu đãi, trả góp 0%, giảm ngay 300.000đ (01-31/03). Giao hàng tận nơi, thanh toán tại nhà.','oppo-reno-11-xanh-thumb-600x600.jpg',1,3),
(13,1,N'Realme 10 (6GB/128GB) - Chính hãng, giá tốt, có trả góp',3390000,N'Nhu cầu sử dụng smartphone tần suất cao tác động đến trang bị cấu hình mạnh mẽ. Do đó, những cải tiến đáng giá trên Realme 10 Pro Plus 5G ','realme10.jpg',1,4),
(14,1,N'Realme C30 (Lake Blue, 2GB RAM, 32GB Storage)',2490000,N'Buy Realme C30 (4GB, 64GB, Denim Black) at Lowest in Pakistan. Browse our store for more Smartphones in Pakistan.','realmeC30.jpg',1,4),
(15,1,N'Điện thoại Samsung Galaxy Z Fold 4 5G - RAM 12GB - 256GB - 99%',22490000,N'Samsung đã chính thức trình làng Galaxy Z Fold4 tới người dùng trong sự kiện Galaxy Unpacked 2022 diễn ra vào ngày 10.08 vừa qua. Vậy siêu phẩm này có ...','samsung_galaxy-z-fold4-256gb.jpg',1,2),
(16,1,N'Galaxy A05S (4-128GB) trả góp 0%, giảm 300.000đ',2690000,N'Màn hình độ phân giải cao FHD+ rộng 6.7", Camera Góc Rộng 50MP , Vi xử lý Octa-core mạnh mẽ','samsung-galaxy-A05s.jpg',0,2),
(17,1,N'Samsung Galaxy S23 Ultra 5G 256GB - Cửa Hàng Trải Nghiệm SAMSUNG',20999000,N'Samsung Galaxy S23 Ultra 256GB, trả góp 0%, giảm giá sâu lên đến 11tr khi mua kèm gói cước, 1 đổi 1 trong 60 ngày. Mua ngay điện thoại Galaxy S23 ...','samsung-galaxy-s23-ultra.jpg',1,2),
(18,1,N'Điện thoại Samsung Galaxy A11 Xanh',2740000,N'Màn hình tràn viền rộng 6.4" trải nghiệm hình ảnh đã mắt Bộ xử lý Octa-core cùng RAM 3GB tác vụ hằng ngày mượt mà Bảo mật tối ưu với cảm biến vân tay, ...','samsung-galaxy-sm-a115f-ds-32gb-xanh-1.jpg',0,2),
(19,1,N'Samsung Galaxy S9 Plus Mỹ 64Gb cũ 99%',3200000,N'Tổng quan thiết bị Samsung Galaxy S9 Plus Mỹ 99% ✓Giá rẻ ✓Hỗ trợ trả góp ✓Nhận ngay quà khủng ✓ Chế độ bảo hành lên đến 12 tháng.','samsung-s9.jpg',0,2),
(20,1,N'Galaxy S10 Plus 128GB (Cũ 99%) Hàn Quốc',4250000,N'Samsung Galaxy S10 Plus Hàn Quốc giá rẻ thiết kế sang trọng hiện đại, cấu hình ổn định. Mua Galaxy S10 Hàn Quốc tại XTsmart Đà Nẵng cam nguyên zin, ...','samsung-s10plus.jpg',0,2),
(21,1,N'Samsung Galaxy Z Flip4 (5G) 128GB chính hãng - TBH',13539000,N'Samsung Z flip 4 chính hãng trôi bảo hành, còn bảo hành chính hãng, rẻ hơn đến 35%. Mua Samsung Z Flip4 chính hãng gọi ngay 1900.633.471','samsung-Z-Flip-Bora-Purple-640x640-1.jpg',1,2),
--LapTop
(22,2,N'Laptop Dell Latitude 7430',15900000,N'có ngôn ngữ thiết kế mang nét đặc trưng của Dell. Thiết kế vô cùng tối giản, độ hoàn thiện tốt. Khung máy được làm hoàn toàn từ vật liệu nhựa sinh học nên máy chỉ nặng khoảng 1.2kg, cho cảm giác cầm nắm và mang đi mang lại dễ dàng, thoải mái.',N'laptop-dell-latitude-7330.jpg',0,8),
(23,2,N'Laptop Dell Vostro 16 5630',2090000,
N'
oCPU: i7 1360P
oVGA: Intel Iris Xe Graphics
oRam: 16GB DDR5
oỔ cứng: 512GB SSD
oMàn hình: 16'' QHD',N'laptop-dell-vostro-16-5630.jpg',1,8),
(24,2,N'Laptop Dell Inspiron 14 5430',16390000,N'
oCPU Intel core i5-1340P (12 cores, 16 Threads, up to 4.6GHz, 12MB cache)
oRAM 8GB DDR5
oĐồ họa Intel Iris Xe Graphics
oSSD 512GB M.2 PCIe NVMe SSD
oMàn hình 14" FHD+ (1920x1200, 16:10)',N'laptop-dell-inspiron-14-5430.jpg',0,8),
(25,2,N'Laptop Dell Vostro 3530 V3530',21390000,N'
oCPU: Intel Core i7-1355U (Up to 5.0GHz, 12M)
oRAM: 8GB (8GBx1) DDR4 3200MHz
oỔ cứng: 512GB M.2 PCIe NVMe SSD
oVGA: NVIDIA MX550 2GB GDDR6
oMàn hình: 15.6 inch FHD (1920x1080) 120Hz,250 nits WVA Anti- Glare LED Backlit Narrow Border Display
oPin: 4 Cell, 54 Wh
oCân nặng: 1.90 kg
oMàu sắc: Xám Đen
oOS: Win11 Home SL, Microsoft(R)Office Home and Student 2021
o21,390,000₫',N'laptop-dell-vostro-3530.jpg',1,8),
(26,2,N'Laptop Dell Inspiron 16 N5620',14890000,N'
oCPU: Intel® Core™ i5-1240P (3.30 GHz up to 4.40 GHz, 12MB)
oRAM: 16GB (8GBx2) DDR4 3200MHz (ổ cắm 2x SO-DIMM, tối đa 32GB SDRAM)
oỔ cứng: 512GB SSD M.2 2280 PCIe 3.0x4 NVMe+ 1slot
oCard đồ họa: Intel® Iris® Xe Graphics
oMàn hình: 16.0-inch 16:10 FHD+ (1920 x 1200) Anti-Glare Non-Touch WVA Display with ComfortView Support',N'laptop-dell-inspiron-16-n5620.jpg',0,8),
(27,2,N'Apple MacBook Air M1 256GB',17790000,N'Thiết kế tinh tế, chất liệu nhôm bền bỉMacbook Air 2020 M1 mới vẫn luôn tuân thủ triết lý thiết kế với những đường nét đơn nhưng vô cùng sang trọng. Máy có độ mỏng nhẹ chỉ 1,29kg và các cạnh tràn viền khiến thiết bị trở nên đẹp hơn và cao cấp hơn.',N'macbook-air-m1-2020-gold.jpg',0,9),
(28,2,N'Apple Macbook Air M2 2022 16GB 512GB',34990000,N'
hiết kế sang trọng, lịch lãm - siêu mỏng 11.3mm, chỉ 1.24kg
Hiệu năng hàng đầu - Chip Apple m2, 8 nhân GPU, hỗ trợ tốt các phần mềm như Word, Axel, Adoble Premier
Đa nhiệm mượt mà - Ram 16GB, SSD 512GB cho phép vừa làm việc, vừa nghe nhạc
Màn hình sắc nét - Độ phân giải 2560 x 1664 cùng độ sáng 500 nits
Âm thanh sống động - 4 loa tramg bị công nghệ dolby atmos và âm thanh đa chiều',N'macbook_air_m2.jpg',1,9),
(29,2,N'Macbook Pro 14 M3 8GB - 512GB',37990000,N'
Thiết kế sang trọng, thời thượng với mặt lưng nhôm cùng trọng lượng chỉ 1.55kg
Xử lý moi tác vụ với con chip M3 cùng 10 nhân GPU
Chất lượng hiển thị hàng đầu - màn hình 14.2 inch tấm nền retina
Bàn phím trang bị Touch ID cho phép mở khoá chỉ với 1 chạm
Tận hưởng chất lượng âm thanh chân thật với hệ thống 6 loa cùng công nghệ Dolby Atmos',N'vn_macbook_pro_m3_silver.jpg',1,9),
(30,2,N'Laptop Asus VivoBook 15 OLED',16890000,N'
Màn hình 15.6 inch tấm nền OLED cho khả năng tái tạo hoàn hảo
CPU Intel Core i5-13500H mạnh mẽ có thể xử lý mượt mà mọi tác vụ
Card Intel Iris XE cho trải nghiệm giải trí cao
RAM 16 GB chạy đa ứng dụng mượt mà không lo giật, lag
Ổ cứng SSD 512 GB cho tốc độ truy xuất dữ liệu nhanh, không gian lưu trữ đủ lớn',N'laptop-asus-vivobook-15.jpg',0,10),
(31,2,N'Laptop Asus TUF GAMING F15',16290000,N'
Thiết kế laptop sang trọng thích hợp giúp bạn bỏ vào balo mang theo bên mình
CPU Intel Core i5-11400H cho phép bạn thỏa thích chiến các tựa game nặng
Ổ cứng SSD 512GB giúp bạn lưu trữ nhiều thông tin, dữ liệu mà không cần sao chép quá USB
Màn hình 15.6 inch cùng tính năng chống lóa sẽ bảo vệ mắt của bạn trong quá trình chơi game
Trang bị nhiều cổng kết nối giúp quá trình nhận và chia sẻ dữ liệu trở nên dễ dàng, thuận tiện',N'laptop-asus-tuf-gaming-f15.jpg',0,10),
(32,2,N'Laptop Asus Gaming ROG Zephyrus G14',33490000,N'
Laptop gaming mạnh mẽ với CPU AMD Ryzen 7 7735HS xử lý mọi ứng dụng và trò chơi
GPU GeForce RTX 3050 mang lại hiệu suất tối thượng cho game thủ và nhà sáng tạo video
RAM 16GB cùng ổ cứng 512GB cho khả năng xử lý đa nhiệm, hỗ trợ lưu trữ game, tài liệu nhanh chóng
Màn hình 14 inch Full HD cùng tấm nền IPS giúp tái hiện màu sắc sống động như thật
Âm thanh Dolby Atmos giúp mọi trải nghiệm giải trí, làm việc chân thực hơn bao giờ hết',N'laptop-asus-gaming-rog-zephyrus-g14.jpg',1,10),
(33,2,N'Laptop Asus Zenbook 14 OLED',20490000,N'
CPU AMD Ryzen 5 7530U xử lý nhanh chóng mọi tác vụ học tập, văn phòng.
Màn hình 14 inch OLED 2.8K cho màu sắc hiển thị rực rỡ, chân thực cùng công nghệ lọc ánh sáng xanh lên đến 70%.
Đồ họa AMD Radeon Graphics dễ dàng chỉnh sửa hình ảnh cơ bản hay chơi các tựa game nhẹ.
Bộ nhớ RAM 16GB LPDDR4X chạy nhiều ứng dụng cùng lúc mà không lo lag giật.
Ổ cứng SSD 512GB cho tốc độc truy cập dữ liệu nhanh chóng.
Lớp vỏ được làm từ kim loại cao cấp, khối lượng gọn nhẹ chỉ 1.39 kg.',N'laptop-asus-zenbook-14-oled.jpg',1,10),
(34,2,N'Laptop HP Pavilion 14',16490000,N'
 Thuộc phân khúc laptop học tập - văn phòng với kích thước nhỏ gọn, màn hình 14 inch tiêu chuẩn.
Bộ vi xử lý Intel Core i5-1235U mạnh mẽ, xử lý mượt mà các tác vụ văn phòng như Word, Excel, PowerPoint.
Card đồ họa tích hợp Intel Iris Xe Graphics cho khả năng chỉnh sửa hình ảnh cơ bản, làm poster trên Lightroom, Photoshop, Illustrator,... một cách trơn tru.
16GB RAM DDR4 đáp ứng tốt khả năng đa nhiệm.
Cùng ổ cứng SSD 512GB NVMe PCIe cho không gian lưu trữ các tài liệu học tập, làm việc.
Đa dạng kết nối với các cổng như: USB Type-C, USB Type-A, HDMI 2.0, jack tai nghe/mic,...',N'laptop-hp-pavilion-14.jpg',0,11),
(35,2,N'Laptop HP Gaming Victus 15',17590000,N'
Sở hữu màn hình 15.6 inch với lớp vỏ đen thời thượng
CPU Intel Core R5-7535HS hỗ trợ mình giải quyết nhanh gọn hàng loạt tác vụ mà không lo giật lag
Card  RTX 2050 giúp giải quyết được khối lượng công việc nặng
RAM 8GB cùng ổ cứng 512 GB SSD ch không gian lưu trữ đủ lớn, lưu trữ tài liệu, hình ảnh,...',N'laptop-hp-gaming-victus-15.jpg',1,11),
(36,2,N'Laptop HP Evy 13 BA1047 290F5UA',15990000,N'
 	Là trợ thủ đắc lực cho mọi công việc từ văn phòng cho đến giải trí, chỉnh sửa hình ảnh với CPU Intel Core i5 - 1135G7.
Đa nhiệm vượt bậc với RAM 8 GB cho mọi thao tác được tối ưu mà không lo xảy ra tình trạng giật, lag máy.
SSD 256 GB NVMe PCle mở rộng không gian lưu trữ rộng lớn cho mọi loại tệp dữ liệu cần thiết.
Tích hợp công nghệ Bang & Olufsen lọc tiếng ồn, giúp âm thanh rõ ràng và khả năng khuếch đại cực êm tai.
Sở hữu hệ điều hành Windows 11 tân tiến cung cấp nhiều giao diện mới mẻ.',N'laptop-hp-evy-13-ba1047-290f5ua.jpg',0,11),
(37,2,N'Laptop HP Elitebook 630 G9',16990000,N'
Sở hữu thiết kế thời thượng với các đường nét thiết kế mềm mại, sang trọng
Màn hình 13.3 inch Full HD mang đến cho bạn những khung hình sắc nét, sống động
CPU Intel Core i5-1235U cho bạn khả năng vận hành xử lý nhanh chóng, mượt mà
Chất lượng đồ họa đỉnh cao với chip đồ họa Intel Iris Xe Graphics
RAM 8GB đạt chuẩn DDR4 cho khả năng đa nhiệm tốt thao tác cùng lúc nhiều tác vụ mà không lo lag, giật',N'laptop-hp-elitebook-630-g9.jpg',1,11),
(38,2,N'Laptop Lenovo Yoga Duet 7',18990000,N'
Chip i5-1135G7 , cùng card đồ hoạ Intel Iris Xe Graphics phù hợp với các tác vụ văn phòng cơ bản cho đến chỉnh sửa hình ảnh trên PTS
Ram 8GB và ổ cứng SSD 512 mang đến tốc độ xử lí nhanh và khả năng lưu trữ lớn.
Màn hình 13 inches với độ phân giải 2K cho hình ảnh sống động, chân thực
Lớp vỏ được làm từ hợp kim magnesium với aluminium vô cùng cứng cáp, sang trọng,
Trọng lượng  chỉ 1,168.3 g dễ dàng mang theo khi di chuyển
Đèn bàn phím được tích hợp đèn led- Thoả sức làm việc trong môi trường thiếu sáng
Máy đi kèm windows 11 bản quyền',N'laptop-lenovo-yoga-duet-7.jpg',1,12),
(39,2,N'Laptop Lenovo IdeaPad Gaming 3',14890000,N'
Laptop gaming với màn hình 15.6 inch cùng trọng lượng 2.25 kg nhẹ nhàng cho game thủ khi di chuyển
CPU Ryzen 5-5500H dù làm việc hay chiến game máy đều xử lý nhanh gọn
Card màn hình RTX 2050 mạnh mẽ giúp game thủ tận hưởng hiệu ứng đồ họa mãn nhãn
RAM 8GB cùng SSD 512GB NVMe cực nhanh giúp lưu trữ game, mở máy nhanh chóng
Tần số quét 144 Hz rất hợp để chơi những tựa game bắn súng FPS như CSGO, Overwatch 2,... giúp tạo nên những pha xử lý chính xác',N'laptop-lenovo-Ideapad-gaming-3.jpg',0,12),
(40,2,N'Laptop Lenovo ThinkBook 15 G5',16290000,N'
Màn hình 15.6 inch Full HD cho khả năng hiển thị rõ nét, màu sắc chân thực.
CPU Intel Core i5 1335U xử lý tốt và mượt mà mọi tác vụ văn phòng trên các ứng dụng của Office như Word, Excel, PowerPoint,...
Card tích hợp Intel Iris Xe Graphics hỗ trợ làm việc, chỉnh sửa ảnh cơ bản hay chiến một số tựa game nhẹ.
RAM 16 GB đa nhiệm, máy vẫn chạy mượt mà khi bạn mở cùng lúc hàng chục tác vụ.
Ổ cứng SSD 512 GB cho phép lưu trữ nhiều tệp tin, ứng dụng và tài liệu với dung lượng lớn.',N'laptop-lenovo-thinkbook-15-g5.jpg',0,12),
(41,2,N'Laptop Lenovo Ideapad Flex 5',15490000,N'
Thiết kế thanh mãng, thời thượng với trọng lượng nhe chỉ 1.55 kg.
Màn hình 14 inch cùng độ phân giải WUXGA, mang đến hình ảnh hiển thị mượt êm, rõ nét.
CPU AMD Ryzen 7 5700U cho tốc độ phản hồi nhanh và xử lý đa nhiệm, tiết kiệm điện tối ưu, làm việc trơn tru.
RAM 16GB đảm bảo cho người dùng làm việc một các mượt mà với các ứng dụng mà không bị xảy ra tình trạng giật lag.
Ổ cứng SSD 512GB giúp quá trình khởi động máy hay sao chép dữ liệu trở nên nhanh chóng hơn. ',N'laptop-lenovo-Ideapad-flex-5.jpg',0,12),
(42,2,N'Laptop Gaming Acer Nitro 5 Eagle AN515-57-5669 NH.QEHSV.001',15990000,N'
 	Hiệu năng siêu cao, bộ nhớ dữ liệu lớn - Chip Intel Core i5-11400H, bộ nhớ 512GB SSD
Trải nghiệm hình ảnh chất lượng cao - Màn hình 15.6", Full HD, tần số quét 144Hz
Card đồ hoạ rời NVIDIA® GeForce GTX™ 1650 cho hình ảnh mượt mà không giật lag
Năng lượng bất tận không lắng lo với viên pin 57Wh',N'laptop-gaming-acer-nitro-5-eagle.jpg',0,13),
(43,2,N'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-573X',18990000,N'
Sở hữu thiết kế tối giản vỏ xám cùng trọng lượng rất nhẹ chỉ 1.6 kg cho phép bạn mang theo đi học tập hay làm việc.
Intel Core i5-1335U xử lý nhanh các tác vụ văn phòng, thuyết trình như Word, Excel, Powerpoint sẽ luôn chạy mượt mà.
RAM 16GB chạy tốt các ứng dụng thiết kế đồ họa 2D như Photoshop, Illustrator đồng thời mở nhiều tab trình duyệt không gặp phải tình trạng giật lag.
Ổ cứng SSD 512GB giúp cho việc khởi động hệ điều hành và các ứng dụng được nhanh chóng tiết kiệm nhiều thời gian chờ.
Màn hình cảm ứng 14 inch Full HD+ để người dùng có thể tương tác, sáng tạo dễ dàng ngay trên chiếc màn hình máy.',N'laptop-acer-aspire-5-spin-14.jpg',1,13),
(44,2,N'Laptop Acer Gaming Aspire 7',15990000,N'
CPU Intel Core i5-12450H dễ dàng xử lý mọi tác vụ làm việc học tập, làm việc thường ngày.
RAM 16GB DDR4 cùng ổ cứng dung lượng 512GB PCIe NVMe SSD có tốc độ đọc ghi siêu cao, thời gian mở máy, truy cập tệp, copy tệp,... nhanh chóng.
Màn hình 15.6 inch Full HD cho không gian trải nghiệm nội dung tương đối rộng rãi, màu sắc rõ nét.
Công nghệ Acer ComfyView bảo vệ đôi mắt của bạn khỏi những tác động tiêu cực từ ánh sáng màn hình.',N'laptop-acer-gaming-spire-7.jpg',0,13),
(45,2,N'Laptop Acer Swift 3',18390000,N'
Thiết kế với trọng lượng nhẹ 1.25 kg dễ dàng mang theo mọi nơi
CPU Intel Core i5-1240P mạnh mẽ cân mọi tác vụ làm việc, học tập
RAM 16GB đa nhiệm hỗ trợ mở hàng chục tabs web cùng lúc không lo lag, giật
Ổ cứng 512GB SSD rộng rãi giúp lưu trữ file, tài liệu thoải mái
Trang bị các kết nối như: USB 3.2 Type-A, HDMI và ThunderBolt 4 giúp sao lưu, truyền tải dữ liệu tốc độ cao',N'laptop-acer-swift-3.jpg',1,13),
(46,2,N'Laptop Acer Swift 3X',20390000,N'Một chiếc laptop mỏng với hiệu năng cao là sự lựa chọn hàng đầu của người dùng laptop. Với Acer Swift 3X SF314, laptop sẽ mang đến cho người dùng trải nghiệm mượt mà với hiệu năng cao, thiết kế sang trọng.
Thiết kế nguyên khối – màn hình tràn viền
Laptop Acer Swift 3X SF314 sở hữu thiết kế tràn viền 14 inch FHD. Các viền của máy siêu mỏng, chỉ khoảng 6.3mm nhờ đó giúp laptop trông vô cùng nhỏ gọn. Màn hình trên Acer Swift 3X SF314 cho khả năng hiển thị màU chuẩn xác, gam màu trung thực với 72% NTSC color gamut.',N'laptop-acer-swift-3x.jpg',1,13),
--tai nghe
(47,3,N'Tai nghe Bluetooth chụp tai Sony WH-1000XM4',5290000,N'
Trang bị bộ xử lý chống ồn QN1 giúp loại bỏ tạp âm từ môi trường xung quanh
Màng loa kích thước 40 mm mạnh mẽ mang đến chất lượng âm thanh đỉnh cao
Dễ dàng thực hiện cuộc gọi rảnh tay nhờ vào micro tích hợp sẵn trên tai nghe
Tăng giảm âm lượng hay nhận cuộc gọi chỉ với một thao tác chạm vào tai nghe',N'sony-wh-1000xm4.jpg',1,14),
(48,3,N'Tai nghe Bluetooth chụp tai Sony WH-1000XM5',6290000,N'
Công nghệ Auto NC Optimizer tự động khử tiếng ồn dựa theo môi trường
Trải nghiệm nghe chân thật, sống động nhờ tính năng 360 Reality Audio
Thiết kế sang trọng, trọng lượng nhẹ với phần da mềm mại, ôm khít đầu
Năng lượng cho cả ngày dài với thời lượng sử dụng pin lên đến 40 giờ',N'tai-nghe-chup-tai-sony-wh-1000xm5.jpg',1,14),
(49,3,N'Tai nghe Bluetooth True Wireless HUAWEI FreeClip',4290000,N'
Thiết kế tai nghe dạng chữ C cùng công nghệ nghe mở tai vô cùng độc đáo
Trình điều khiển 10.8mm mang đến âm thanh chất lượng tuyệt vời, ấn tượng
Micro thông minh tích hợp thuật toán DNN cho trải nghiệm đàm thoại thú vị
Thời lượng pin cực tốt, hoạt động lên đến 3 ngày liên tục chỉ với một lần sạc',N'tai-nghe-khong-day-huawei-freeclip_7.jpg',1,15),
(50,3,N'Tai nghe Bluetooth True Wireless Marshall Minor 3',2890000,N'
Thời lượng pin tốt, có thể hoạt động đến 5 giờ liên tục và 25 giờ khi kèm hộp sạc
Màng loa 12mm được tuỳ chỉnh mang đến chất lượng âm thanh rõ ràng, sắc nét
Trang bị kháng nước chuẩn IPX4 giúp bảo vệ tai nghe khỏi mồi hôi và nước bắn
Tích hợp cảm biến tiệm cận có khả năng tự động dừng tắt nhạc khi tháo tai nghe',N'tai-nghe-bluetooth-marshall-minor-3.jpg',1,15),
(51,3,N'Tai nghe Bluetooth True Wireless Xiaomi Redmi Buds 5',990000,N'
Driver kích thước 12.4mm mang đến chất lượng âm thanh vượt trội, chất lượng cao
Công nghệ giảm tiếng ồn lên đến 46dB giúp triệt tiêu tới 99.5% tiếng ồn xung quanh
Thời lượng sử dụng lên đến 40 giờ khi kèm hộp sạc giúp bạn thoả sức trải nghiệm
Đàm thoại rõ ràng nhờ vào trang bị micro kép có khả năng khử tiếng ồn thông minh',N'tai-nghe-khong-day-xiaomi-redmi-buds-5.jpg',0,15),
(52,3,N'Tai nghe Bluetooth True Wireless SoundPEATS Air 3',790000,N'
Driver 14.2mm cung cấp trường âm thanh rộng cho trải nghiệm nghe tuyệt hảo
Độ trễ cực thấp chỉ 60 ms giúp cho quá trình chiến game trở nên trọn vẹn hơn
Tích hợp 4 micro với khả năng chống ồn tốt giúp nâng cao hiệu quả đàm thoại
Thoải mái luyện tập và đi mưa với trang bị kháng nước, kháng bụi chuẩn IPX5',N'soundpeats_air3.jpg',0,15),
(53,3,N'Tai nghe Bluetooth True Wireless TRUEFREE T3',310000,N'
Trải nghiệm âm nhạc chất lượng với driver 13mm, cho âm thanh sống động và du dương
Thời lượng sử dụng lên đến 28 giờ, cho bạn tha hồ tận hưởng mà không lo bị gián đoạn
Chế độ Game Mode với độ trễ chỉ 40ms, cho khả năng đồng bộ hình ảnh và âm thanh tốt
Trọng lượng siêu nhẹ và thiết kế nhỏ gọn giúp mang lại cảm giác thoải mái khi đeo trên tai',N'tai-nghe-khong-day-truefree-t3.jpg',0,15),
(54,3,N'Tai nghe Bluetooth True Wireless Divoom Spark Air',890000,N'
Trải nghiệm xem phim, nghe nhạc chân thực và mượt mà với độ trễ cực thấp chỉ 0.04 s
Thiết kế tinh tế, đẹp mắt với tai nghe có tông màu hồng ngọt ngào phù hợp cho phái nữ
Tích hợp cảm ứng thông minh hỗ trợ điều khiển dễ dàng mà không cần mở điện thoại
Driver kích thước 13 mm kết hợp với âm thanh Hi-Fi cho chất âm vượt trội, sống động',N'tai-nghe-khong-day-divoom-spark-air_1.jpg',0,15),
(55,3,N'Tai nghe Bluetooth True Wireless SoundPEATS Truefree 2',450000,N'
Chuẩn kháng nước IPX7 giúp bảo vệ tai nghe khỏi mồ hôi và nước bắn
Màng loa sinh học 6 nm có độ rõ nét cao âm thanh sống động chân thực
Đệm tai được làm từ chất liệu cao su mềm mại, êm ái, không gây đau tai
Thời lượng pin sử dụng xuyên suốt 5 giờ và lên đến 20 giờ kèm hộp sạc',N'tai-nghe-khong-day-soundpeats-true-free-2-2_1_2.jpg',0,15),
(56,3,N'Tai nghe Bluetooth True Wireless myALO Z-One',390000,N'
Thiết kế công thái học, Hộp đựng được chế tác từ hợp kim đúc nguyên khối bền bỉ và sang trọng
Âm thanh HiFi stereo kết hợp với màng loa 13mm cho chất lượng âm thanh sống động, chân thực
Trang bị kháng nước chuẩn IPX4 giúp bảo vệ tai nghe tránh hư hỏng khi bị nước bắn hoặc mồ hôi
Thời lượng pin lên đến 30 giờ, sẵn sàng đồng hành cùng bạn cả ngày dài mà không lo bị gián đoạn',N'tai-nghe-khong-day-myalo-z-one_2.jpg',1,15),
(57,3,N'Tai nghe Bluetooth True Wireless Huawei FreeBuds 5i',1390000,N'
Thiết kế đẹp mắt, tai nghe dạng in-ear tạo cảm giác thoải mái khi đeo
Thời lượng pin tốt khi có thể hoạt động lên đến 28 giờ khi kèm hộp sạc
Tích hợp công nghệ chống ồn chủ động ANC giúp cách ly tiếng ồn tốt
Driver 10mm cùng công nghệ âm thanh Hi-Res cho chất âm sống động',N'huawei_freebuds_5i_6.jpg',1,15),
(58,3,N'Tai nghe không dây chụp tai Gaming Logitech G435',1490000,N'
Kết nối lightspeed không dây hiệu suất cao có thể sử dụng trên PC, Mac, PS4 & 5
Có thể kết nối thông qua bluetooth khi sử dụng thiết bị khác
Thoải mái nghe nhạc với thời lượng pin lên đến 18 giờ
Trọng lượng nhẹ chỉ 165GR, đeo suốt cả ngày
Trò chuyện thoải mái với mic tích hợp',N'_0003_62592_tai_nghe_logitech_g435_lig_3.jpg',0,16),
(59,3,N'Tai nghe Bluetooth thể thao Shokz OpenFit',4490000,N'
Thời lượng pin 28h phù hợp với nghe audiobook, họp online và xem phim dài tập
Công nghệ DirectPitch™ cho chất lượng âm thanh chân thực, nốt trầm sâu lắng
Cấu trúc Dolphin Arc cùng thiết kế Openfit cho cảm giác thoải mái khi sử dụng lâu
Khả năng lọc tiếng ồn tốt, hỗ trợ đàm thoại rõ nét ngay cả trong khu vực đông đúc',N'tai-nghe-khong-day-shokz-openfit_5.jpg',0,16),
(60,3,N'Tai nghe Bluetooth chụp tai Anker Soundcore Space One',1690000,N'
Công nghệ chống ồn chủ động ANC giúp triệt tiêu đến 98% tiếng ồn xung quanh
Driver kích thước lên đến 40mm cho khả năng tái tạo âm thanh sống động, rõ ràng
Sẵn sàng đồng hành cùng bạn vời thời lượng pin lên đến 55 giờ sử dụng liên tục
Đàm thoại rõ ràng với 3 micro AI, giúp thoải mái trò chuyện mà không bị gián đoạn',N'tai-nghe-chup-tai-anker-soundcore-space-one_8.jpg',1,16),
(61,3,N'Tai nghe Bluetooth chụp tai Edifier WH950NB',2490000,N'
Thiết kế nhỏ gọn, tinh tế cùng trọng lượng nhẹ mang lại cảm giác thoải mái khi đeo
Trình điều khiển 40mm cùng âm thanh Hi-res Audio cho trải nghiệm nghe chân thực
Tích hợp công nghệ chống ồn chủ động ANC giúp loại bỏ mọi tiếng ồn xung quanh
Độ trễ thấp chỉ 80ms giúp đồng bộ hóa âm thanh trong game một cách nhanh chóng',N'edifier_wh950nb_3.jpg',1,16),
--ban phím
(62,4,N'Bàn phím cơ không dây Akko 3087 RF Matcha Red Bean',990000,N'Bàn phím cơ Akko 3087 RF Matcha Red Bean được làm với kiểu dáng nhỏ gọn với 87 phím bấm được sắp xếp hợp lý. Đây còn được gọi là kiểu dáng bàn phím TKL nên bạn hoàn toàn có thể cất gọn nó vào trong balo, túi xách để sử dụng ở bất kỳ đâu.',N'ban-phim-akko-3081-rf-matcha-1.jpg',0,17),
(63,4,N'Bàn phím cơ AKKO 3108 RF Ocean Star',1090000,N'
Không cần thích nghi keycap mới với PBT Double-Shot, ASA profile vô cùng quen thuộc
Trải nghiệm cảm giác gõ tối ưu và êm ái với bàn phím đã tích hợp sẵn foam tiêu âm PCB
Kết nối có dây với Type-C to Type-A và không dây 2.4Ghz với pin AAA vô cùng tiện lợi
Thiết kế màu sắc tươi mới, layout Full Size phù hợp đa số người dùng, pin dùng 3-5 tháng',N'ban-phim-akko-3081-rf-ocean-start-1.jpg',1,17),
(64,4,N'Bàn phím cơ không dây AKKO 3068B Plus Prunus Lannesiana',1290000,N'
Kết nối nhiều thiết bị và đa cách kết nối như USB Type C, Bluetooth 5.0, Wireless 2.4Ghz
Sở hữu bộ keycap PBT Double-Shot, ASA profile vô cùng quen thuộc, tạo sự thuận tiện
Có đèn LED nền RGB nhiều chế độ và hotswap tha hồ custom theo sở thích riêng cá nhân
Trải nghiệm gõ tối ưu, êm ái với lót tiêu âm (FOAM) EVA dày 3.5mm nằm giữa plate và PCB',N'ban-phim-co-akko-3068b-plus-prunus-lannesiana-1.jpg',1,17),
(65,4,N'Bàn phím cơ không dây Akko 3087 RF One Piece Luffy',1599000,N'
Thiết kế hiện đại và có tính di động cực cao nhờ vào độ mỏng và trọng lượng nhẹ, có thể dễ dàng để nó vào trong balo hay túi xách và mang đi khắp nơi.
Kiểu switch độc đáo cho hiệu suất và tăng độ chính xác khi chơi game.
Kết nối đa dạng 2.4 GHz Wireless, USB Type-C.',N'ban-phim-co-akko-3087-rf-one-piece-luffy-cream_2.jpg',1,17),
(66,4,N'Bàn phím cơ không dây Akko 3087 RF Black On White',990000,N'
Bàn phím cơ AKKO 3087 RF Black On White được trang bị switch V3 có biên độ lò xo dày tạo độ đàn hồi, độ nảy và độ nhạy cực kỳ tốt và mượt mà. Kết hợp hoàn hảo cùng với foam tiêu âm PCB giúp giảm cộng hưởng tiếng ồn, tránh làm phiền đến mọi người xung quanh bạn.',N'ban-phim-co-akko-3108-rf-black-on-white-1.jpg',0,17),
(67,4,N'Bàn phím cơ AKKO Monsgeek MG75 Black & Cyan',999000,N'
Sử dụng thiết kế layout 75%, 82 nút đang rất hot hiện nay, giúp bạn sở hữu xu hướng trên tay
Được nâng cấp và cải tiến rất nhiều về chất lượng với cấu trúc traymount / Stab Plate-mount
Bàn phím có hỗ trợ về NKRO / Multimedia / Macro / Khóa phím Win, đèn LED trắng đẹp mắt
Kết nối với dây USB Type-C to Type-A siêu dễ dùng và tiện lợi, có thể tháo rời bất cứ lúc nào',N'ban-phim-co-akko-monsgeek-mg75-black-cyan-1.jpg',0,17),
(68,4,N'Bàn phím Apple Magic Keyboard 2021 MK2A3',1990000,N'
Thiết kế hiện đại và có tính di động cực cao nhờ vào độ mỏng và trọng lượng nhẹ, có thể dễ dàng để nó vào trong balo hay túi xách và mang đi khắp nơi
Hoàn thiện từ chất liệu nhôm cao cấpmang đến cho sản phẩm diện mạo cao cấp, sang trọng và khả năng chống va đập tốt
Cơ chế cắt kéo bên dưới mỗi phím cũng như hành trình phím được tối ưu hoá và cấu hình thấp mang đến trải nghiệm đánh máy chính xác và êm ái
Trang bị kết nối không dây Bluetooth hoặc thông qua cáp sạc Lightning hỗ trợ vừa sạc vừa kết nối
Sử dụng pin sạc Li-ion cho khả năng sử dụng lên tới 30 ngày cho mỗi lần sạc',N'ban-phim-apple-magic-keyboard-2021.jpg',1,18),
(69,4,N'Bàn phím cơ Dareu EK75 trắng đen',599000,N'
Sản phẩm là loại bàn phím có dây với layout 75% gọn gàng, không chiếm nhiều diện tích khi đặt trên bàn làm việc hay cất trong balo.
sử dụng loại DREAM Switch được custom bởi Dareu mang lại cảm giác nhấn tuyến tính tốt, tối ưu trải nghiệm khi dùng cho việc nhập liệu hoặc chơi game.
7 loại chế độ đèn nền cùng 3 chế độ chiếu sáng để lựa chọn, cùng với độ sáng và tốc độ chiếu khác nhau để mang lại cảm giác thích thú hơn khi sử dụng.
Sử dụng dây cáp USB - Type C: đầu gắn với bàn phím là Type C và kết nối với laptop hay PC qua cổng USB.',N'ban-phim-co-dareu-ek75-dream-switch.jpg',0,19),
(70,4,N'Bàn phím cơ không dây AULA F99 Agile Switch',1890000,N'
Cấu trúc Gasket giúp tối ưu hóa khả năng đàn hồi và giảm âm thanh khi trục va vào tấm định vị.
Thiết kế chân bàn phím có thể điều chỉnh 2 nấc giúp người dùng có thể tự điều chỉnh góc sử dụng phù hợp.
Chất liệu keycap được làm từ nhựa PBT siêu bền và ít hao mòn trong quá trình sử dụng.
Bàn phím được tích hợp sẵn pin 8000 mAh siêu khỏe, sử dụng lên tới hơn 50 tiếng.',N'ban-phim-co-khong-day-aula-f99-agile-switch.jpg',1,19),
(71,4,N'Bàn phím cơ không dây Dareu EK868 Red Switch',690000,N'
Thiết kế bàn phím nhỏ gọn chỉ 68 phím nhưng vẫn tích hợp đủ các nút, chức năng bạn cần
Trang bị viên pin khủng lên có dung lượng lên tới 2.000mAh giúp sử dụng lên tới 30 ngày
Kết nối linh hoạt giữa không dây (Wireless - Bluetooth 5.1) và có dây (wired - USB Type-C)
Dễ dàng chuyển đổi kết nối giữa 2 hệ điều hành Mac và Windows với công nghệ mới nhất',N'ban-phim-co-khong-day-dareu-ek868-brown-switch-2_2.jpg',0,19),
(72,4,N'Bàn phím cơ E-DRA EK375 Alpha Đen Đỏ Red Switch',599000,N'
Keycaps PBT Doubleshot cao cấp siêu bền, chống bám vân tay và mô hôi, khó phai các ký tự
Độ bền lên tới 50 triệu lượt nhấn nhờ trang bị switch E-Dra cao cấp, giúp gõ êm tay, độ nảy tốt
Hiệu ứng ánh sáng rực rỡ, đẹp mắt, có thể thay đổi hiệu ứng chiếu sáng với LED RGB 7 màu
Tích hợp núm xoay khác biệt cho phép điều chỉnh âm lượng một cách nhanh chóng và tiện lợi',N'ban-phim-co-e-dra-ek375-alpha-red-switch-2_2.jpg',0,20),
(73,4,N'Bàn phím cơ E-DRA không dây EK384 Alpha xám trắng Red Switch',820000,N'
Không chỉ kết nối có dây qua Type-C mà còn kết nối không dây qua Bluetooth và Wireless 2.4Ghz
Cung cấp ánh sáng đầy đủ khi làm việc trong bóng tối và đẹp mắt với đèn LED RGB cao và rõ nét
Keycaps ABS double injection cứng cáp được trang bị switch Huano được gia công chất lượng cao
Thời gian sử dụng bàn phím lâu với dung lượng pin 1200mAh hoặc sạc qua dây USB A to C đi kèm',N'ban-phim-co-e-dra-khong-day-ek384-beta-red-switch-2.jpg',1,20),
(74,4,N'Bàn phím cơ E-DRA không dây EK398L Alpha xám trắng Red Switch',649000,N'
Kết nối không dây đa dạng tiện dụng với hai chế độ là Wireless 2.4G và Bluetooth thời thượng hơn
Phiên bản rút gọn 98 phím của bản full size nhưng vẫn tích hợp đầy đủ chức năng cho game thủ
Keycaps ABS Doubleshot cứng cáp kết hợp cùng full các phím antishosting cho gõ êm tay, nảy tốt
Thời gian sử dụng bàn phím lâu với 2 viên pin AA tích hợp, tương thích với hệ điều hành Windows',N'ban-phim-co-e-dra-khong-day-ek398l-alpha-red-switch-2.jpg',1,20),
(75,4,N'Bàn phím cơ không dây Logitech G613',1850000,N'
Trang bị công nghệ không dây LIGHTSPEED độc quyền của Logitech cho tốc độ phản hồi siêu nhanh 1ms
Phím bấm Romer-G Tactile mang lại hiệu suất cơ học chính xác, yên tĩnh với cảm giác tuyệt vời và độ bền 70 triệu lần nhấn
Hành trình phím ngắn chỉ 1,5 mm cho hiệu suất nhanh, chính xác và yên tĩnh trong khi vẫn duy trì được cảm giác nhấn phím rõ ràng
Trang bị kết nối Bluetooth và đầu thu USB khi sử dụng trong khoảng cách tối đa 10m
Tích hợp cái phím G đặc biệt có thể thiết lập chức năng thông qua phần mềm Logitech G HUB
Trang bị 2 Pin AAA cho thời gian sử dụng thoải mái lên tới 18 tháng',N'ban-phim-co-khong-day-logitech-g613.jpg',0,21),
(76,4,N'Bàn phím cơ không dây Dareu EK868 Red Switch',2190000,N'
Sản phẩm bàn phím cơ không dây Logitech cho phép người dùng trải nghiệm việc gõ trên các phím cơ bằng cách cảm nhận những cú nảy trên ngón tay như một chiêu thức gây nghiện nhờ vào thiết kế phím lõm, bo vào đầu ngón tay. Cạnh đó, tiếng lách cách kiểu cổ, khiến người ta phải hài lòng khi mỗi lần nhấn.',N'ban-phim-co-khong-day-logitech-pop-keys.jpg',1,21),
--chuột
(77,5,N'Chuột có dây Gaming Logitech G102 LightSync Gen 2',405000,N'
Phản hồi siêu nhạy với cảm biến quang học 8.000 DPI
Ổn định với tốc độ phản hồi 1ms thông qua cổng USB
Công nghệ LIGHTSYNC RGB giúp tùy chỉnh linh động
Dễ dàng điều khiển với 6 nút bấm được tích hợp sẵn',N'chuot-choi-game-co-day-logitech-g102.jpg',0,22),
(78,5,N'Chuột Gaming Logitech G502 Hero',990000,N'
Chuột được trang bị cảm biến quang học HERO mang lại hiệu suất ổn định và chính xác vượt trội với khả năng làm mượt, lọc và tăng tốc lên tới 25.600 DPI
Hệ thống ứng lực cho nút cơ học cùng với tốc độ phản hồi 1ms nâng cao sự ổn định và giúp giảm lực cần thiết để nhấp chuột nhanh chóng
Dây kết nối USB dài 2,1m có trọng lượng nhẹ hơn, mượt mà hơn, linh hoạt hơn và kết nối ổn định
Công nghệ ánh sáng LIGHTSYNC RGB có thể tùy chỉnh hình động và hiệu ứng ánh sáng lên tới 16,8 triệu màu thông qua phần mềm G Hub
Tích hợp 11 nút có thể lập trình thông qua phần mềm G Hub của Logitech
Trang bị năm khối nặng có thể điều chỉnh trọng lượng cho cảm giác chuột và hành vi trượt theo sở thích cá nhân
Thiết kế thoải mái cho người thuận tay phải với viền bên bằng cao su giúp tăng thêm khả năng điều khiển
',N'chuot-choi-game-co-day-logitech-g102.jpg',1,22),
(79,5,N'Chuột gaming Logitech Pro X Superlight 2 Lightspeed',3190000,N'
Sở hữu trọng lượng nhẹ 63g và khả năng trượt gần như không ma sát cho chiến game bứt tốc
Hiệu suất nhạy bén và khả năng kết nối mạnh mẽ với công nghệ không dây mới Lightspeed
Đem đến độ chính xác cao và điều khiển chính xác nhờ cảm biến HERO 25K độc quyền
Chân bằng nhựa PTFE không pha tạp mang lại cảm giác lướt êm ái, kết nối mượt mà với trò chơi',N'chuot-gaming-logitech-pro-x-superlight-2-lightspeed.jpg',1,22),
(80,5,N'Chuột Gaming Razer Basilisk V3',990000,N'
Sảm phẩm chuột chơi game này sở hữu thiết kế thông minh mang đến cho người dùng trải nghiệm cuộn liền mạch và vô song. Bạn có thể cho phép nó tự động chuyển đổi giữa các chế độ hoặc là chuyển đổi giữa ba chế độ bổ sung như: Tactile Scrolling, Smart-Reel, và Free-Spin Scrolling.',N'_0003_chu_t_razer_basilisk_v3.jpg',0,22),
(81,5,N'Chuột gaming không dây Logitech Lightspeed G705',2090000,N'Chuột Gaming không dây Logitech Lightspeed G705 có thiết kế đẹp mắt mà nhiều tính năng ấn tượng, được người dùng sử dụng để phục vụ các công việc khác nhau. Từ đó, tăng tốc độ làm việc thông qua sản phẩm chuột không dây này.',N'chuot-khong-day-gaming-logitech-lightspeed-g705.jpg',1,22),
(82,5,N'Chuột Gaming ASUS ROG Keris Aimpoint',2590000,N'Chuột Asus Rog Keris Aimpoint là mẫu chuột chơi game với thiết kế siêu nhẹ cùng với đó là cảm biến quang học với độ nhạy cao. Mẫu chuột Asus chơi game này hứa hẹn sẽ mang lại những trải nghiệm chơi game vượt trội cho người dùng.
Ba chế độ kết nối tiện lợi, độ trễ cực thấp
Chuột Asus Rog Keris Aimpoint được hãng sản xuất trang bị tới 3 chế độ kết nối vô cùng thông minh. Theo đó, người dùng có thể sử dụng dây USB để sử dụng với chế độ có dây hoặc kết nối không dây qua bluetooth hoặc qua cổng Wireless 2.4 GHz RF. Đặc biệt, khi kết nối qua bluetooth, thiết bị có thể kết nối cùng lúc lên tới 3 thiết bị.',N'chuot-gaming-asus-rog-keris-aimpoint.jpg',1,22),
(83,5,N'Chuột Gaming Asus ROG Strix Impact III',850000,N'Chuột gaming Asus Rog Strix Impact III là mẫu chuột có dây sở hữu một thiết kế gọn nhẹ cùng với đó là nhiều tính năng hấp dẫn kèm theo. Chuột Asus Rog Strix Impact III sẽ là phụ kiện đắc lực hỗ trợ tối ưu các trải nghiệm game cho game thủ.
Kết nối có dây cùng độ nhạy tới 12000 DPI
Chuột Asus Rog Strix Impact III là mẫu chuột gaming có dây. Nhờ đó, sản phẩm chuột Asus này mang lại khả năng phản hồi gần như lập tức, hỗ trợ tối đa trong các cuộc chiến.',N'chuot-gaming-asus-rog-strix-impact-lll.jpg',0,22),
(84,5,N'Chuột Gaming Corsair Harpoon Pro RGB',430000,N'Thiết kế công thái học với kiểu dáng thể thao có đường viền thoải mái
Cảm biến quang học 12.000 DPI có tuổi thọ lên đến 20 triệu lượt nhấn
Tùy chỉnh các chức năng dễ dàng với 6 nút nhấn đã được lập trình sẵn
Kết nối qua dây USB dài 1.8 mét, độ dài này thuận lợi cho việc di chuyển',N'chuot-gaming-corsair-harpoon-pro-rgb-2.jpg',0,22),
(85,5,N'Chuột không dây Microsoft Modern Mobile',550000,N'Thiết kế hiện đại, mỏng nhẹ, tiện lợi khi mang theo
Trang bị cảm biến 1000DPI hoạt động hiệu quả và di chuyển mượt mà
Tích hợp công nghệ BlueTrack hoạt động trên hầu hết các bề mặt
Hỗ trợ kết nối với thiết bị thông qua Bluetooth trong khoảng cách lên tới 10m
Hoạt động bằng 2 viên Pin AAA, thời lượng sử dụng cực kỳ cao lên đến 12 tháng',N'chuot-khong-day-microsoft-modern-mobile.jpg',0,23),
(86,5,N'Chuột không dây Logitech MX Anywhere 2S',1190000,N'Thiết kế nhỏ gọn, dễ dàng cho vào túi xách mang theo
Trang bị mắt đọc Darkfield với cảm biến lên đến 4000 DPI
Kết nối tiện lợi với đầu thu Unifying hoặc sử dụng Bluetooth
Công nghệ Easy-Switch cho bạn kết nối với 3 thiết bị cùng lúc
Sử dụng pin sạc cho bạn sử dụng liên tục 60 - 70 ngày',N'chuot-khong-day-logitech-mx.jpg',1,23),
(87,5,N'Chuột không dây Genius NX-8000S Silent',175000,N'Làm việc trong im lặng bởi chuột đã được trang bị tính năng nhấp chuột không gây tiếng ồn
Thiết kế tinh tế với vân chống trượt 2 bên đẹp mắt, cân xứng, có thể dùng được cả 2 tay
Di chuyển chính xác, nhạy nhờ độ phân giải 1600 DPI và được trang bị công nghệ BlueEye
Kết nối không dây với công nghệ không dây 2.4 GHz, đầu thu được thiết kế gọn dưới đáy chuột',N'chuot-khong-day-genius-nx-8000s-silent-2.jpg',0,23),
(88,5,N'Chuột không dây Logitech Ergo M575',990000,N'Chuột có thiết kế ergonomics giúp giảm mệt mỏi và cung cấp trải nghiệm sử dụng thoải mái suốt cả ngày làm việc.
Kết nối Bluetooth hoặc USB, cho phép bạn dễ dàng chuyển đổi giữa các thiết bị mà không cần cắm và rút nhiều lần.
Bi xoay chính xác giúp di chuyển linh hoạt trong các tài liệu, trang web, và ứng dụng, mang lại trải nghiệm làm việc mượt mà.
Tuổi thọ pin lên đến nhiều tháng, giúp giảm bớt phiền toái của việc thay pin thường xuyên và duy trì hiệu suất cao trong thời gian dài.',N'chuot-khong-day-logitech-ergo-m575-1.jpg',1,23),
(89,5,N'Chuột không dây Dareu LM158D',399000,N'Kết nối thông minh, hiện đại qua Bluetooth và Wireless 2.4G, khoảng cách lên đến 10 mét
Tùy chỉnh độ nhạy của chuột theo nhu cầu của từng tác vụ từ từ 800, 1200, đến 1600 DPI
Sở hữu lên đến 6 nút bấm đa dạng phục vụ đa nhiệm, gồm 3 nút phụ: Back - Forward - DPI
Tiết kiệm năng lượng mà không cần click, chuột sẽ tự di chuyển với chế độ ‘Move Wake Up’',N'chuot-khong-day-dareu-lm158d-2.jpg',0,23),
(90,5,N'Chuột không dây Dareu LM115B Silent',250000,N'Kết nối cực tiện lợi với 2.4GHz Nano Receiver + Bluetooth 5.0
Trang bị silent switch, giúp giảm tiếng ồn khi sử dụng
Độ phân giải đến 1600 DPI, đáp ứng mọi nhu cầu thiết yếu
Hệ thống bảo vệ năng lượng thông minh, sử dụng pin đến 6 tháng',N'chuot-khong-day-dareu-lm115b-silent.jpg',0,23),
(91,5,N'Chuột Apple Magic Mouse 2021 MK2E3',1290000,N'
Thiết kế mỏng nhẹ tạo cảm giác thoải mái khi sử dụng
Điều khiển cảm ứng thông minh trên bề mặt Multi-Touch
Kết nối không dây Bluetooth trong khoảng cách 10m
Độ phân giải đến 1600 DPI giúp rê chuột mượt mà hơn',N'chuot-apple-magic-mouse.jpg',1,23)
SET IDENTITY_INSERT sanPham OFF
select*from sanPham
 
CREATE TABLE users (
	id int IDENTITY(1,1) not null,
	name nvarchar(255) NOT NULL,
	email varchar(255) unique,
	password varchar(255) NOT NULL,
	CONSTRAINT pk_users PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
) 
SET IDENTITY_INSERT users ON 
INSERT INTO users (id, name, email, password) VALUES
(1, N'Ngọc Hương', 'huongnguyen08.cv@gmail.com', '1'),
(2, N'Hương Hương', 'huongnguyen08@gmail.com', '1'),
(3, N'User_3', 'user_3@mymail.com', '1'),
(4, N'User_4', 'user_4@mymail.com', '1'),
(5, N'User_5', 'user_5@mymail.com', '1'),
(6, N'User_6', 'user_6@mymail.com', '1'),
(7, N'User_7', 'user_7@mymail.com', '1'),
(8, N'User_8', 'user_8@mymail.com', '1'),
(9, N'User_9', 'user_9@mymail.com', '1'),
(10, N'User_10', 'user_10@mymail.com', '1'),
(11, N'Nguyễn Dư', 'nguyendu@gmail.com', '1');
SET IDENTITY_INSERT users off
select * from users


CREATE TABLE comment(
  id int IDENTITY(1,1) NOT NULL,
  idUser int NOT NULL,
  idSanPham int NOT NULL,
  NoiDung nvarchar(255) NOT NULL,
  	CONSTRAINT pk_comment PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
CONSTRAINT FK_comment_idsanpham FOREIGN KEY (idSanPham) REFERENCES [dbo].[sanPham](id),
CONSTRAINT FK_comment_idusers FOREIGN KEY (idUser) REFERENCES [dbo].[users](id)
)
GO
SET IDENTITY_INSERT comment ON 
INSERT INTO comment (id, idUser, idSanPham, NoiDung) VALUES
(1, 10, 1, N'Bài viết này được'),
(2, 8, 19, N'Hay quá trời'),
(3, 2, 21, N'Tôi rất thích bài viết này'),
(4, 2, 11, N'Ý kiến của tôi khác so với bài này'),
(5, 6, 10, N'Tôi rất thích bài viết này'),
(6, 9, 9, N'Bài viết này được'),
(7, 5, 4, N'Bài viết này được'),
(8, 8, 9, N'Bài viết này được'),
(9, 7, 2, N'Bài viết này được'),
(10, 5, 4, N'Tôi chưa có ý kiến gì'),
(11, 4, 9, N'Bài viết này chưa được hay lắm'),
(12, 5, 8, N'Bài viết này được'),
(13, 6, 7, N'Tôi chưa có ý kiến gì'),
(14, 5, 6, N'Tôi rất thích bài viết này'),
(15, 7, 8, N'Bài viết này được'),
(16, 9, 8, N'Bài viết này được'),
(17, 1, 19, N'Không thích bài viết này'),
(18, 4, 8, N'Tôi rất thích bài viết này'),
(19, 10, 4, N'Bài viết này tạm ổn'),
(20, 2, 17, N'Bài viết rất hay'),
(21, 5, 20, N'Tôi chưa có ý kiến gì'),
(22, 1, 8, N'Không thích bài viết này'),
(23, 4, 8, N'Hay quá trời'),
(24, 10, 1, N'Bài viết này chưa được hay lắm'),
(25, 4, 8, N'Bài viết này tạm ổn'),
(26, 10, 9, N'Tôi rất thích bài viết này'),
(27, 4, 6, 'NBài viết này được'),
(28, 6, 15, N'Ý kiến của tôi khác so với bài này'),
(29, 3, 14, N'Hay quá trời'),
(30, 10, 10, N'Tôi chưa có ý kiến gì'),
(31, 10, 5, N'Bài viết này được'),
(32, 5, 1, N'Hay quá trời'),
(33, 9, 6, N'Bài viết này tạm ổn'),
(34, 5, 5, N'Tôi rất thích bài viết này'),
(35, 8, 12, N'Bài viết rất hay'),
(36, 9, 2, N'Tôi chưa có ý kiến gì'),
(37, 4, 2, N'Bài viết này chưa được hay lắm'),
(38, 4, 7, N'Bài viết này được'),
(39, 7, 8, N'Bài viết rất hay'),
(40, 5, 14, N'Hay quá trời'),
(41, 7, 7, N'Tôi rất thích bài viết này'),
(42, 10, 3, N'Tôi sẽ học thèo bài viết này'),
(43, 3, 4, N'Bài viết này chưa được hay lắm'),
(44, 4, 7, N'Bài viết rất hay'),
(45, 1, 17, N'Ý kiến của tôi khác so với bài này'),
(46, 5, 13, N'Tôi sẽ học thèo bài viết này'),
(47, 7, 7, N'Bài viết này được'),
(48, 3, 9, N'Không thích bài viết này'),
(49, 2, 6, N'Bài viết rất hay'),
(50, 10, 2, N'Hay quá trời'),
(51, 3, 7, N'Tôi sẽ học thèo bài viết này'),
(52, 3, 1, N'Bài viết này tạm ổn'),
(53, 5, 4, N'Tôi chưa có ý kiến gì'),
(54, 5, 6, N'Hay quá trời'),
(55, 3, 5, N'Tôi chưa có ý kiến gì'),
(56, 1, 19, N'Tôi rất thích bài viết này'),
(57, 6, 18, N'Hay quá trời'),
(58, 5, 17, N'Bài viết rất hay'),
(59, 10, 14, N'Tôi chưa có ý kiến gì'),
(60, 9, 4, N'Không thích bài viết này'),
(61, 9, 12, N'Bài viết này được'),
(62, 9, 6, N'Ý kiến của tôi khác so với bài này'),
(63, 7, 4, N'Không thích bài viết này'),
(64, 3, 10, N'Hay quá trời'),
(65, 2, 2, N'Bài viết này tạm ổn'),
(66, 10, 1, 'NKhông thích bài viết này'),
(67, 7, 7, N'Hay quá trời'),
(68, 4, 5, N'Bài viết rất hay'),
(69, 6, 8, N'Bài viết này tạm ổn'),
(70, 7, 12, N'Ý kiến của tôi khác so với bài này'),
(71, 2, 9, N'Không thích bài viết này'),
(72, 10, 8, N'Không thích bài viết này'),
(73, 1, 1, N'Tôi chưa có ý kiến gì'),
(74, 5, 6, N'Không thích bài viết này'),
(75, 6, 16, N'Tôi chưa có ý kiến gì'),
(76, 1, 15, N'Tôi rất thích bài viết này'),
(77, 9, 18, N'Bài viết này được'),
(78, 3, 18, N'Ý kiến của tôi khác so với bài này'),
(79, 10, 16, N'Bài viết rất hay'),
(80, 5, 6, N'Không thích bài viết này'),
(81, 7, 4, N'Bài viết này được'),
(82, 4, 16, N'Bài viết này chưa được hay lắm'),
(83, 10, 8, N'Tôi chưa có ý kiến gì'),
(84, 2, 4, N'Hay quá trời'),
(85, 9, 5, N'Tôi sẽ học thèo bài viết này'),
(86, 8, 19, N'Bài viết này được'),
(87, 5, 20, N'Không thích bài viết này'),
(88, 1, 21, N'Bài viết này chưa được hay lắm'),
(89, 2, 17, N'Không thích bài viết này'),
(90, 9, 4, N'Tôi chưa có ý kiến gì'),
(91, 10, 10, N'Bài viết này chưa được hay lắm'),
(92, 1, 7, N'Tôi chưa có ý kiến gì'),
(93, 9, 9, N'Bài viết này chưa được hay lắm'),
(94, 6, 19, N'Bài viết này tạm ổn'),
(95, 7, 15, N'Hay quá trời'),
(96, 9, 6, N'Hay quá trời'),
(97, 8, 7, N'Bài viết này chưa được hay lắm'),
(98, 3, 2, N'Hay quá trời'),
(99, 1, 8, N'Bài viết rất hay'),
(100, 8, 11, N'Tôi rất thích bài viết này'),
(101, 1, 1, N'Được'),
(102, 1, 1, N'Chán muốn chết'),
(103, 1, 13, N'a')
SET IDENTITY_INSERT comment off 
 select*from comment


