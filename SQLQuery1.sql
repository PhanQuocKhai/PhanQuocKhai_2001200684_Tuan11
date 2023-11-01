create database QLySinhVien
go

CREATE TABLE SinhVien
(
   MaSinhVien VARCHAR(10) PRIMARY KEY,
   HoTen NVARCHAR(100),
   NgaySinh DATE,
   GioiTinh NVARCHAR(10),
   MaKhoa VARCHAR(10)
);

CREATE TABLE Khoa (
    MaKhoa NVARCHAR(50) PRIMARY KEY,
    TenKhoa NVARCHAR(100)
);

CREATE TABLE Lop (
    MaLop NVARCHAR(50) PRIMARY KEY,
    TenLop NVARCHAR(100),
    MaKhoa NVARCHAR(50),
    FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);