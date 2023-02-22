CREATE DATABASE GDHSweetCakeDatabase
use GDHSweetCakeDatabase
Go

/****** Object:  Table  KhachHang  ******/
CREATE TABLE KhachHang (
	 MaKH   varchar (10) NOT NULL,
	 TenKH   nvarchar (100)  NULL,
	 Email   varchar (100)  NULL,
	 GioiTinh   nvarchar (10) NULL,
	 MatKhau varchar (50)  NULL,
	 SoDienThoai   varchar (10)  NULL,
	 DiaChi   nvarchar(max)  NULL,
 CONSTRAINT  PK_KhachHang  PRIMARY KEY CLUSTERED( MaKH  ASC))

 
/****** Object:  Table DonHang******/

CREATE TABLE DonHang (
	 MaDH   varchar (10) NOT NULL,
	 MaKH   varchar (10) NOT NULL,
	 NgayDatHang date  NULL,
	 NgayGiaoHang date  NULL,
	 DaGiamGia   money  NULL,
	 ThanhTien   money  NULL,
	 GhiChuDH nvarchar(max) NULL,
	 TrangThaiThanhToan varchar (100) NULL,
	CONSTRAINT  PK_DonHang  PRIMARY KEY(MaDH))


 /****** Object:  Table  LoaiSanPham   ******/

CREATE TABLE   LoaiSanPham (
	 MaLoaiSP   varchar (10) NOT NULL,
	 TenLoaiSP   nvarchar (100) NULL,
 CONSTRAINT  PK_LoaiSanPham  PRIMARY KEY CLUSTERED ( MaLoaiSP  ASC))

 /****** Object:  Table  Category  ******/
 CREATE TABLE Category(
	Id int NOT NULL,
	MaLoaiSP varchar(10) NOT NULL,
	MaCategory varchar(10) NOT NULL,
	TenCategory varchar(100),
	CONSTRAINT PK_Category PRIMARY KEY CLUSTERED(MaCategory ASC) 
 )

/****** Object:  Table  SanPham  ******/

CREATE TABLE SanPham (
	 MaSP   varchar (10) NOT NULL,
	 MaLoaiSP   varchar (10) NOT NULL,
	 TenSP   nvarchar (100)  NULL,
 CONSTRAINT  PK_SanPham PRIMARY KEY CLUSTERED ( MaSP  ASC))

 /****** Object:  Table  ChiTietSanPham  ******/

CREATE TABLE ChiTietSanPham (
	 MaSP  varchar (10) NOT NULL,
	 LinkHinhAnh  varchar(max) NULL,
	 MoTaNgan   varchar(max) NULL,
	 Gia   money NULL,
 CONSTRAINT  PK_ChiTietSanPham PRIMARY KEY CLUSTERED ( MaSP  ASC))

/****** Object:  Table ChiTietDonHang ******/

CREATE TABLE ChiTietDonHang(
	 MaDH   varchar (10) NOT NULL,
	 MaSP   varchar (10) NOT NULL,
	 SoLuong   int  NULL,
	 GhiChu nvarchar(max) NULL,
CONSTRAINT  PK_ChiTietDonHang  PRIMARY KEY(MaDH,MaSP))


/****** Object:  Table NgayGiaoHang******/

CREATE TABLE NgayGiaoHang (
	 MaDH   varchar (10) NOT NULL,
	 DiaChiGH  nvarchar(max) NULL,
	 NgayGiaoHang date NULL,
	CONSTRAINT  PK_NgayGiaoHang  PRIMARY KEY(MaDH))


/****** Object:  Table  GioHang ******/

CREATE TABLE GioHang (
	 MaGH   varchar (10) NOT NULL,
	 MaKH   varchar (10) NOT NULL,
 CONSTRAINT  PK_GioHang  PRIMARY KEY(MaGH))

 /****** Object:  Table  ChiTietGioHang ******/

CREATE TABLE ChiTietGioHang (
	 MaGH   varchar (10) NOT NULL,
	 MaSP   varchar (10) NOT NULL,
	 SoLuong   int NOT NULL,
	 DonGia   money NOT  NULL,
	 GhiChuSP nvarchar(max) NULL,
 CONSTRAINT  PK_ChiTietGioHang  PRIMARY KEY(MaGH, MaSP))


/****** Object:  Table  LienHeGopY ******/

CREATE TABLE LienHeGopY (
	 MaLienHe varchar (10) NOT NULL,
	 HoTen   nvarchar (100)  NULL,
	 Email   varchar (100)  NULL,
	 LoiGopY  nvarchar(max) NULL,)

/****** Object:  Table  DangKiNhanTT ******/

CREATE TABLE DangKiNhanTT (
	 MaDK   varchar (10) NOT NULL,
	 Email   varchar (255) NULL,
	 CONSTRAINT  PK_DangKiNhanTT  PRIMARY KEY(MaDK))

/****** Object:  Table  AccAdmin ******/

CREATE TABLE AccAdmin (
	 MaNgD   varchar (10) NOT NULL,
	 HoTenNgD nvarchar(100) NULL,
	 TenNgD   varchar (100)  NULL,
	 LinkHinhAnh varchar(max) NULL,
	 MatKhau varchar(50) NULL,
	 QuyenHan   nvarchar (100) NULL,
	 Email varchar(100) NULL,
 CONSTRAINT  PK_AccAdmin  PRIMARY KEY(MaNgD))

/****** Object:  Table  GiamGia ******/

CREATE TABLE GiamGia (
	 MaGiamGia   varchar (10) NOT NULL,
	 SoPhanTramGiam int NULL,
	 NoiDung nvarchar(max) NULL,
 CONSTRAINT  PK_GiamGia  PRIMARY KEY(MaGiamGia))

 /****** Object:  Table  TenCuaHang ******/

CREATE TABLE TenCuaHang (
	 MaTenCH   varchar (10) NOT NULL,
	 TenCH   nvarchar (100) NULL,
	 LinkHinhAnh nvarchar(max) NULL,
	 NoiDung   nvarchar(max) NULL,
 CONSTRAINT  PK_TenCuaHang  PRIMARY KEY(MaTenCH))
 
  /****** Object:  Table  SlideShow ******/

CREATE TABLE SlideShow (
	 MaSlide   varchar (10) NOT NULL,
	 LinkHinhAnh varchar(max)NULL,
	 NoiDung  varchar(max) NULL,
 CONSTRAINT  PK_SlideShow  PRIMARY KEY(MaSlide))


  /****** Object:  Table  GioiThieuShop ******/

CREATE TABLE GioiThieu (
	 MaGT   varchar (10) NOT NULL,
	 NoiDung nvarchar(max) NULL,
 CONSTRAINT  PK_GioiThieu  PRIMARY KEY(MaGT))

  /****** Object:  Table  ChiNhanhCH ******/

CREATE TABLE ChiNhanhCH (
	 MaChiNhanh   varchar (10) NOT NULL,
	 TenQuan   nvarchar (100) NULL, -- Tên quận
	 DiaChi  nvarchar(max) NULL,
	 SoDienThoai varchar(10) NULL,
	 Email   varchar (100) NULL
 CONSTRAINT  PK_ChiNhanhCH  PRIMARY KEY(MaChiNhanh))

  /****** Object:  Table  GioLamViec ******/

CREATE TABLE GioLamViec (
	 MaGio   varchar (10) NOT NULL,
	 NoiDung   nvarchar(max) NULL,
 CONSTRAINT  PK_GioLamViec  PRIMARY KEY(MaGio))

  /****** Object:  Table  DanhGia ******/

CREATE TABLE DanhGia (
	 MaDG   varchar (10) NOT NULL,
	 MaKH   varchar (10) NOT NULL,
	 SoSaoDG   int  NULL,
	 NoiDungDanhGia  nvarchar(max) NULL,
	 LinkHinhAnh nvarchar(max) NULL,
 CONSTRAINT  PK_DanhGia  PRIMARY KEY(MaDG))

  /****** Object:  Table  DauBep ******/

CREATE TABLE DauBep (
	 MaDB   varchar (10) NOT NULL,
	 TenDB   nvarchar (100) NULL,
	 LinkHinhAnh nvarchar(max) NULL,
	 ChucVu   nvarchar(100) NULL,
 CONSTRAINT  PK_DauBep  PRIMARY KEY(MaDB))

  /****** Object:  Table  Blog ******/

CREATE TABLE Blog (
	 MaBlog   varchar (10) NOT NULL,
	 NoiDung nvarchar(max) NULL,
 CONSTRAINT  PK_Blog  PRIMARY KEY(MaBlog))


ALTER TABLE ChiTietDonHang ADD CONSTRAINT fk01_ChiTietDonHang FOREIGN KEY(MaDH) REFERENCES DonHang(MaDH)
ALTER TABLE ChiTietDonHang ADD CONSTRAINT fk02_ChiTietDonHang FOREIGN KEY(MaSP) REFERENCES SanPham(MaSP)

ALTER TABLE DonHang ADD CONSTRAINT fk01_DonHang FOREIGN KEY(MaKH) REFERENCES KhachHang(MaKH)

ALTER TABLE NgayGiaoHang ADD CONSTRAINT fk01_NgayGiaoHang FOREIGN KEY(MaDH) REFERENCES DonHang(MaDH)

ALTER TABLE SanPham ADD CONSTRAINT fk02_SanPham FOREIGN KEY(MaLoaiSP) REFERENCES LoaiSanPham(MaLoaiSP) 

ALTER TABLE ChiTietSanPham ADD CONSTRAINT fk03_ChiTietSanPham FOREIGN KEY(MaSP) REFERENCES SanPham(MaSP)

ALTER TABLE GioHang ADD CONSTRAINT fk01_GioHang FOREIGN KEY(MaKH) REFERENCES KhachHang(MaKH)

ALTER TABLE ChiTietGioHang ADD CONSTRAINT fk01_ChiTietGioHang FOREIGN KEY(MaGH) REFERENCES GioHang(MaGH)
ALTER TABLE ChiTietGioHang ADD CONSTRAINT fk02_ChiTietGioHang FOREIGN KEY(MaSP) REFERENCES SanPham(MaSP)

ALTER TABLE DanhGia ADD CONSTRAINT fk01_DanhGia FOREIGN KEY(MaKH) REFERENCES KhachHang(MaKH)
ALTER TABLE Category ADD CONSTRAINT fk01_Category FOREIGN KEY(MaLoaiSP) REFERENCES LoaiSanPham(MaLoaiSP)
-------------------------------------------------------------


INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH01', 'Minh Nhật Ái', 'nhatai098@gmail.com', 'Nữ', '123456', '0986556544', '12 Ngô Tất Tố, phường 19, quận Bình Thạnh, TPHCM');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH02', 'Trần Thanh Nhân', 'tranthanhnhan123@gmail.com', 'Nam', '12345', '0987878899', '983/1 Võ Oanh, phường 25, quận Bình Thạnh TPHCM');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH03', 'Đào Trúc Thanh Phượng', 'ttphuong187@gmail.com', 'Nữ', '6789', '0376767543', '112/98 Đinh Tiên Hoàng, phường 12, quận Gò Vấp, TPHCM');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH05', 'Đào Nguyễn Thế Thành', 'dnthethanh@gmail.com', 'Nam', '111222', '0864565638', '12/231 Phan Văn Hân,  phường 25, quận Tân Bình, TPHCM');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH06', 'Nguyễn Văn An', 'vanan111@gmail.com', 'Nam', '2223331', '0896576472', '8 Đường Số 3, Khu phố 1, Hiệp Bình Chánh, TP. Thủ Đức');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH07', 'Nguyễn Hồng Anh', 'honganhhh777@gmail.com', 'Nữ', '323443', '0987878632', '132/4 QL13, phường Hiệp Bình Chánh, TP.Thủ Đức');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH08', 'Trần Thanh Thế', 'thanhthetran098@gmail.com', 'Nam', '112233', '0356472898', '38, Đường Số 4, phường Hiệp Bình Phước, TP. Thủ Đức');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH09', 'Nguyễn Anh Đào', 'nguyenanhdaoo000@gmail.com', 'Nữ', '1234', '0312367647', 'Hẻm 52, phường Hiệp Bình Phước, TP.Thủ Đức');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH10', 'Nguyễn Trúc Thanh', 'tructhanhhgft666@gmail.com', 'Nữ', '112121', '0123687367', '18 Lê Văn Chí, phường Linh Trung, TP. Thủ Đức');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH11', 'Nguyễn Minh Quốc', 'minhhhquat@gmail.com', 'Nam', '66545', '0987111123', 'Đường Số 11, Phường Linh Trung, TP. Thủ Đức');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH12', 'Trần Nhật Đức', 'trannhatduc0852@gmail.com', 'Nữ', '123456', '0358810220', '205/15 Phan Van Han, p17, TPHCM');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH13', 'Nguyễn Minh Ngọc', 'cnguyen999@gmail.com', 'Nữ', '124442', '0923187537', '2 Khu Phố 3, Thống Nhất, TP. Biên Hòa, Đồng Nai');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH14', 'Trần Duyên Anh', 'duyenanhtran546@gmail.com', 'Nữ', '1221', '0812987389', '17/E3, Đường Yersin, Khu Phố 1, Phường Hiệp Thành, Thủ Dầu Một, Bình Dương');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH15', 'Trần Minh Tâm', 'minhtammm986111@gmail.com', 'Nam', '11115', '0867371681', '26 Ngô Chí Quốc, Phú Cường, Thủ Dầu Một, Bình Dương');
INSERT INTO  KhachHang  ( MaKH ,  TenKH ,  Email ,  GioiTinh ,  MatKhau ,  SoDienThoai ,  DiaChi ) VALUES ('KH23', 'Ngọc Minh', 'minh@gmail.com', 'Nam', '23232323', '0912555545', '208/1/19 Võ Văn Tần, TP Thủ Đức, TPHCM');


INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('BM', 'Bánh mì');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('BQ', 'Bánh quy');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('CUP', 'Cupcake ');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('DONUT', 'Bánh Donut');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('HFC', 'High-Fat Cake');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('FC', 'Foam Cake');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('BSN', 'Bánh sinh nhật');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('MOUSSE', 'Mousse');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('RV', 'Red Velvet');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('TREEM', 'Bánh cho trẻ em');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('BBL', 'Bánh bông lan');
INSERT INTO  loaisanpham  ( MaLoaiSP ,  TenLoaiSP ) VALUES ('BK', 'Bánh kem');


INSERT INTO  category  ( Id ,  MaLoaiSP ,  MaCategory ,  TenCategory ) VALUES (1, 'BBL', 'FC', 'Foam Cake');
INSERT INTO  category  ( Id ,  MaLoaiSP ,  MaCategory ,  TenCategory ) VALUES (2, 'BBL', 'HFC', 'High-Fat Cake');
INSERT INTO  category  ( Id ,  MaLoaiSP ,  MaCategory ,  TenCategory ) VALUES (3, 'BK', 'BSN', 'Bánh sinh nhật');
INSERT INTO  category  ( Id ,  MaLoaiSP ,  MaCategory ,  TenCategory ) VALUES (4, 'BK', 'MOUSSE', 'Mousse');
INSERT INTO  category  ( Id ,  MaLoaiSP ,  MaCategory ,  TenCategory ) VALUES (5, 'BK', 'RV', 'Red Velvet');
INSERT INTO  category  ( Id ,  MaLoaiSP ,  MaCategory ,  TenCategory ) VALUES (6, 'BK', 'TREEM', 'Bánh cho trẻ em');


INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP01', 'CUP', 'COOKIE DOUGH');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP02', 'CUP', 'GERMAN CHOCOLATE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP07', 'CUP', 'DOZEN CUPCAKES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP08', 'CUP', 'MISSISSIPPI MUD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP09', 'CUP', 'PINEAPPLE UPSIDE-DOWN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP10', 'CUP', 'COOKIES AND CREAM');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP100', 'BM', 'CHEESE SAUSAGE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP101', 'BM', 'CORN PAN BREAD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP102', 'BM', 'COCKTAIL BUN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP103', 'BM', 'COCONUT CREAM BREAD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP104', 'BM', 'CROQUE MONSIEUR');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP105', 'BM', 'CUSTARD BUN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP106', 'BM', 'DOUBLE CHEESE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP107', 'BM', 'GARLIC CREAM CHEESE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP108', 'BM', 'GARLICHAM');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP109', 'BM', 'GET CHEESY');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP11', 'CUP', 'BUTTERSCOTCH CUPCAKES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP110', 'BM', 'HONEY CHEESE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP111', 'BM', 'LONG CHEESE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP112', 'BM', 'MEDIANOCHE BREAD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP113', 'BM', 'MILK CREAM BREAD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP114', 'BM', 'MILK PILLOW');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP115', 'BM', 'MITRAILETTE BREAD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP116', 'BM', 'PILLOW RAISIN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP117', 'BM', 'PORK RIBS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP118', 'BM', 'STRAWBERRY CREAM SOBORO');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP119', 'BM', 'TARO CREAM');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP12', 'CUP', 'WHITE CHOCOLATE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP120', 'BSN', 'APPLE PECAN CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP121', 'BSN', 'BANANA CARAMEL FUDGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP122', 'BSN', 'BANANA NUTELLA CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP123', 'BSN', 'BANANA SPLIT CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP124', 'BSN', 'BIRTHDAY CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP125', 'BSN', 'BIRTHDAY CAKE COOKIE DOUGH');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP126', 'BSN', 'BLACK AND WHITE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP127', 'BSN', 'BLACK FOREST CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP128', 'BSN', 'CAMPFIRE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP129', 'BSN', 'CHOCOLATE BIRTHDAY CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP13', 'CUP', 'DECADENT FLOURLESS CHOCOLATE CUPCAKES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP130', 'BSN', 'CHOCOLATE CHIP COOKIE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP131', 'BSN', 'CHOCOLATE FUDGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP132', 'BSN', 'CHOCOLATE CARROT CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP133', 'BSN', 'CHOCOLATE RASPBERRY CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP134', 'BSN', 'CHOCOLATE SALTED CARAMEL CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP135', 'BSN', 'CLASSIC CARROT CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP136', 'BSN', 'CLASSIC CHOCOLATE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP137', 'BSN', 'COCONUT CARAMEL CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP138', 'BSN', 'COOKIES AND CREAM CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP139', 'BSN', 'DULCE DE LECHE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP14', 'CUP', 'GENUINE TIRAMISU CUPCAKES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP140', 'BSN', 'FERRERO NO SHARE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP141', 'BSN', 'GLUTEN FREE VANILLA CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP142', 'BSN', 'JACKED-UP S’MORES CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP143', 'BSN', 'LEMON LEMON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP144', 'BSN', 'MINI EGG CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP145', 'BSN', 'MOTHERS DAY CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP146', 'BSN', 'PEANUT BUTTER COOKIE DOUGH');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP147', 'BSN', 'THE GREAT CANADIAN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP148', 'MOUSSE', 'PASSION FRUIT MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP149', 'MOUSSE', 'STRAWBERRY MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP15', 'CUP', 'POUND CAKE CUPCAKES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP150', 'MOUSSE', 'GRAPE YOGURT MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP151', 'MOUSSE', 'YOGURT MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP152', 'MOUSSE', 'FABRIC MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP153', 'MOUSSE', 'LYCHEE GREEN TEA MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP154', 'MOUSSE', 'MAN  MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP155', 'MOUSSE', 'ORANGE MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP156', 'MOUSSE', 'BLUEBERRY MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP157', 'MOUSSE', 'MOUSSE MIX FLAVORS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP158', 'MOUSSE', 'CHOCOLATE MOUSSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP159', 'RV', 'HEAVENLY RED VELVET CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP16', 'CUP', 'BEST PUMPKIN CUPCAKES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP160', 'RV', 'REVELUV ROMANCE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP161', 'RV', 'HEART SHAPED RED VELVET CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP162', 'RV', 'PINATA RED VELVET CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP163', 'RV', 'MUSHY RED VELVET');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP164', 'RV', 'RED VELVET PINATA CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP165', 'RV', 'HYPNOTIZING RED VELVET TREAT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP166', 'RV', 'HEARTY RED VELVET CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP167', 'RV', 'RED VELVET LOVE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP168', 'RV', 'LOVE YOU WITH RED VELVET');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP169', 'RV', 'RED VELVET ANNIVERSARY JAR CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP17', 'CUP', 'GERMAN CHOCOLATE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP170', 'RV', 'RED VELVET CAKE N ROSES ARRANGEMENT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP171', 'RV', 'RED VELVETY AND FRUITY DELIGHT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP172', 'RV', 'CHOCOLATEY RED VELVET TWIST');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP173', 'RV', 'SPELLBINDING RED VELVET CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP174', 'RV', 'RED VELVETY JAR CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP175', 'RV', 'GRANDIOSE LOVE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP176', 'RV', 'RED VELVET LOVE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP177', 'RV', 'RED VELVET LITTLE HEART CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP178', 'RV', 'DIPPED IN LOVE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP179', 'RV', 'NVELVETY AFFAIR CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP18', 'CUP', 'HALLOWEEN CUPCAKES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP180', 'RV', 'RED ROSEY VELVET CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP181', 'RV', 'CHERRYLICIOUS RED VELVET CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP182', 'RV', 'TWIN LOVE N JOY');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP183', 'RV', 'FRUIT LOVERS PARADISE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP184', 'RV', 'RED VELVET CRUNCHY DELIGHT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP185', 'RV', 'RED VELVET FELICITATION');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP186', 'TREEM', 'CAR CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP187', 'TREEM', 'BOO BEAR CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP188', 'TREEM', 'SPIDER MAN BIRTHDAY CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP189', 'TREEM', 'TEDDY BEAR');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP19', 'CUP', 'S’MORES CUPCAKES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP190', 'TREEM', 'BLUE OCEAN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP191', 'TREEM', 'BEN 10 PHOTO CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP192', 'TREEM', 'CARTOON BEAR DESIGNER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP193', 'TREEM', 'CUTE ANGRY BIRDS CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP194', 'TREEM', 'DORAEMON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP195', 'TREEM', ' OFY MINION CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP196', 'TREEM', 'TOM N JERRY BACK ON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP197', 'TREEM', 'CAT CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP198', 'TREEM', '2-TIER JUNGLE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP199', 'TREEM', 'BATMAN BIRTHDAY CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP20', 'CUP', 'SWEET CELTICS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP200', 'TREEM', 'HAPPY FARM');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP201', 'TREEM', 'CUTE CARTOON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP202', 'TREEM', 'PEPPA PIG POSTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP203', 'TREEM', 'SHEEP CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP204', 'TREEM', 'SUPER MARIO CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP205', 'TREEM', 'WEB SLINGER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP206', 'DONUT', 'STACKED DONUT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP207', 'DONUT', 'BLUEBERRY CHEESECAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP208', 'DONUT', 'LEMON MERINGUE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP209', 'DONUT', 'JACKED UP BIRTHDAY');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP21', 'CUP', 'STRAWBERRY SHORTCAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP210', 'DONUT', 'FLUFFERNUTTER DONUT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP211', 'DONUT', 'CHOCOLATE SPRINKLE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP212', 'DONUT', 'PEANUT BUTTER AND JELLY');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP213', 'DONUT', 'CHOCOLATE SUNDAE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP214', 'DONUT', 'COOKIES AND CREAM CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP215', 'DONUT', 'CHIPMUNK');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP216', 'DONUT', 'CINDERELLA');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP217', 'DONUT', 'MONSTER');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP218', 'DONUT', 'DUNKIN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP219', 'DONUT', 'PEPPERMINT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP22', 'CUP', 'DULCE DE LECHE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP220', 'DONUT', 'SHRIMP DONUT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP221', 'DONUT', 'SNAKE DONUT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP222', 'DONUT', 'TIRAMISU');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP223', 'DONUT', 'TEA DONUT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP224', 'BQ', 'HAPPY HOLIDAYS SNOWMAN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP225', 'BQ', 'MERRY CHRISTMAS TO ALL');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP226', 'BQ', 'MERRY CHRISTMAS FROM THE SNOWS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP227', 'BQ', 'HAPPY HOLIDAY LIGHTS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP228', 'BQ', 'JOY LOVE PEACE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP229', 'BQ', 'CHRISTMAS TREE TRUCK');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP23', 'CUP', 'GLUTEN FREE MINI DOZEN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP230', 'BQ', 'HAPPY HOLIDAYS PENGUIN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP231', 'BQ', 'SEASONS GREETINGS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP232', 'BQ', 'GINGERBREAD HOUSE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP233', 'BQ', 'WRAPPED GIFT');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP234', 'BQ', 'NEW YEARS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP235', 'BQ', 'CHEERS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP236', 'BQ', 'BALLOONS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP237', 'BQ', 'HAPPY BIRTHDAY DUMP TRUCK');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP238', 'BQ', 'MOTORCYCLE HAPPY BIRTHDAY');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP239', 'BQ', 'DINOSAUR');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP24', 'CUP', 'VEGAN/GLUTEN FREE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP240', 'BQ', 'FAMILY REUNION WATERMELON');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP241', 'BQ', 'AHOY ITS A BOY!');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP242', 'BQ', 'NOTE OF THANKS');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP243', 'BQ', ' OD LUCK MOVING');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP244', 'BQ', 'GIRLS NIGHT OUT MARTINI');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP25', 'CUP', 'SWEET AUTUMN LEAVES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP26', 'CUP', 'PALE YELLOW SWEET');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP27', 'FC', 'BOONCAFE CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP28', 'FC', 'CHOCOLATE CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP29', 'FC', 'CHOCOLATE SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP30', 'FC', 'COCONUT-ALMOND CHIFFON');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP301', 'CUP', 'VEGAN CHOCOLATE CUPCAKES');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP302', 'cup', 'Mint Cupcakes');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP31', 'FC', 'COTTON SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP32', 'FC', 'CUSTANRD CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP33', 'FC', 'EGGLESS SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP34', 'FC', 'FOAM CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP35', 'FC', 'FRUIT CREAM CHEESE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP36', 'FC', 'GLAZED LEMON CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP37', 'FC', 'GLUTEN-FREE SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP38', 'FC', 'HOT MILK SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP39', 'FC', 'IRISH SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP40', 'FC', 'KETO SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP41', 'FC', 'LAYERED ORANGE SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP42', 'FC', 'LEMON CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP43', 'FC', 'MAN  CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP44', 'FC', 'MATCHA MARBLE CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP45', 'FC', 'MATCHA SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP46', 'FC', 'MELON CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP47', 'FC', 'MINI STRAWBERRY CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP48', 'FC', 'NAKED-FRUIT CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP49', 'FC', 'ORANGE CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP50', 'FC', 'PANDA CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP51', 'FC', 'SALTED EGG CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP52', 'FC', 'STRAWBERRY SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP53', 'FC', 'TAHINI CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP54', 'FC', 'TRADITIONAL SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP55', 'FC', 'UBE CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP56', 'FC', 'VANILLA CHIFFON CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP57', 'FC', 'VANILLA SPONGE CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP58', 'HFC', 'BANANAS FOSTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP59', 'HFC', 'BASIC VANILLA BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP60', 'HFC', 'BLOOD ORANGE POUND CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP61', 'HFC', 'BLUEBERRY FOOT BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP62', 'HFC', 'TRADITIONAL CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP63', 'HFC', 'BROWN BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP64', 'HFC', 'BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP65', 'HFC', 'CARAMEL BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP66', 'HFC', 'CARROT POUND CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP67', 'HFC', 'CHOCOLATE BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP68', 'HFC', 'CHOCOLATE POUND CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP69', 'HFC', 'COCONUT BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP70', 'HFC', 'CONDENSED-MILK POUND CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP71', 'HFC', 'FUNFETTI POUND CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP72', 'HFC', 'GERMAN BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP73', 'HFC', ' OEY BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP74', 'HFC', 'KENTUCKY BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP75', 'HFC', 'LEMON BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP76', 'HFC', 'PANDA BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP77', 'HFC', 'PINEAPPLE POUND CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP78', 'HFC', 'RAISIN POUND CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP79', 'HFC', 'SALTED EGG SPONGE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP80', 'HFC', 'VANILLA BROWN BUTTER CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP81', 'HFC', 'VELVET POUND CAKE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP82', 'BM', 'BAGUETTE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP83', 'BM', 'SWEET FRANK ROLL');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP84', 'BM', 'TARRA N CHICKEN BREAD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP85', 'BM', 'CINNAMON RAISIN SCROLL');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP86', 'BM', 'STRAWBERRY CUSTARD DANISH');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP87', 'BM', 'SPRING IN THE CITY');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP88', 'BM', 'TANDOORI CHICKEN BREAD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP89', 'BM', 'BIG EYE');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP90', 'BM', 'NUTS STRUDEL DANISH');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP91', 'BM', 'FRENCH CROISSANT PLAIN');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP92', 'BM', 'SMALL CHICKEN BURGER');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP93', 'BM', 'COCOA TEDDY');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP95', 'BM', 'SAUSAGE STANDARD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP96', 'BM', 'FRESHLY BAKED');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP97', 'BM', 'BUTTER PAN BREAD');
INSERT INTO  sanpham  ( MaSP ,  MaLoaiSP ,  TenSP ) VALUES ('SP98', 'BM', 'CHOCO CREAM');
 

INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP07', 'view/client/img/menu/CupCake/7.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP09', 'view/client/img/menu/CupCake/9.jpg', '', 60000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP10', 'view/client/img/menu/CupCake/10.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP101', 'view/client/img/menu/BanhMi/20.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP102', 'view/client/img/menu/BanhMi/21.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP103', 'view/client/img/menu/BanhMi/22.jpg', '', 30000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP104', 'view/client/img/menu/BanhMi/23.jpg', '', 50000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP105', 'view/client/img/menu/BanhMi/24.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP106', 'view/client/img/menu/BanhMi/25.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP107', 'view/client/img/menu/BanhMi/26.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP108', 'view/client/img/menu/BanhMi/27.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP109', 'view/client/img/menu/BanhMi/28.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP11', 'view/client/img/menu/CupCake/11.jpg', '', 50000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP110', 'view/client/img/menu/BanhMi/29.jpg', '', 50000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP111', 'view/client/img/menu/BanhMi/30.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP112', 'view/client/img/menu/BanhMi/31.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP113', 'view/client/img/menu/BanhMi/32.jpg', '', 60000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP114', 'view/client/img/menu/BanhMi/33.jpg', '', 30000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP115', 'view/client/img/menu/BanhMi/34.jpg', '', 70000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP116', 'view/client/img/menu/BanhMi/35.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP117', 'view/client/img/menu/BanhMi/36.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP118', 'view/client/img/menu/BanhMi/37.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP119', 'view/client/img/menu/BanhMi/38.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP12', 'view/client/img/menu/CupCake/12.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP120', 'view/client/img/menu/BanhKem/BanhSinhNhat/1.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP121', 'view/client/img/menu/BanhKem/BanhSinhNhat/2.jpg', '', 230000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP122', 'view/client/img/menu/BanhKem/BanhSinhNhat/3.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP123', 'view/client/img/menu/BanhKem/BanhSinhNhat/4.jpg', '', 240000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP124', 'view/client/img/menu/BanhKem/BanhSinhNhat/5.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP125', 'view/client/img/menu/BanhKem/BanhSinhNhat/6.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP126', 'view/client/img/menu/BanhKem/BanhSinhNhat/7.jpg', '', 300000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP127', 'view/client/img/menu/BanhKem/BanhSinhNhat/8.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP128', 'view/client/img/menu/BanhKem/BanhSinhNhat/9.jpg', '', 270000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP129', 'view/client/img/menu/BanhKem/BanhSinhNhat/10.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP13', 'view/client/img/menu/CupCake/13.jpg', '', 300000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP130', 'view/client/img/menu/BanhKem/BanhSinhNhat/11.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP131', 'view/client/img/menu/BanhKem/BanhSinhNhat/12.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP132', 'view/client/img/menu/BanhKem/BanhSinhNhat/13.jpg', '', 220000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP133', 'view/client/img/menu/BanhKem/BanhSinhNhat/14.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP134', 'view/client/img/menu/BanhKem/BanhSinhNhat/15.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP135', 'view/client/img/menu/BanhKem/BanhSinhNhat/16.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP136', 'view/client/img/menu/BanhKem/BanhSinhNhat/17.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP137', 'view/client/img/menu/BanhKem/BanhSinhNhat/18.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP138', 'view/client/img/menu/BanhKem/BanhSinhNhat/19.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP139', 'view/client/img/menu/BanhKem/BanhSinhNhat/20.jpg', '', 300000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP14', 'view/client/img/menu/CupCake/14.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP140', 'view/client/img/menu/BanhKem/BanhSinhNhat/21.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP141', 'view/client/img/menu/BanhKem/BanhSinhNhat/22.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP142', 'view/client/img/menu/BanhKem/BanhSinhNhat/23.jpg', '', 300000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP143', 'view/client/img/menu/BanhKem/BanhSinhNhat/24.jpg', '', 300000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP144', 'view/client/img/menu/BanhKem/BanhSinhNhat/25.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP145', 'view/client/img/menu/BanhKem/BanhSinhNhat/26.jpg', '', 300000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP146', 'view/client/img/menu/BanhKem/BanhSinhNhat/27.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP147', 'view/client/img/menu/BanhKem/BanhSinhNhat/28.jpg', '', 300000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP148', 'view/client/img/menu/BanhKem/Mousse/1.jpg', '', 180000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP149', 'view/client/img/menu/BanhKem/Mousse/2.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP15', 'view/client/img/menu/CupCake/15.jpg', '', 30000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP150', 'view/client/img/menu/BanhKem/Mousse/3.jpg', '', 210000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP151', 'view/client/img/menu/BanhKem/Mousse/4.jpg', '', 150000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP152', 'view/client/img/menu/BanhKem/Mousse/5.jpg', '', 170000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP153', 'view/client/img/menu/BanhKem/Mousse/6.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP154', 'view/client/img/menu/BanhKem/Mousse/7.jpg', '', 190000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP155', 'view/client/img/menu/BanhKem/Mousse/8.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP156', 'view/client/img/menu/BanhKem/Mousse/9.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP157', 'view/client/img/menu/BanhKem/Mousse/10.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP158', 'view/client/img/menu/BanhKem/Mousse/11.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP159', 'view/client/img/menu/BanhKem/RedVelvet/1.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP16', 'view/client/img/menu/CupCake/16.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP160', 'view/client/img/menu/BanhKem/RedVelvet/2.jpg', '', 220000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP161', 'view/client/img/menu/BanhKem/RedVelvet/3.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP162', 'view/client/img/menu/BanhKem/RedVelvet/4.jpg', '', 180000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP163', 'view/client/img/menu/BanhKem/RedVelvet/5.jpg', '', 210000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP164', 'view/client/img/menu/BanhKem/RedVelvet/6.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP165', 'view/client/img/menu/BanhKem/RedVelvet/7.jpg', '', 190000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP166', 'view/client/img/menu/BanhKem/RedVelvet/8.jpg', '', 160000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP167', 'view/client/img/menu/BanhKem/RedVelvet/9.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP168', 'view/client/img/menu/BanhKem/RedVelvet/10.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP169', 'view/client/img/menu/BanhKem/RedVelvet/11.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP17', 'view/client/img/menu/CupCake/17.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP170', 'view/client/img/menu/BanhKem/RedVelvet/12.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP171', 'view/client/img/menu/BanhKem/RedVelvet/13.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP172', 'view/client/img/menu/BanhKem/RedVelvet/14.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP173', 'view/client/img/menu/BanhKem/RedVelvet/15.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP174', 'view/client/img/menu/BanhKem/RedVelvet/16.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP175', 'view/client/img/menu/BanhKem/RedVelvet/17.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP176', 'view/client/img/menu/BanhKem/RedVelvet/18.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP177', 'view/client/img/menu/BanhKem/RedVelvet/19.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP178', 'view/client/img/menu/BanhKem/RedVelvet/20.jpg', '', 210000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP179', 'view/client/img/menu/BanhKem/RedVelvet/21.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP18', 'view/client/img/menu/CupCake/18.jpg', '', 30000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP180', 'view/client/img/menu/BanhKem/RedVelvet/22.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP181', 'view/client/img/menu/BanhKem/RedVelvet/23.jpg', '', 220000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP182', 'view/client/img/menu/BanhKem/RedVelvet/24.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP183', 'view/client/img/menu/BanhKem/RedVelvet/25.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP184', 'view/client/img/menu/BanhKem/RedVelvet/26.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP185', 'view/client/img/menu/BanhKem/RedVelvet/27.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP186', 'view/client/img/menu/BanhKem/BanhTreEm/1.jpg', '', 150000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP187', 'view/client/img/menu/BanhKem/BanhTreEm/2.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP188', 'view/client/img/menu/BanhKem/BanhTreEm/3.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP189', 'view/client/img/menu/BanhKem/BanhTreEm/4.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP19', 'view/client/img/menu/CupCake/19.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP190', 'view/client/img/menu/BanhKem/BanhTreEm/5.jpg', '', 180000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP191', 'view/client/img/menu/BanhKem/BanhTreEm/6.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP192', 'view/client/img/menu/BanhKem/BanhTreEm/7.jpg', '', 220000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP193', 'view/client/img/menu/BanhKem/BanhTreEm/8.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP194', 'view/client/img/menu/BanhKem/BanhTreEm/9.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP195', 'view/client/img/menu/BanhKem/BanhTreEm/10.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP196', 'view/client/img/menu/BanhKem/BanhTreEm/11.jpg', '', 260000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP197', 'view/client/img/menu/BanhKem/BanhTreEm/12.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP198', 'view/client/img/menu/BanhKem/BanhTreEm/13.jpg', '', 220000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP199', 'view/client/img/menu/BanhKem/BanhTreEm/14.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP20', 'view/client/img/menu/CupCake/20.jpg', '', 45000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP200', 'view/client/img/menu/BanhKem/BanhTreEm/15.jpg', '', 170000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP201', 'view/client/img/menu/BanhKem/BanhTreEm/16.jpg', '', 250000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP202', 'view/client/img/menu/BanhKem/BanhTreEm/17.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP203', 'view/client/img/menu/BanhKem/BanhTreEm/18.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP204', 'view/client/img/menu/BanhKem/BanhTreEm/19.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP205', 'view/client/img/menu/BanhKem/BanhTreEm/20.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP206', 'view/client/img/menu/Donut/1.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP207', 'view/client/img/menu/Donut/2.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP208', 'view/client/img/menu/Donut/3.jpg', '', 30000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP209', 'view/client/img/menu/Donut/4.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP21', 'view/client/img/menu/CupCake/21.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP210', 'view/client/img/menu/Donut/5.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP211', 'view/client/img/menu/Donut/6.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP212', 'view/client/img/menu/Donut/7.jpg', '', 60000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP213', 'view/client/img/menu/Donut/8.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP214', 'view/client/img/menu/Donut/9.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP215', 'view/client/img/menu/Donut/10.jpg', '', 30000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP216', 'view/client/img/menu/Donut/11.jpg', '', 25000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP217', 'view/client/img/menu/Donut/12.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP218', 'view/client/img/menu/Donut/13.jpg', '', 25000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP219', 'view/client/img/menu/Donut/14.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP22', 'view/client/img/menu/CupCake/22.jpg', '', 30000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP220', 'view/client/img/menu/Donut/15.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP221', 'view/client/img/menu/Donut/16.jpg', '', 25000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP222', 'view/client/img/menu/Donut/17.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP223', 'view/client/img/menu/Donut/18.jpg', '', 20000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP224', 'view/client/img/menu/BanhQuy/1.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP225', 'view/client/img/menu/BanhQuy/2.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP226', 'view/client/img/menu/BanhQuy/3.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP227', 'view/client/img/menu/BanhQuy/4.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP228', 'view/client/img/menu/BanhQuy/5.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP229', 'view/client/img/menu/BanhQuy/6.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP23', 'view/client/img/menu/CupCake/23.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP230', 'view/client/img/menu/BanhQuy/7.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP231', 'view/client/img/menu/BanhQuy/8.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP232', 'view/client/img/menu/BanhQuy/9.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP233', 'view/client/img/menu/BanhQuy/10.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP234', 'view/client/img/menu/BanhQuy/11.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP235', 'view/client/img/menu/BanhQuy/12.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP236', 'view/client/img/menu/BanhQuy/13.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP237', 'view/client/img/menu/BanhQuy/14.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP238', 'view/client/img/menu/BanhQuy/15.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP239', 'view/client/img/menu/BanhQuy/16.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP24', 'view/client/img/menu/CupCake/24.jpg', '', 50000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP240', 'view/client/img/menu/BanhQuy/17.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP241', 'view/client/img/menu/BanhQuy/18.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP242', 'view/client/img/menu/BanhQuy/19.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP243', 'view/client/img/menu/BanhQuy/20.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP244', 'view/client/img/menu/BanhQuy/21.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP25', 'view/client/img/menu/CupCake/25.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP26', 'view/client/img/menu/CupCake/26.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP27', 'view/client/img/menu/BongLan/FoamCake/1.jpg', '', 80000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP28', 'view/client/img/menu/BongLan/FoamCake/2.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP29', 'view/client/img/menu/BongLan/FoamCake/3.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP30', 'view/client/img/menu/BongLan/FoamCake/4.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP301', 'view/client/img/menu/CupCake/4.jpg', 'Bánh vị chocolate', 30000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP302', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJOqroLPXL-CGR7CitMKs6f7Zu2Cg1XGj4hQ&usqp=CAU', 'Bạc hà có hương thơm thanh và nhẹ, không cay lắm', 26000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP31', 'view/client/img/menu/BongLan/FoamCake/5.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP32', 'view/client/img/menu/BongLan/FoamCake/6.jpg', '', 120000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP33', 'view/client/img/menu/BongLan/FoamCake/7.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP34', 'view/client/img/menu/BongLan/FoamCake/8.jpg', '', 150000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP35', 'view/client/img/menu/BongLan/FoamCake/9.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP36', 'view/client/img/menu/BongLan/FoamCake/10.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP37', 'view/client/img/menu/BongLan/FoamCake/11.jpg', '', 160000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP38', 'view/client/img/menu/BongLan/FoamCake/12.jpg', '', 140000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP39', 'view/client/img/menu/BongLan/FoamCake/13.jpg', '', 160000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP40', 'view/client/img/menu/BongLan/FoamCake/14.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP41', 'view/client/img/menu/BongLan/FoamCake/15.jpg', '', 240000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP42', 'view/client/img/menu/BongLan/FoamCake/16.jpg', '', 170000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP43', 'view/client/img/menu/BongLan/FoamCake/17.jpg', '', 170000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP44', 'view/client/img/menu/BongLan/FoamCake/18.jpg', '', 210000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP45', 'view/client/img/menu/BongLan/FoamCake/19.jpg', '', 300000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP46', 'view/client/img/menu/BongLan/FoamCake/20.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP47', 'view/client/img/menu/BongLan/FoamCake/21.jpg', '', 140000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP48', 'view/client/img/menu/BongLan/FoamCake/22.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP49', 'view/client/img/menu/BongLan/FoamCake/23.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP50', 'view/client/img/menu/BongLan/FoamCake/24.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP51', 'view/client/img/menu/BongLan/FoamCake/25.jpg', '', 130000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP52', 'view/client/img/menu/BongLan/FoamCake/26.jpg', '', 120000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP53', 'view/client/img/menu/BongLan/FoamCake/27.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP54', 'view/client/img/menu/BongLan/FoamCake/28.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP55', 'view/client/img/menu/BongLan/FoamCake/29.jpg', '', 120000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP56', 'view/client/img/menu/BongLan/FoamCake/30.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP57', 'view/client/img/menu/BongLan/FoamCake/31.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP58', 'view/client/img/menu/BongLan/HighFat/1.jpg', '', 300000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP59', 'view/client/img/menu/BongLan/HighFat/2.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP60', 'view/client/img/menu/BongLan/HighFat/3.jpg', '', 120000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP61', 'view/client/img/menu/BongLan/HighFat/4.jpg', '', 140000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP62', 'view/client/img/menu/BongLan/HighFat/5.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP63', 'view/client/img/menu/BongLan/HighFat/6.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP64', 'view/client/img/menu/BongLan/HighFat/7.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP65', 'view/client/img/menu/BongLan/HighFat/8.jpg', '', 160000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP66', 'view/client/img/menu/BongLan/HighFat/9.jpg', '', 180000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP67', 'view/client/img/menu/BongLan/HighFat/10.jpg', '', 120000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP68', 'view/client/img/menu/BongLan/HighFat/11.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP69', 'view/client/img/menu/BongLan/HighFat/12.jpg', '', 110000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP70', 'view/client/img/menu/BongLan/HighFat/13.jpg', '', 110000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP71', 'view/client/img/menu/BongLan/HighFat/14.jpg', '', 180000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP72', 'view/client/img/menu/BongLan/HighFat/15.jpg', '', 120000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP73', 'view/client/img/menu/BongLan/HighFat/16.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP74', 'view/client/img/menu/BongLan/HighFat/17.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP75', 'view/client/img/menu/BongLan/HighFat/18.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP76', 'view/client/img/menu/BongLan/HighFat/19.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP77', 'view/client/img/menu/BongLan/HighFat/20.jpg', '', 130000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP78', 'view/client/img/menu/BongLan/HighFat/21.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP79', 'view/client/img/menu/BongLan/HighFat/22.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP80', 'view/client/img/menu/BongLan/HighFat/23.jpg', '', 200000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP81', 'view/client/img/menu/BongLan/HighFat/24.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP82', 'view/client/img/menu/BanhMi/1.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP83', 'view/client/img/menu/BanhMi/2.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP84', 'view/client/img/menu/BanhMi/3.jpg', '', 30000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP85', 'view/client/img/menu/BanhMi/4.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP86', 'view/client/img/menu/BanhMi/5.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP87', 'view/client/img/menu/BanhMi/6.jpg', '', 350000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP88', 'view/client/img/menu/BanhMi/7.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP89', 'view/client/img/menu/BanhMi/8.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP90', 'view/client/img/menu/BanhMi/9.jpg', '', 25000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP91', 'view/client/img/menu/BanhMi/10.jpg', '', 50000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP92', 'view/client/img/menu/BanhMi/11.jpg', '', 60000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP93', 'view/client/img/menu/BanhMi/12.jpg', '', 10000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP95', 'view/client/img/menu/BanhMi/14.jpg', '', 100000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP96', 'view/client/img/menu/BanhMi/15.jpg', '', 15000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP97', 'view/client/img/menu/BanhMi/16.jpg', '', 40000);
INSERT INTO  chitietsanpham  ( MaSP ,  LinkHinhAnh ,  MoTaNgan ,  Gia ) VALUES ('SP98', 'view/client/img/menu/BanhMi/17.jpg', '', 70000);

INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH01', 'KH01', '2022-01-02', '2022-01-04', 0, 210000, 'Đóng gói cẩn thận', 'Chua thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH02', 'KH02', '2022-03-01', '2022-03-04', 0, 110000, 'Gọi 30p trước khi giao giúp mình!', 'Chua thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH03', 'KH03', '2022-02-01', '2022-02-04', 0, 60000, 'NULL', 'Chua thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH04', 'KH23', '2022-01-01', '2022-01-02', 18000, 360000, 'Đóng gói cẩn thận', 'Chua thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH05', 'KH05', '2021-12-28', '2021-12-29', 0, 200000, 'Đóng gói cẩn thận', 'Chua thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH06', 'KH06', '2021-12-27', '2022-03-04', 0, 120000, 'NULL', 'Ðã thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH07', 'KH07', '2021-12-24', '2022-03-04', 20000, 400000, 'Khi giao gọi số này giúp mình: 0986861986', 'Ðã thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH08', 'KH08', '2021-10-20', '2022-03-04', 0, 210000, 'NULL', 'Ðã thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH09', 'KH09', '2021-12-12', '2022-03-04', 0, 230000, 'NULL', 'Ðã thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH10', 'KH10', '2021-05-08', '2022-03-04', 0, 175000, 'Đóng gói cẩn thận', 'Ðã thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH11', 'KH11', '2021-09-15', '2022-03-04', 0, 140000, 'NULL', 'Ðã thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH12', 'KH12', '2021-05-02', '2022-03-04', 0, 600000, 'NULL', 'Ðã thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH13', 'KH13', '2021-03-03', '2022-03-04', 0, 240000, 'NULL', 'Ðã thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH14', 'KH14', '2021-03-07', '2022-03-04', 0, 200000, 'Đóng gói cẩn thận', 'Ðã thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH15', 'KH15', '2021-12-31', '2022-03-04', 0, 100000, 'NULL', 'Chua thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH16', 'KH10', '2022-01-02', '2022-03-04', 0, 170000, 'Đóng gói cẩn thận', 'Chua thanh toán');
INSERT INTO  donhang  ( MaDH ,  MaKH ,  NgayDatHang ,  NgayGiaoHang ,  DaGiamGia ,  ThanhTien ,  GhiChuDH ,  TrangThaiThanhToan ) VALUES ('DH17', 'KH10', '2022-02-26', '2022-03-04', 0, 123000, 'Abd', 'Đã thanh toán');


INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH01', 'SP02', 2, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH01', 'SP100', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH02', 'SP88', 5, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH02', 'SP93', 6, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH03', 'SP22', 2, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH04', 'SP10', 3, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH04', 'SP11', 2, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH04', 'SP19', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH04', 'SP29', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH05', 'SP10', 2, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH05', 'SP19', 3, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH06', 'SP10', 3, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH07', 'SP28', 3, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH07', 'SP89', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH08', 'SP11', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH08', 'SP16', 3, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH08', 'SP17', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH09', 'SP120', 1, 'Trang trí chủ đạo màu vàng giúp mình ạ!');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH09', 'SP18', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH10', 'SP20', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH10', 'SP21', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH10', 'SP22', 3, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH11', 'SP23', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH11', 'SP91', 2, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH12', 'SP100', 3, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH12', 'SP121', 1, 'Đổi trang trí bánh bằng dâu');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH12', 'SP77', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH13', 'SP12', 1, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH13', 'SP122', 1, 'Trang trí dòng chữ \"Chúc mừng sinh nhật mẹ yêu\" ');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH14', 'SP11', 4, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH15', 'SP24', 2, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH16', 'SP08', 2, '');
INSERT INTO  chitietdonhang  ( MaDH ,  MaSP ,  SoLuong ,  GhiChu ) VALUES ('DH16', 'SP18', 3, '');


INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH01', '12 Ngô Tất Tố, phường 21, quận Bình Thạnh, TPHCM', '2022-03-01');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH02', '983/1 Võ Oanh, phường 25, quận Bình Thạnh TPHCM', '2022-06-01');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH03', '112/98 Đinh Tiên Hoàng, phường 12, quận Gò Vấp, TPHCM', '2022-03-01');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH04', '65/12/2 Điện Biên Phủ, phường 17, quận Bình Thạnh, TPHCM', '2021-01-01');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH05', '12/231 Phan Văn Hân,  phường 25, quận Tân Bình, TPHCM', '2021-12-29');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH06', '8 Đường Số 3, Khu phố 1, Hiệp Bình Chánh, TP. Thủ Đức', '2021-12-29');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH07', '132/4 QL13, phường Hiệp Bình Chánh, TP.Thủ Đức', '2021-12-25');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH08', '38, Đường Số 4, phường Hiệp Bình Phước, TP. Thủ Đức', '2021-10-22');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH09', 'Hẻm 52, phường Hiệp Bình Phước, TP.Thủ Đức', '2021-12-13');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH10', '18 Lê Văn Chí, phường Linh Trung, TP. Thủ Đức', '2021-05-10');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH11', 'Đường Số 11, Phường Linh Trung, TP. Thủ Đức', '2021-09-16');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH12', '28 Lý Văn Sâm, Tam Hiệp, TP. Biên Hòa, Đồng Nai', '2021-05-03');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH13', '2 Khu Phố 3, Thống Nhất, TP. Biên Hòa, Đồng Nai', '2021-03-05');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH14', '17/E3, Đường Yersin, Khu Phố 1, Phường Hiệp Thành, Thủ Dầu Một, Bình Dương', '2021-03-09');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH15', '26 Ngô Chí Quốc, Phú Cường, Thủ Dầu Một, Bình Dương', '2021-01-01');
INSERT INTO  ngaygiaohang  ( MaDH ,  DiaChiGH ,  NgayGiaoHang ) VALUES ('DH16', '46 Ba Vân, Phường 13, quận Tân Bình, TPHCM', '2021-01-04');

INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH04', 'KH04');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH16', 'KH23');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH01', 'KH01');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH02', 'KH02');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH03', 'KH03');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH05', 'KH05');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH06', 'KH06');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH07', 'KH07');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH08', 'KH08');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH09', 'KH09');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH10', 'KH10');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH11', 'KH11');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH12', 'KH12');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH13', 'KH13');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH14', 'KH14');
INSERT INTO  giohang  ( MaGH ,  MaKH ) VALUES ('GH15', 'KH15');


INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH01', 'SP01', 1, 50.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH01', 'SP02', 2, 80.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH01', 'SP100', 1, 80.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH02', 'SP88', 1, 10.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH02', 'SP93', 1, 10.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH03', 'SP22', 2, 60.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH04', 'SP10', 3, 120.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH04', 'SP11', 2, 100.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH04', 'SP19', 1, 40.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH04', 'SP29', 1, 100.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH05', 'SP10', 2, 80.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH05', 'SP19', 3, 120.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH06', 'SP10', 1, 40.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH07', 'SP28', 3, 300.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH07', 'SP89', 1, 100.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH08', 'SP11', 1, 50.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH08', 'SP16', 3, 120.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH08', 'SP17', 1, 40.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH09', 'SP120', 1, 200.0000, 'Trang trí chủ đạo màu vàng giúp mình ạ!');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH09', 'SP18', 1, 30.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH10', 'SP20', 1, 45.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH10', 'SP21', 1, 40.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH10', 'SP22', 3, 90.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH11', 'SP23', 1, 40.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH11', 'SP91', 2, 100.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH12', 'SP100', 1, 80.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH12', 'SP121', 1, 230.0000, 'Đổi trang trí bánh bằng dâu');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH12', 'SP77', 1, 130.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH13', 'SP12', 1, 40.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH13', 'SP122', 1, 200.0000, 'Trang trí dòng chữ \"Chúc mừng sinh nhật mẹ yêu\"  giúp mình nha.');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH14', 'SP11', 4, 200.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH15', 'SP24', 1, 50.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH16', 'SP08', 2, 80.0000, '');
INSERT INTO  chitietgiohang  ( MaGH ,  MaSP ,  SoLuong ,  DonGia ,  GhiChuSP ) VALUES ('GH16', 'SP18', 3, 90.0000, '');
 

INSERT INTO  giamgia  ( MaGiamGia ,  SoPhanTramGiam ,  NoiDung ) VALUES ('TH516', 10, 'Nhập Vocher \"TH516\"để được giảm giá 10% với hóa đơn thanh toán trên 600.000');
INSERT INTO  giamgia  ( MaGiamGia ,  SoPhanTramGiam ,  NoiDung ) VALUES ('TQ723', 5, 'Nhập Vocher \"TQ723\"để được giảm giá 5% với hóa đơn thanh toán trên 300.000');

INSERT INTO  lienhegopy  ( MaLienHe ,  HoTen ,  Email ,  LoiGopY ) VALUES (1, 'Nguyễn Đình Kha', 'khanguyen2001@gmail.com', 'Giảm độ béo của kem chút ạ!');
INSERT INTO  lienhegopy  ( MaLienHe ,  HoTen ,  Email ,  LoiGopY ) VALUES (2, 'Nguyễn Thị Hoa', 'thihoa233@gmail.com', 'Giảm độ béo của kem chút ạ!');

INSERT INTO  accadmin  ( MaNgD ,  HoTenNgD ,  TenNgD ,  LinkHinhAnh ,  MatKhau ,  QuyenHan ,  Email ) VALUES ('US01', 'Trần Nhật Đức', 'AdminD', 'view/admin/dist/img/logo-avt.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'Administrator', '19130051@st.hcmuaf.edu.vn');
INSERT INTO  accadmin  ( MaNgD ,  HoTenNgD ,  TenNgD ,  LinkHinhAnh ,  MatKhau ,  QuyenHan ,  Email ) VALUES ('US02', 'Trường Giang', 'AdminG', 'view/admin/dist/img/logo-avt.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'Administrator', '19130062@st.hcmuaf.edu.vn');
INSERT INTO  accadmin  ( MaNgD ,  HoTenNgD ,  TenNgD ,  LinkHinhAnh ,  MatKhau ,  QuyenHan ,  Email ) VALUES ('US03', 'Thanh Huệ', 'AdminH', 'view/admin/dist/img/logo-avt.jpg', 'e10adc3949ba59abbe56e057f20f883e', 'Administrator', '19130080@st.hcmuaf.edu.vn');

INSERT INTO  blog  ( MaBlog ,  NoiDung ) VALUES ('BL1', '<div class=\"blog__item\">\r\n  
								<div class=\"blog__item__pic set-bg\" data-setbg=\"view/client/img/blog/br-1.jpg\">\r\n                        <div class=\"blog__pic__inner\">\r\n                            <div class=\"label\">Bí quyết</div>\r\n                            <ul>\r\n                                <li>By <span>Trần Văn Vinh</span></li>\r\n                                <li>13 Nov 2020</li>\r\n                                <li>302 Views</li>\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"text-container\">\r\n                        <div class=\" blog__item__text\">\r\n                            <h2>Thưởng thức trà bánh_thú vui tao nhã</h2>\r\n                            <p>Ăn bánh, thưởng trà, nghe nhạc trong một không gian trầm ấm đang là xu hướng được rất\r\n                                nhiều bạn trẻ yêu thích và trở thành thú vui tao nhã đi vào cuộc sống của nhiều\r\n                                người. </br>\r\n                                Một chiếc bánh ngọt bên ấm trà nóng nghe có vẻ đơn giản nhưng lại hoàn toàn có thể chinh\r\n                                phục bất kỳ kẻ khó tính nào nhờ sự tinh tế và duy mỹ\r\n                                vốn có của nó. Nếu bạn là một người đang tìm kiếm một thú vui mới, đơn giản và thanh cao\r\n                                trong cuộc sống vốn đã quá nhiều bộn bề của mình thì\r\n                                hãy gạt đi tất cả muộn phiền kia,ngồi xuống và cùng nhấm nháp những giọt đắng tinh tế và\r\n                                dư vị ngọt ngào quyễn lận của Bánh và Trà</p>\r\n                            <span class=\"read-more-text\"><h4><b>Nguồn gốc của việc ăn bánh – thưởng trà</b></h4>\r\n                                        <p>Thú vui ngồi nhâm nhi chén trà bên cạnh là những chiếc bánh quy nhỏ hay vài lát bánh kem kiểu Anh tưởng chừng quá sang chảnh, cầu kỳ và không hợp\r\n                                            với văn hóa phóng khoáng dân dã của người Việt. Thế nhưng, vài năm trở lại đây, cùng với thời điểm xu hướng thời trang vintage gây bão khắp thế giới, \r\n                                            nhiều bạn trẻ bắt đầu tìm hiểu cách sống thanh tao, nhã nhặn và bắt gặp phong cách ăn bánh uống trà.</p>\r\n                                        <div class=\"traBanh\" width=\"500px\">\r\n                                            <img class=\"traBanh\" src=\"view/client/img/blog/traBanh_1.jpg\">\r\n                                        </div>\r\n                                        <p>Cũng từ đấy, các nhà hàng, tiệm bánh ngọt bắt đầu đưa vào thực đơn những set trà – bánh riêng mới mức giá phải chăng dành cho giới trẻ,\r\n                                            từ 50 – 100 ngàn đồng là bạn đã có một bữa tiệc trà ngon cùng với bánh quy, bánh ngọt tùy thích.</br></p>\r\n                                     <h4><b>Lối sống duy mỹ của giới trẻ Việt</b></h4>\r\n                                     <p>Bởi trà vốn mang trong mình dư vị nhẹ nhàng, thư thái như một thứ nước êm dịu. Còn bánh lại mang vị ngọt ngào, một chút đậm đà cho cuộc sống vốn quá nhiều đắng cay. Trà – bánh hòa quyện với nhau, nhấn nhá dự vị, \r\n                                        tạo nên một “couple” hoàn hảo. Uống trà thưởng bánh không chỉ cần hương vị thơm ngon mà cần cảm quan thị giác của bạn. Khó ai có thể không siêu lòng trước những bộ ấm tách họa tiết và hoa văn tỉ mỉ, \r\n                                        những chiếc bánh xinh xắn đầy quyến rũ hay chiếc đồng hồ cát nhỏ đo thời gian ủ trà. Thậm chí, những chiếc lọ nhỏ đựng sữa, mật ong, đường cũng mang một vẻ đẹp rất riêng khiến bạn tiệc trà sang chảnh như hoàng gia.</p>\r\n                                     <div class=\"traBanh\" width=\"500px\">\r\n                                         <img class=\"traBanh\" src=\"view/client/img/blog/blog3-5.webp\">\r\n                                     </div>\r\n                                     <p>Uống trà – ăn bánh không chỉ để lót đầy chiếc dạ dày, cũng không phải là một trào lưu uống cho biết, cho vui. Bộ môn này thực sự chỉ dành cho những người biết giá trị của nó. Trà bánh cũng không dành cho người sống vội. 1\r\n                                     Nó chỉ thích hợp cho những ai muốn tìm những giây phút thư thái, an nhiên từ từ mà tận hưởng vị ngon cửa trà và bánh, nhấm nháp chuyện đời, chuyện người, chuyện mình.</br>\r\n                                         Có thể nói, ăn bánh thưởng trà giờ đây đã trở thành một thú vui tao nhã của nhiều bạn trẻ. Giới trẻ giờ đây thích xê dịch, thích tìm kiếm những điều mới mẻ để cuộc sống thêm nhiều mài sắc và những trải nghiệm đáng nhớ.\r\n                                     Trà bánh cũng giống vậy, đó là một trải nghiệm có phần hoài cổ nhưng chỉ những ai biết ngồi lại, nhìn nhận giá trị của nó, bạn sẽ thấy cuộc sống thật thoải mái, an yên trong thế giới bộn bề này.\r\n                                    </p></span>\r\n\r\n                        </div>\r\n                        <a class=\"read-more-btn\">Đọc thêm </a>\r\n                    </div>\r\n                </div>');
INSERT INTO  blog  ( MaBlog ,  NoiDung ) VALUES ('BL2', '<div class=\"blog__item\">\r\n                        <div class=\"blog__item__pic set-bg\" data-setbg=\"view/client/img/blog/blog2.jpg\">\r\n                            <div class=\"blog__pic__inner\">\r\n                                <div class=\"label\">Bí quyết</div>\r\n                                <ul>\r\n                                    <li>By <span> lambanh365</span></li>\r\n                                    <li>1 March 2021</li>\r\n                                    <li>120 Views</li>\r\n                                </ul>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"text-container\">\r\n                            <div class=\"content blog__item__text\">\r\n                            <h2>Tiramisu và Câu chuyện về chiếc bánh tình yêu</h2>\r\n                            <p>\r\n                                Không phải xuất xứ từ những câu chuyện thật cảm động nhưng những con người làm nên loại bánh này lại khiến ta cảm động bởi tình cảm họ gửi gắm qua chiếc bánh mang đến cho những người thân yêu của mình.\r\n                                Xuất xứ từ nước Ý, ngày nay, tiramisu đã trở thành món bánh tráng miệng được yêu thích trên khắp thế giới. Chiếc bánh là sự kết hợp hòa quyện giữa hương thơm của cà phê, rượu nhẹ cùng vị béo của trứng và kem\r\n                                phô mai. Chỉ cần ăn một miếng là sẽ cảm nhận được tất cả các hương vị đó hòa quyện cùng một lúc, chính vì thế mà người ta còn gọi nó là “Thiên đường trong miệng của bạn” (Heaven in your mouth).</br>\r\n                                Tiramisu (tih-ruh-mee-soo) theo tiếng Ý có nghĩa là “pick me up”.</p>  <span class=\"read-more-text\"><p>Loại bánh tiramisu cổ điển giống như một loại bánh pudding tráng miệng mà vẫn thường bao gồm một miếng bánh gato hoặc bánh quy được thấm mùi rượu nhẹ, \r\n                                    và được phủ lên trên bằng bột cacao và được làm từ rất nhiều trứng. Với bánh Tiramisu xưa, các lớp bánh được làm riêng từng lớp không kết dính, cho tới ngày nay, người ta mới dùng phô mai để làm cho chúng trở nên hấp dẫn hơn.</p>\r\n                           \r\n                                <div class=\"traBanh\">\r\n                                    <img  src=\"view/client/img/blog/blog3_2.jpg\" height=\"500px\" width=\"90%\">\r\n                                </div>\r\n                                <p>Có khá nhiều ý kiến về xuất xứ của Tiramisu, không ai biết được chính xác món bánh này được làm tại đâu và khi nào, nhưng điều mà mọi người chắc chắn biết rằng nó được làm ở một thành phố nào đó trên đất nước Ý.\r\n                                    Một vài người khẳng định bánh Tiramisu đã được “phát minh” ra trong thời kì thế chiến thứ nhất bởi một người phụ nữ Ý vì bà muốn gửi những chiếc bánh của mình như một lời chúc ngọt ngào nhất đến tay những chiến binh\r\n                                    đang chuẩn bị lên đường xông pha trận mạc. Có người lại cho rằng, loại bánh tráng miệng này thực ra chỉ là một cách để tiết kiệm những chiếc bánh ngọt cũ, cà phê cũ đã khô cứng trong các quán cà phê mà thôi. Tuy nhiên, ý kiến này đã bị nhiều người phản đối.</br></p>\r\n                                <div class=\"traBanh\">\r\n                                    <img  src=\"view/client/img/blog/blog-3-3.jpg\"  height=\"500px\"  width=\"90%\">\r\n                                </div>\r\n                                <p>Cũng có những câu chuyện dài kể về nguồn gốc của loại bánh này. Đó là câu chuyện về quý ngày Medici đệ tam (1642-1723). Vào khoảng thế kỉ XVII, một món tráng miệng gần giống với tiramisu được tạo ra ở Siena (một thành phố ở Ý nơi có số lượng lớn người Tuscan sinh sống).\r\n                                    Trong một chuyến ghé thăm của quý ngài Medici đệ tam tới thành phố, do quá ấn tượng với loại đồ tráng miệng này, ngài đã mang theo công thức cùng mình trở về Florence. Vào thế kỉ 19, bánh Tiramisu trở nên rất nổi tiếng trong giới tri thức cũng như nghệ sĩ người Anh sinh sống\r\n                                    ở Florence. Và công thức về loại bánh này tiếp tục được lưu truyền đến với xứ sở sương mù nơi mà nó bắt đầu được sử dụng rộng rãi và được lan tuyền toàn thế giới.</br></p>\r\n                                <div class=\"traBanh\">\r\n                                    <img  src=\"view/client/img/blog/blog3-4.webp\" height=\"500px\"  width=\"90%\">\r\n                                </div>\r\n                                <p>Theo một bài báo có tựa đề “cuộc phiêu lưu của Tiramisu” tác giả bài báo là Jane Black ở thời báo Washington được đăng vào ngày 11 tháng 7 năm 2007 có nói đến loại bánh tiramisu ở thời điểm hiện tại đã được sáng tạo ra trong một nhà hàng ở Treviso (một thành phố nằm ở phía\r\n                                tây bắc của Venice, Ý) tên là Le Beccherie. Carminantonio Iannaccone – chủ nhà hàng, đã khẳng định rằng ông chính ra cha đẻ của loại bánh tiramisu có một không hai này. Bài báo đã viết về câu chuyện của Carminantonio Iannaccone theo lời kể của ông. Ban đầu ông học việc là một \r\n                                thợ làm bánh ngọt ở một thành phố phía nam của Avellino, và bắt đầu chuyển đến định cư ở Milan vào năm 12 tuổi để tìm việc. Vào năm 1969 ông kết hôn với Bruna và sau đó mở một nhà hàng cũng tên là Piedigrotta giống với một nhà hàng ở Treviso. Tại nơi đây ông bắt đầu sản xuất các \r\n                                loại bánh ngọt dựa theo cuốn sách “Hương vị mỗi ngày” và các loại bánh ngọt do ông sản xuất ra đều có vị café đậm đặc, thật nhiều trứng và phô mai, rượu Marsala (một loại rượu thuốc cổ của Ý) và bánh quy. Ông kể lại rằng mình đã mất 2 năm để hoàn thiện công thức tuyệt vời nhất của \r\n                                mình và ông đã phục vụ nó với một phong cách rất quý phái. Tiramisu được dịch sang tiếng Ý có nghĩa là “pick me up”, cái tên này được đặt dựa trên mùi vị espresso đặc trưng của món bánh và ngay lập tức tiramisu trở thành một hiện tượng. Iannaccone kể lại rằng các thực khách đã thưởng\r\n                                thức món bánh của ông và ngay sau đó họ về nhà và bắt đầu tạo ra những phiên bản khác của tiramisu theo phong cách của riêng họ. Và cho đến cuối những năm 1980 tiramisu đã có mặt khắp nơi trên toàn nước Ý và các vùng lân cận.\r\n                                </p>\r\n                            </span>\r\n                       \r\n                        </div>\r\n                        <a class=\"read-more-btn\">Đọc thêm </a> \r\n                    </div>\r\n                    </div>');
INSERT INTO  blog  ( MaBlog ,  NoiDung ) VALUES ('BL3', '     <div class=\"blog__item__pic set-bg\" data-setbg=\"view/client/img/blog/br3.jpg\">\r\n                        <div class=\"blog__pic__inner\">\r\n                            <div class=\"label\">Bí quyết</div>\r\n                            <ul>\r\n                                <li>By <span>GDH SeweetCake</span></li>\r\n                                <li>13 February 2020</li>\r\n                                <li>250 Views</li>\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"text-container\">\r\n                        <div class=\"blog__item__text \">\r\n                            <h2>Chiếc bánh nhỏ xinh_đơn giản</h2>\r\n                            <p>Đối với những chiếc bánh gato cầu kỳ có thể sẽ không phải là sở thích của nhiều người bởi\r\n                                yêu cầu về trang trí, họa tiết cũng như con mắt thẩm mỹ của mỗi người là khác nhau.\r\n                                Tuy nhiên một chiếc bánh bento cake nhỏ xinh, đơn giản lại dễ dàng chinh phục được những\r\n                                khách hàng khó tính nhất.</br>\r\n                                <span span class=\"read-more-text\">Đặc biệt đối với kiểu trang trí bánh này thì phần kem trên bánh không yêu cầu sự chỉn chu, đôi khi khâu phết kem có thể lem một chút lại tạo thành một điểm nhấn hay ho.\r\n                                Đây cũng chính là ưu điểm để những người không khéo tay có thể thử sức làm một chiếc bánh sinh nhật ý nghĩa </br>\r\n                                    Tuy được trang trí đơn giản nhưng Bento cake lại có vẻ dễ thương với một sức hút đặc biệt, nhất là với những cô nàng đáng yêu.\r\n                                Đặc biệt đối với nhiều người không hảo ngọt thì một chiếc Bento cake nhỏ xinh sẽ rất phù hợp. Chiếc bánh này được đặt trong hộp bã mía vừa xinh xắn lại còn bảo vệ môi trường, rất thích hợp để sống ảo đó ạ.\r\n                            </p></span>\r\n                        </div>\r\n                        <a class=\"read-more-btn\">Đọc thêm </a>\r\n                    </div>\r\n         ');


INSERT INTO  chinhanhch  ( MaChiNhanh ,  TenQuan ,  DiaChi ,  SoDienThoai ,  Email ) VALUES ('CN1', 'Bình Thạnh', '100 Điện Biên Phủ, Phường 17, Quận Bình Thạnh, Tp.HCM', '0978651558', 'gdhsweetcake@gmail.com');
INSERT INTO  chinhanhch  ( MaChiNhanh ,  TenQuan ,  DiaChi ,  SoDienThoai ,  Email ) VALUES ('CN2', 'Thủ Đức', 'Đường số 17, Phường Linh Trung, Quận Thủ Đức, TP.HCM', '0947857558', 'gdhsweetcake@gmail.com');
INSERT INTO  chinhanhch  ( MaChiNhanh ,  TenQuan ,  DiaChi ,  SoDienThoai ,  Email ) VALUES ('CN3', 'Bình Thạnh', '36 Xô Viết Nghệ Tĩnh, Phường 21, Quận Bình Thạnh, Tp.HCM', '0978651479', 'gdhsweetcake@gmail.com');

INSERT INTO  dangkinhantt  ( MaDK ,  Email ) VALUES ('DK01', 'tructhanhhgft666@gmail.com');
INSERT INTO  dangkinhantt  ( MaDK ,  Email ) VALUES ('DK02', 'minhn cnguyen999@gmail.com');
INSERT INTO  dangkinhantt  ( MaDK ,  Email ) VALUES ('DK03', 'thanhthuy83621@gmail.com');
INSERT INTO  dangkinhantt  ( MaDK ,  Email ) VALUES ('DK04', 'minhtammm986111@gmail.com');

INSERT INTO  danhgia  ( MaDG ,  MaKH ,  SoSaoDG ,  NoiDungDanhGia ,  LinkHinhAnh ) VALUES ('DG01', 'KH01', 4, 'Cửa hàng nhân viên tư vấn nhiệt tình, bánh kem tươi n n và giao đúng hạn ', 'view/client/img/testimonial/ta-1.jpg');
INSERT INTO  danhgia  ( MaDG ,  MaKH ,  SoSaoDG ,  NoiDungDanhGia ,  LinkHinhAnh ) VALUES ('DG02', 'KH02', 4, 'Shop chăm sóc kh tốt, cập nhật thường xuyên thông tin về đơn hàng. Bọc gói rất kỹ.Bánh ngọt nên trẻ con rất thích ăn', 'view/client/img/testimonial/ta-2.jpg');
INSERT INTO  danhgia  ( MaDG ,  MaKH ,  SoSaoDG ,  NoiDungDanhGia ,  LinkHinhAnh ) VALUES ('DG03', 'KH03', 4, 'Cửa hàng có nhiều loại bánh giá cả phù hợp dễ lựa chọn', 'view/client/img/testimonial/ta-1.jpg');
INSERT INTO  danhgia  ( MaDG ,  MaKH ,  SoSaoDG ,  NoiDungDanhGia ,  LinkHinhAnh ) VALUES ('DG04', 'KH04', 5, 'Nhân viên nói chuyện hòa đồng, dễ thương tuy cửa hàng ở chi nhánh Thủ Đức hơn nhỏ nhưng mang lại cảm giác ấm cúng ', 'view/client/img/testimonial/ta-2.jpg');
INSERT INTO  danhgia  ( MaDG ,  MaKH ,  SoSaoDG ,  NoiDungDanhGia ,  LinkHinhAnh ) VALUES ('DG05', 'KH05', 4, 'Bánh ngọt ở đây rất n n, trẻ em rất thích, nhân viên giao hàng nhanh ', 'view/client/img/testimonial/ta-1.jpg');
INSERT INTO  danhgia  ( MaDG ,  MaKH ,  SoSaoDG ,  NoiDungDanhGia ,  LinkHinhAnh ) VALUES ('DG06', 'KH06', 5, 'Bánh kem ở đây mẫu mã đa dạng. Cốt bánh kem mền mịn, không tanh mùi trứng sữa. Đánh giá cho cửa hàng 5 sao', 'view/client/img/testimonial/ta-2.jpg');

INSERT INTO  daubep  ( MaDB ,  TenDB ,  LinkHinhAnh ,  ChucVu ) VALUES ('DB1', 'Cao Hùng', 'view/client/img/team/team-1.jpg', 'Làm bánh ');
INSERT INTO  daubep  ( MaDB ,  TenDB ,  LinkHinhAnh ,  ChucVu ) VALUES ('DB2', 'Thanh Thảo ', 'view/client/img/team/team-2.jpg', 'Phụ bếp');
INSERT INTO  daubep  ( MaDB ,  TenDB ,  LinkHinhAnh ,  ChucVu ) VALUES ('DB3', 'Văn Kiên ', 'view/client/img/team/team-3.jpg', 'Trang trí');
INSERT INTO  daubep  ( MaDB ,  TenDB ,  LinkHinhAnh ,  ChucVu ) VALUES ('DB4', 'Thành Ngọc', 'view/client/img/team/team-4.jpg', 'Làm bánh ');

INSERT INTO  gioithieu  ( MaGT ,  NoiDung ) VALUES ('GT01', '<!-- About Section Begin -->\r\n\r\n    <section class=\"about spad\">\r\n\r\n        <div class=\"container\">\r\n\r\n            <div class=\"row\">\r\n\r\n                <div class=\"col-lg-12\">\r\n\r\n                    <video class=\"about__video set-bg\" controls width=\"100%\">\r\n\r\n                        <source src=\"img/intro.mp4\">\r\n\r\n                    </video>\r\n\r\n                </div>\r\n\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n\r\n                <div class=\"col-lg-6 col-md-6\">\r\n\r\n                    <div class=\"about__text\">\r\n\r\n                        <div class=\"section-title\">\r\n\r\n                            <span>Giới thiệu Shop</span>\r\n\r\n                            <h2>Không chỉ là bánh ngọt, đây là sự yêu thương !!!</h2>\r\n\r\n                        </div>\r\n\r\n                        <p>GDH khởi đầu là một cơ sở sản xuất bánh với qui mô gia đình vào đầu những năm 2019.\r\n\r\n                            Trải qua gần 3 năm xây dựng và phát triển,\r\n\r\n                            GDH đã xây dựng được được chuỗi hệ thống với 3 shop lớn nhỏ tại TP.HCM.</p>\r\n\r\n                        <p>Là thương hiệu được biết đến với những sản phẩm chất lượng và n n miệng từ các loại\r\n\r\n                            bánh. Cùng với tinh thần học hỏi trách nhiệm,\r\n\r\n                            tiệm bánh GDH đã đang và sẽ luôn mang đến cho khách hàng những chiếc bánh thơm n n, dinh dưỡng\r\n\r\n                         và hợp vệ sinh với giá cả phải chăng.</p>\r\n\r\n                    </div>\r\n\r\n                </div>\r\n\r\n                <div class=\"col-lg-6 col-md-6\">\r\n\r\n                    <div class=\"about__bar\">\r\n\r\n                        <img src=\"img/welcome-right.png\" alt=\"\">\r\n\r\n                    </div>\r\n\r\n                </div>\r\n\r\n            </div>\r\n\r\n        </div>\r\n\r\n    </section>\r\n\r\n    <!-- About Section End -->');
INSERT INTO  gioithieu  ( MaGT ,  NoiDung ) VALUES ('GT02', '<div class=\"row\">\r\n<div class=\"col-lg-6 col-md-6\">\r\n\r\n                    <div class=\"about__text\">\r\n\r\n                        <div class=\"section-title\">\r\n\r\n                            <span>Giới thiệu Shop</span>\r\n\r\n                            <h2>Không chỉ là bánh ngọt, đây là sự yêu thương !!!</h2>\r\n\r\n                        </div>\r\n\r\n                        <p>GDH khởi đầu là một cơ sở sản xuất bánh với qui mô gia đình vào đầu những năm 2019.\r\n\r\n                            Trải qua gần 3 năm xây dựng và phát triển,\r\n\r\n                            GDH đã xây dựng được được chuỗi hệ thống với 3 shop lớn nhỏ tại TP.HCM.</p>\r\n\r\n                    </div>\r\n\r\n                </div>\r\n                                                                </div>');


INSERT INTO  giolamviec  ( MaGio ,  NoiDung ) VALUES ('GLV01', 'Thứ hai - Thứ sáu: 08:00 – 18:30');
INSERT INTO  giolamviec  ( MaGio ,  NoiDung ) VALUES ('GLV02', 'Thứ bảy: 10:00 – 16:30');
INSERT INTO  giolamviec  ( MaGio ,  NoiDung ) VALUES ('GLV03', 'Chủ nhật: 10:00 – 16:30');


INSERT INTO  slideshow  ( MaSlide ,  LinkHinhAnh ,  NoiDung ) VALUES ('SL01', 'view/client/img/slider/slider-3.jpg', 'Mời bạn một chiếc bánh ngon\r\nMột tánh trà nóng\r\nMột ngày an yên ');
INSERT INTO  slideshow  ( MaSlide ,  LinkHinhAnh ,  NoiDung ) VALUES ('SL02', 'view/client/img/slider/slider-4.jpg', 'Ăn miếng bánh, uống chút trà\r\nCầm tay và muốn là \"Nhà\" của nhau...');
INSERT INTO  slideshow  ( MaSlide ,  LinkHinhAnh ,  NoiDung ) VALUES ('SL03', 'view/client/img/slider/slider-1.jpg', 'Bánh\"Đồ vật không có tri giác\" những là cầu nối để bạn truyền đạt tình cảm của mình');
INSERT INTO  slideshow  ( MaSlide ,  LinkHinhAnh ,  NoiDung ) VALUES ('SL04', 'view/client/img/slider/slider-2.jpg', 'Một chiếc bánh ngon làm cho cuộc sống của bạn trở nên ngọt ngào hơn...!');

INSERT INTO  tencuahang  ( MaTenCH ,  TenCH ,  LinkHinhAnh ,  NoiDung ) VALUES ('CH01', 'GDH Sweet Cake', 'view/client/img/lo 1.jpg', '');
INSERT INTO  tencuahang  ( MaTenCH ,  TenCH ,  LinkHinhAnh ,  NoiDung ) VALUES ('CH02', 'GDH Sweet Cake', 'view/client/img/footer-lo .png', 'Tiệm bánh GDH sweet cake sẽ giúp bạn hiện thực hóa tất cả những ý tưởng để dành tặng một món quà ý nghĩa nhất, độc đáo nhất cho bạn bè, đồng nghiệp và những người thân yêu trong gia đình.');


Select * from sanpham join chitietsanpham on sanpham.MaSP =chitietsanpham.MaSP WHERE MaLoaiSP='CUP' ORDER BY SanPham.MaLoaiSP OFFSET 3 ROWS FETCH NEXT 12 ROWS ONLY;
