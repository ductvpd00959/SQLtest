-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:19:29.691




-- tables
-- Table TNhanVien
CREATE TABLE TNhanVien (
    MaNV varchar(10)    NOT NULL ,
    TenNV varchar(50)    NOT NULL ,
    NgaySinh date    NOT NULL ,
    GioiTinh varchar10)    NOT NULL ,
    Email varchar(50)    NOT NULL ,
    MucLuc varchar(100)    NOT NULL ,
    MaPhong int    NOT NULL ,
    TPhongBan_MaPhong int    NOT NULL ,
    CONSTRAINT TNhanVien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongBan
CREATE TABLE TPhongBan (
    MaPhong int    NOT NULL ,
    TenPhong varchar(100)    NOT NULL ,
    CONSTRAINT TPhongBan_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  TNhanVien_TPhongBan (table: TNhanVien)


ALTER TABLE TNhanVien ADD CONSTRAINT TNhanVien_TPhongBan FOREIGN KEY TNhanVien_TPhongBan (TPhongBan_MaPhong)
    REFERENCES TPhongBan (MaPhong);



-- End of file.

