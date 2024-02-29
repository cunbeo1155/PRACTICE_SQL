create table THAMGIADT
(MAGV nchar(3) not null,
MADT nchar(4) not null,
STT int not null,
PHUCAP numeric(10,2),
KETQUA nvarchar(10)
CONSTRAINT PK_THAMGIADT PRIMARY KEY (MAGV, MADT, STT)
)

create table KHOA
(MAKHOA nchar(4) not null,
TENKHOA nvarchar(50),
NAMTL int,
PHONG char(3),
DIENTHOAI char(10),
TRUONGKHOA nchar(3),
NGAYNHANCHUC datetime,
CONSTRAINT PK_KHOA PRIMARY KEY (MAKHOA)
)


create table BOMON
(MABM nchar(4) not null,
TENBM nchar(50),
PHONG char(3),
DIENTHOAI char(11),
TRUONGBM nchar(3),
MAKHOA nchar(4),
NGAYNHANCHUC datetime,
CONSTRAINT PK_BOMON PRIMARY KEY (MABM)
)

create table DETAI
(MADT nchar(4) not null,
TENDT nvarchar(50),
CAPQL nchar(20),
KINHPHI numeric(10,2),
NGAYBD datetime,
NGAYKT datetime,
MACD nchar(4),
GVCNDT nchar(3),
CONSTRAINT PK_DETAI PRIMARY KEY (MADT)
)

create table CHUDE
(MACD nchar(4) not null,
TENCD nvarchar(30)
CONSTRAINT PK_CHUDE PRIMARY KEY (MACD)
)

create table GIAOVIEN
(MAGV nchar(3) not null,
HOTEN nvarchar(50),
LUONG numeric(10,2),
PHAI nchar(3),
NGSINH datetime,
DIACHI nvarchar(50),
GVQLCM nchar(3),
MABM nchar(4),
CONSTRAINT PK_GIAOVIEN PRIMARY KEY (MAGV)

)

create table CONGVIEC
(MADT nchar(4) not null,
SOTT int not null,
TENCV nvarchar(50),
NGAYBD datetime,
NGAYKT datetime,
CONSTRAINT PK_CONGVIEC PRIMARY KEY (MADT, SOTT)
)

--Nhập data cho bảng CHUDE
insert into CHUDE(MACD, TENCD)
values
('NCPT', N'Nghiên cứu phát triển'),
('QLGD', N'Quản lý giáo dục'),
('UDCN', N'Ứng dụng công nghệ')

--Nhập data cho bảng BOMON
insert into BOMON(MABM, TENBM, PHONG, DIENTHOAI, MAKHOA)
values
(N'CNTT',N'Công nghệ tri thức','B15','0838126126',N'CNTT'),
(N'HHC',N'Hóa hữu cơ','B44','0838222222',N'HH'),
(N'HL',N'Hóa Lý','B42','0838878787',N'HH')

insert into BOMON(MABM,TENBM,PHONG,DIENTHOAI,TRUONGBM,MAKHOA,NGAYNHANCHUC)
values
(N'HPT',N'Hóa phân tích','B43','0838777777','007',N'HH','2007-10-15'),
(N'HTTT',N'Hệ thống thông tin','B13','0838125125','002',N'CNTT','2004-09-20'),
(N'MMT',N'Mạng máy tính','B16','0838676767','001',N'CNTT','2005-05-15')

Insert Into BOMON(MABM,TENBM,PHONG,DIENTHOAI,MAKHOA)
values
(N'SH',N'Sinh hóa','B33','0838898989',N'SH'),
(N'VLĐT',N'Vật lý điện tử','B23','0838234234',N'VL')


insert into BOMON(MABM,TENBM,PHONG,DIENTHOAI,TRUONGBM,MAKHOA,NGAYNHANCHUC)
values
(N'VLUD',N'Vật lý ứng dụng','B24','0838454545','005',N'VL','2006-02-18'),
(N'VS',N'Vi Sinh','B32','0838909090','004',N'SH','2007-01-01')


--Nhập data cho bảng GIAOVIEN
Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,MABM)
values
('001',N'Nguyễn Hoài An',2000.0,N'Nam','1973-02-15',N'25/3 Lạc Long Quân, Q.10,TP HCM', N'HHC'),
('002',N'Trần Trà Hương',2500.0,N'Nữ','1960-06-20',N'125 Trần Hưng Đạo, Q.1, TP HCM', N'VLUD') 

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM, MABM)
values
('003',N'Nguyễn Ngọc Ánh',2200.0,N'Nữ','1975-05-11',N'12/21 Võ Văn Ngân Thủ Đức, TP HCM',N'002',N'VLĐT') 

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,MABM)
values
('004',N'Trương Nam Sơn',2300.0,N'Nam','1959-06-20',N'215 Lý Thường Kiệt,TP Biên Hòa',N'HPT'),
('005',N'Lý Hoàng Hà',2500.0,N'Nam','1954-10-23',N'22/5 Nguyễn Xí, Q.Bình Thạnh, TP HCM',N'SH')

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM, MABM)
values
('006',N'Trần Bạch Tuyết',1500.0,N'Nữ','1980-05-20',N'127 Hùng Vương, TP Mỹ Tho',N'004', N'MMT')


Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI, MABM)
values
('007',N'Nguyễn An Trung',2100.0,N'Nam','1976-06-05',N'234 3/2, TP Biên Hòa', N'HL')

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM, MABM) 
values
('008',N'Trần Trung Hiếu',1800.0,N'Nam','1977-08-06',N'22/11 Lý Thường Kiệt,TP Mỹ Tho',N'007', N'VS'),
('009',N'Trần Hoàng nam',2000.0,N'Nam','1975-11-22',N'234 Trấn Não,An Phú, TP HCM',N'001', N'CNTT'),
('010',N'Phạm Nam Thanh',1500.0,N'Nam','1980-12-12',N'221 Hùng Vương,Q.5, TP HCM',N'007',N'HTTT') 




--Nhập data cho bảng DETAI
Insert Into DETAI(MADT,TENDT,CAPQL,KINHPHI,NGAYBD,NGAYKT,MACD,GVCNDT)
values
('001',N'HTTT quản lý các trường ĐH',N'ĐHQG',20.0,'2007-10-20','2008-10-20',N'QLGD','002'),
('002',N'HTTT quản lý giáo vụ cho một Khoa',N'Trường',20.0,'2000-10-12','2001-10-12',N'QLGD','002'),
('003',N'Nghiên cứu chế tạo sợi Nanô Platin',N'ĐHQG',300.0,'2008-05-15','2010-05-15',N'NCPT','005'),
('004',N'Tạo vật liệu sinh học bằng màng ối người',N'Nhà nước',100.0,'2007-01-01','2009-12-31',N'NCPT','004'),
('005',N'Ứng dụng hóa học xanh',N'Trường',200.0,'2003-10-10','2004-12-10',N'UDCN','007'),
('006',N'Nghiên cứu tế bào gốc',N'Nhà nước',4000.0,'2006-10-12','2009-10-12',N'NCPT','004'),
('007',N'HTTT quản lý thư viện ở các trường ĐH',N'Trường',20.0,'2009-05-10','2010-05-10',N'QLGD','001')

--Nhập data cho bảng CONGVIEC
insert into CONGVIEC(MADT,SOTT,TENCV,NGAYBD,NGAYKT)
values
 ('001',1,N'Khởi tạo và Lập kế hoạch','2007-10-20','2008-12-20'),
 ('001',2,N'Xác định yêu cầu','2008-12-21','2008-03-21'),
 ('001',3,N'Phân tích hệ thống','2008-03-22','2008-05-22'),
 ('001',4,N'Thiết kế hệ thống','2008-05-23','2008-06-23'),
 ('001',5,N'Cài đặt thử nghiệm','2008-06-24','2008-10-20'),
 ('002',1,N'Khởi tạo và lập kế hoạch','2009-05-10','2009-07-10'),
 ('002',2,N'Xác định yêu cầu','2009-07-11','2009-10-11'),
 ('002',3,N'Phân tích hệ thống','2009-10-12','2009-12-20'),
 ('002',4,N'Thiết kế hệ thống','2009-12-21','2010-03-22'),
 ('002',5,N'Cài đặt thử nghiệm','2010-03-23','2010-05-10'),
 ('006',1,N'Lấy mẫu','2006-10-20','2007-02-20'),
 ('006',2,N'Nuôi cấy','2007-02-21','2008-09-21')

 --Nhập data cho bảng THAMGIADT
 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP) 
 values
 ('001','002',1,0.0),
 ('001','002',2,2.0)
 
 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP,KETQUA)
 values
 ('002','001',4,2.0,N'Đạt'),
 ('003','001',1,1.0,N'Đạt'),
 ('003','001',2,0.0,N'Đạt'),
 ('003','001',4,1.0,N'Đạt')


 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP) 
 values
 ('003','002',2,0.0)
 
 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP,KETQUA)
 values
 ('004','006',1,0.0,N'Đạt'),
 ('004','006',2,1.0,N'Đạt'),
 ('006','006',2,1.5,N'Đạt') 

 Insert Into THAMGIADT(MAGV,MADT,STT,PHUCAP) 
 values
 ('009','002',3,0.5),
 ('009','002',4,1.5) 
 select * from THAMGIADT

 --Nhập data cho bảng KHOA
 Insert Into KHOA(MAKHOA,TENKHOA,NAMTL,PHONG,DIENTHOAI,TRUONGKHOA,NGAYNHANCHUC)
 values
 (N'CNTT',N'Công nghệ thông tin',1995,'B11','0838123456','002','2005-02-20'),
 (N'HH',N'Hóa học',1980,'B41','0838456456','007','2001-10-15'),
 (N'SH',N'Sinh học',1980,'B31','0838454545','004','2000-10-11'),
 (N'VL',N'Vật lý',1976,'B21','0838223223','005','2003-09-18')


 select * from CHUDE
 select * from DETAI
 

 select * from DETAI

 --Tính tổng phụ cấp của từng giáo viên và tổng kinh phí của đề tài mà giáo viên đó phụ trách
 -- Bảng cần lấy: thamgiadt, detai
  select * from THAMGIADT
  select * from DETAI

select THAMGIADT.MAGV, THAMGIADT.MADT, sum(THAMGIADT.PHUCAP)as TONGPC, sum(DETAI.KINHPHI) AS TONGKP 
from THAMGIADT inner join DETAI on THAMGIADT.MADT = DETAI.MADT
group by THAMGIADT.MAGV, THAMGIADT.MADT

--1/Từ bảng GIAOVIEN lấy thông tin Bộ môn (mã bộ môn, tên bộ môn) của giáo viên phụ trách
 select GIAOVIEN.MAGV,GIAOVIEN.HOTEN,BOMON.MABM, BOMON.TENBM from GIAOVIEN inner join BOMON on GIAOVIEN.MABM = BOMON.MABM

 --2/ Ứng với mỗi đề tài , lấy tất cả thông tin chủ đề liên quan
 select DETAI.MADT, DETAI.TENDT, CHUDE.* from DETAI inner join CHUDE on DETAI.MACD = CHUDE.MACD

 --3/ Ứng với mỗi đề tài, cho biết thông tin giáo viên tham gia (họ tên,  địa chỉ), kết quả đạt được 
 select * from DETAI
 select * from GIAOVIEN
 select DETAI.MADT, DETAI.TENDT, GIAOVIEN.HOTEN, GIAOVIEN.DIACHI from DETAI inner join GIAOVIEN on DETAI.GVCNDT = GIAOVIEN.MAGV

 --4/ Liệt kê tất cả các khoa hiện có, thông tin trưởng khoa ( gợi ý: liên kết với bảng GIAOVIEN)
 select * from KHOA
 select KHOA.MAKHOA,KHOA.TENKHOA, KHOA.DIENTHOAI, GIAOVIEN.HOTEN, GIAOVIEN.NGSINH from KHOA left join GIAOVIEN on KHOA.TRUONGKHOA = GIAOVIEN.MAGV

 --5/ Liệt kê tất cả các bộ môn có, thông tin trưởng bộ môn ( gợi ý: liên kết với bảng GIAOVIEN)
 select * from BOMON
 select BOMON.MABM, BOMON.TENBM,  GIAOVIEN.HOTEN as TRUONGBOMON, GIAOVIEN.NGSINH AS NGSINH_TBM from BOMON left join GIAOVIEN on BOMON.TRUONGBM = GIAOVIEN.MAGV




 ---Bài tập tuần 6 (09/12/2023)
 --1/Liệt kê tất cả công việc theo từng đề tài, cho biết ngày bắt đầu và ngày kết thúc
 select * from DETAI
 select * from CONGVIEC
 select DETAI.MADT, CONGVIEC.TENCV, DETAI.TENDT, CONGVIEC.NGAYBD, CONGVIEC.NGAYKT from CONGVIEC inner join DETAI on CONGVIEC.MADT = DETAI.MADT

 --2/Liệt kê công việc có ngày kết thúc muộn nhất (lớn nhất) ứng với từng đề tài.

 select max(CONGVIEC.TENCV) as TENCV,DETAI.TENDT, max(CONGVIEC.NGAYKT) as NGAYKT_MUONNHAT  from CONGVIEC inner join DETAI on CONGVIEC.MADT = DETAI.MADT 
 group by DETAI.TENDT



 


--3/Đếm số lượng đề tài "Đạt" theo từ giáo viên
select * from THAMGIADT
select * from GIAOVIEN

select GIAOVIEN.MAGV,  GIAOVIEN.HOTEN, count(THAMGIADT.KETQUA)as SL_DAT from THAMGIADT inner join GIAOVIEN on THAMGIADT.MAGV = GIAOVIEN.MAGV where THAMGIADT.KETQUA = N'Đạt'
group by GIAOVIEN.MAGV,  GIAOVIEN.HOTEN

--4/Liệt kê chủ đề theo từng đề tài

select DETAI.MADT, DETAI.TENDT, CHUDE.* from DETAI inner join CHUDE on DETAI.MACD = CHUDE.MACD

--5/Tính tổng kinh phí đề tài mà giáo viên chủ nhiệm đề tài (gvcndt) được cấp
select * from DETAI

select  GIAOVIEN.HOTEN, sum(DETAI.KINHPHI)  from DETAI inner join GIAOVIEN on DETAI.GVCNDT = GIAOVIEN.MAGV
group by GIAOVIEN.HOTEN

--6/Cho biết tên người chủ nhiệm đề tài của những đề tài thuộc chủ đề Quản lý giáo dục

select DETAI.MADT, DETAI.TENDT, DETAI.MACD, GIAOVIEN.HOTEN from DETAI  inner join GIAOVIEN on DETAI.GVCNDT = GIAOVIEN.MAGV where DETAI.MACD = 'QLGD'

--7/Tìm những giáo viên là trưởng bộ môn

select GIAOVIEN.MAGV, GIAOVIEN.HOTEN, GIAOVIEN.PHAI, GIAOVIEN.NGSINH, BOMON.TENBM as TRUONGBOMON from BOMON inner join GIAOVIEN on BOMON.TRUONGBM = GIAOVIEN.MAGV

--8/Tìm giáo viên có lương cao nhất

select * from GIAOVIEN where LUONG = (select max(LUONG) from GIAOVIEN)

--9/ Cho biết tên khoa có đông giáo viên nhất

select KHOA.TENKHOA, count(KHOA.TENKHOA) as SOLUONG_GV into #tmp1 from BOMON inner join KHOA on BOMON.MAKHOA = KHOA.MAKHOA inner join GIAOVIEN on BOMON.MABM = GIAOVIEN.MABM
group by KHOA.TENKHOA --HIỆN RA BẢNG SỐ LƯỢNG GIÁO VIÊN CHO MỖI KHOA RỒI LƯU VÀO BẢNG TẠM.

select * from #tmp1 where SOLUONG_GV = (select max(SOLUONG_GV) from #tmp1)


--10/ Cho biết họ tên giáo viên chủ nhiệm nhiều đề tài nhất
select  GIAOVIEN.HOTEN, COUNT(DETAI.TENDT)  as SOLUONG_DT into #tmp2 from DETAI inner join GIAOVIEN ON DETAI.GVCNDT = GIAOVIEN.MAGV 
group by GIAOVIEN.HOTEN -- HIỆN RA BẢNG SỐ LƯỢNG ĐỀ TÀI CHO MỖI GIÁO VIÊN RỒI LƯU VÀO BẢNG TẠM

select * from #tmp2 where SOLUONG_DT = (select max(SOLUONG_DT) from #tmp2)

--11/ Cho biết mã bộ môn có nhiều giáo viên nhất
select BOMON.MABM, BOMON.TENBM, COUNT(GIAOVIEN.GVQLCM) as GVQLCM , COUNT(BOMON.TRUONGBM) as TRUONGBM , count(GIAOVIEN.HOTEN) as HOTENGV into #tmp3 from GIAOVIEN inner join BOMON on GIAOVIEN.MABM = BOMON.MABM
group by BOMON.MABM, BOMON.TENBM -- HIỆN RA BẢNG SỐ LƯỢNG GVQLCM, TRUONGBM, HOTENGV CHO MỖI BỘ MÔN RỒI LƯU VÀO BẢNG TẠM 

alter table #tmp3
add  SOLUONG_GV int --- TẠO THÊM CỘT MỚI CHO BẢNG TẠM


update #tmp3 set  SOLUONG_GV = GVQLCM + TRUONGBM + HOTENGV --- Điền giá trị cho cột số lượng gv cho mỗi bộ môn bằng cách cộng 3 GVQLCM, TRUONGBM VÀ HOTEN GV



select * from #tmp3 where SOLUONG_GV=(select max(SOLUONG_GV) from #tmp3)

--12/Cho biết tên những giáo viên khoa Công nghệ thông tin mà chưa tham gia đề tài nào.

select GIAOVIEN.MAGV, GIAOVIEN.HOTEN, KHOA.TENKHOA into #tmp4 
from BOMON inner join KHOA on BOMON.MAKHOA = KHOA.MAKHOA inner join GIAOVIEN on BOMON.MABM = GIAOVIEN.MABM where KHOA.MAKHOA = 'CNTT'
-- Lấy bảng mã giáo viên và tên của giáo viên thuộc khoa Công nghệ thông tin rồi lưu vào bảng tạm


select #tmp4.MAGV, #tmp4.HOTEN, #tmp4.TENKHOA from THAMGIADT right join #tmp4 on THAMGIADT.MAGV = #tmp4.MAGV where THAMGIADT.MAGV is null
--Lấy bảng mã giáo viên và tên của giáo viên thuộc khoa Công nghệ thông tin mà chưa tham gia đề tài nào. 

--Bài tập 13/12
--1/ Cho biết mã số, họ tên, ngày sinh của giáo viên tham gia tất cả các công việc của đề tài “Ứng dụng hóa học xanh”.
select * from THAMGIADT
select * from CONGVIEC
select * from DETAI

--2/Xuất ra thông tin giáo viên (MAGV, HOTEN) và xếp hạng dựa vào mức lương từ cao nhất đến thấp nhất
select MAGV, HOTEN from GIAOVIEN order by LUONG DESC

--3/Cho các công việc bắt đầu trong khoảng từ 01/01/2007 đến 01/08/2007.

select * from CONGVIEC where NGAYBD >= '2007-01-01' and NGAYBD <= '2007-08-01'
--4/ Cho biết tên chủ đề và số lượng đề tài thuộc về chủ đề đó.
select * from CHUDE
select * from DETAI

select CHUDE.TENCD, COUNT(DETAI.MADT) AS SOLUONG_DT from DETAI left join CHUDE ON DETAI.MACD = CHUDE.MACD
group by CHUDE.TENCD

--5/ Cho biết tên những giáo viên đã tham gia từ 2 đề tài trở lên.
select * from GIAOVIEN
select * from THAMGIADT
select GIAOVIEN.HOTEN, count(THAMGIADT.MADT) from THAMGIADT left join GIAOVIEN ON THAMGIADT.MAGV = GIAOVIEN.MAGV
group by GIAOVIEN.HOTEN





select GIAOVIEN.HOTEN, (THAMGIADT.MADT) into #tmp from THAMGIADT left join GIAOVIEN ON THAMGIADT.MAGV = GIAOVIEN.MAGV
group by GIAOVIEN.HOTEN,  (THAMGIADT.MADT)

select HOTEN, count(MADT)AS SOLUONG_DT into #tmpp from #tmp group by HOTEN 

select * from #tmpp where SOLUONG_DT >= 2

--YÊU CẦU: TÍNH TỔNG LƯƠNG CỦA CÁC GIÁO VIÊN THEO TỪNG BỘ MÔN VÀ UPDATE DỮ LIỆU VÀO CỘT TỔNG LƯƠNG BỘ MÔN 
select * INTO #TMPGIAOVIEN from GIAOVIEN
select MABM, SUM(LUONG) AS TONGLUONG_BOMON from #TMPGIAOVIEN GROUP BY MABM
UPDATE GIAOVIEN SET TONGLUONG_BM = B.TONGLUONG_BOMON FROM GIAOVIEN JOIN (select MABM, SUM(LUONG) AS TONGLUONG_BOMON from #TMPGIAOVIEN GROUP BY MABM) B ON GIAOVIEN.MABM = B.MABM
SELECT * FROM GIAOVIEN



--Khởi tạo biến @phai nvarchar(4)
-- Nếu phái = "nam" thì lấy tất cả giáo viên phái = nam ngược lại lấy tất cả giáo viên = "nữ"

declare @phai nvarchar(4)
select @phai = N'Nam'
if (@phai = N'nam') begin
 select * from #TMPGIAOVIEN where PHAI = 'Nam'
end else begin
 select * from #TMPGIAOVIEN where PHAI = N'Nữ'
end

-- Cho đầu vào là một số nguyên giá trị bất kì, 
--kiếm tra trong bảng detai nếu không có đề tài nào có kinhphi < gia trị đầu vào thì in ra màn hình không có đề tài phù hợp 
--ngược lại lấy tất cả đề tài có kinhphi <= giá trị đầu vào
select * from DETAI
declare @value int
select @value = 30


if exists (select 1 from DETAI WHERE KINHPHI <= @value) begin
 select * from DETAI WHERE KINHPHI <= @value
END ELSE BEGIN
 select N'Không có đề tài phù hợp'
 
END

--CASE-WHEN

--TẠO BẢNG TẠM LẤY DỮ LIỆU TỪ BẢNG GIÁO VIÊN
-- THÊM CỘT PHUCAP NVARCHAR(32)
-- NẾU GIÁO VIÊN LÀ NỮ THÌ CẬP NHẬT PHỤ CẤP LÀ "ĐỦ ĐK" NGƯỢC LẠI NẾU GIÁO VIÊN LÀ NAM VÀ LƯƠNG <=1800 THÌ ĐỦ ĐK, CÒN LẠI LÀ "KHÔNG ĐỦ ĐK"

select *, cast('' as nvarchar(32)) as PHUCAP INTO #TMPGIAOVIEN FROM GIAOVIEN

SELECT * FROM #TMPGIAOVIEN

--GIÁO VIÊN CÓ BM LÀ CNTT THÌ TRẢ GIÁ TRỊ LÀ 1 NGƯỢC LẠI LÀ 0 
SELECT CASE WHEN MABM = 'CNTT' THEN 1 ELSE 0 END , MABM, * FROM #TMPGIAOVIEN

--GIÁO VIÊN CÓ MABM 2 KÝ TỰ CUỐI LÀ TT THÌ TRẢ GIÁ TRỊ LÀ 1 NGƯỢC LẠI LÀ 0 
SELECT CASE WHEN RIGHT(MABM,2) = 'TT' THEN 1 ELSE 0 END as VALUEA, MABM, * FROM #TMPGIAOVIEN
select * into #tmpgv from GIAOVIEN
update #TMPGIAOVIEN 
SET 
PHUCAP = CASE
WHEN PHAI = N'NỮ' THEN N'ĐỦ ĐIỀU KIỆN'
WHEN PHAI = N'NAM' AND LUONG <=1800 THEN N'ĐỦ ĐIỀU KIỆN'
ELSE N'KHÔNG ĐỦ ĐIỀU KIỆN'
END
SELECT *, cast('' as int) as KETQUA_1 FROM #TMPGIAOVIEN

-- Tạo thêm cột KETQUA char(1) cho bảng tạm
-- Nếu giáo viên có kết quả đề tài là 'Đạt' thì cập nhật giá trị KETQUA = '1' ngược lại '0'

select #TMPGIAOVIEN.MAGV,#TMPGIAOVIEN.HOTEN,COUNT (THAMGIADT.KETQUA) as SOLUONG_DAT,cast(0 as int) as KETQUA into #tmp12 from #TMPGIAOVIEN inner join THAMGIADT ON #TMPGIAOVIEN.MAGV = THAMGIADT.MAGV 
group by #TMPGIAOVIEN.MAGV, #TMPGIAOVIEN.HOTEN
select * from #TMP12
select *, cast('' as int) as KETQUA from #tmp12 order by MAGV ASC

select * from #TMPGIAOVIEN

UPDATE #TMP12 SET KETQUA = case when SOLUONG_DAT > 0 THEN 1 ELSE 0 END


--Nếu giáo viên là nữ và năm sinh > 1970 thì là 1, nếu là nam thì xét thêm đk năm sinh nếu năm sinh > 1970 thì giá trị là 2 ngược là 3,
--còn lại là 4
select case when PHAI=N'NỮ' AND YEAR(NGSINH) > 1970 THEN 1
WHEN PHAI=N'NAM' THEN (CASE WHEN YEAR(NGSINH) > 1970 THEN 2 ELSE 3 END) 
ELSE 4  END, 
 PHAI, NGSINH from GIAOVIEN

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM)
values ('011',N'Lê Minh Đức',1500.0,N'Nam','1980-12-12',N'221 Hùng Vương,Q.5, TP HCM',N'007')

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM)
values ('012',N'Trần Văn Anh',1500.0,N'Nam','1960-05-12',N'221 Hùng Vương,Q.5, TP HCM',N'008')

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM)
values ('013',N'Phạm Ngọc Tuyền',1500.0,N'Nữ','1965-06-12',N'221 Hùng Vương,Q.5, TP HCM',N'003')

Insert Into GIAOVIEN(MAGV,HOTEN,LUONG,PHAI,NGSINH,DIACHI,GVQLCM)
values ('014',N'Đào Minh Tú',1500.0,N'Nam','1975-12-12',N'221 Hùng Vương,Q.5, TP HCM',N'005')


--Câu 1 Nếu mã giáo viên kết thúc khác 1, 2 hoặc 3 và năm sinh >1960 thì trả về giá trị 1 ngươc lại trả về giá trị 2
select case when (MAGV not like '%1' and MAGV not like '%2' and MAGV not like '%3') AND year(NGSINH) > 1960 THEN 1 ELSE 2 END AS KETQUA,
MAGV, NGSINH from GIAOVIEN

--Câu 2
-- Nếu mã giáo viên kết thúc khác 1, 2, 3 và năm sinh >1960 thì trả về giá trị 1 
--ngươc lại nếu mã giáo viên kết thúc là 1 và 2 thì trả về giá trị là 2 đối với giáo viên nam và trả về giá trị là 3 đối với giáo viên nữ, còn lại trả về giá trị 4
select case when (MAGV not like '%1' and MAGV not like '%2' and MAGV not like '%3') AND year(NGSINH) > 1960 THEN 1 
when (MAGV like '%1' or MAGV like '%2') then (case when PHAI=N'NAM' then 2 else 3 end) else 4
END AS KETQUA,
PHAI, MAGV, NGSINH from GIAOVIEN


select * from GIAOVIEN
select * from BOMON
select * from KHOA
	
select * from BOMON
update BOMON SET BOMON.TENKHOA = KHOA.TENKHOA  from BOMON LEFT JOIN KHOA ON BOMON.MAKHOA = KHOA.MAKHOA


declare @i int = 1, @tong int = 0

while (@i<=1000)
begin
    select @tong = @tong + @i
	select @i = @i + 1
end

select @tong

--1/ Tính tổng từ 1/1 + 1/2 + 1/3 + ... + 1/n. Với n là input đầu vào?

declare @n float = 1, @sum float = 0 , @m float = 20

while (@n<=@m) begin
select @sum = @sum + 1/@n
select @n = @n + 1 


end


select @sum




--2/ Tính tổng từ 1/1 + 1/2 + 1/2 + 1/3 + 1/3 + ... + 1/n-1 + 1/n. Với n là input đầu vào? 
declare @n2 int, @i2 int = 2, @sum2 float = 0
set @n2 = 3
while @i2 <= @n2
begin
	set @sum2 = @sum2 + 1.0/(@i2-1) + 1.0/@i2
	set @i2 = @i2 + 1
end

select @sum2





-- Câu 3:
--- Tạo 1 bảng tạm #tmpGiaoVien, thêm cột số thứ tự vào bảng #tmpGiaovien.
--  1/ Tạo 2 bảng tạm #tmpGiaoVienNam, #tmpGiaoVienNu có cấu trúc như bảng #tmpgiaovien
--  2/ Sau đó chạy 1 vòng lặp while để duyệt toàn bộ bảng. Nếu dòng thứ i, giáo viên là Nam thì thêm dòng dữ liệu vào bảng #tmpGiaoVienNam,
--  nếu giáo viên là Nữ thì thêm dòng dữ liệu vào #tmpGiaoVienNu

select ROW_NUMBER() over(order by MAGV) as STT, * into #tmpGIAOVIEN from GIAOVIEN
select top 0* into #tmpGIAOVIENNAM from #TMPGIAOVIEN
select top 0* into #tmpGIAOVIENNU from #TMPGIAOVIEN
select * from #tmpGIAOVIENNAM
select * from #tmpGIAOVIENNU


declare @i3 int = 1;
declare @maxi3 int = (select max(STT) from #tmpgiaovien);
while @i3 <= @maxi3
begin
    declare @phai nvarchar(3);
	set @phai = (select phai from #tmpgiaovien where STT = @i3);
	if @phai = N'Nam'
        insert into #tmpgiaoviennam select * from #tmpgiaovien where STT = @i3;
    else if @phai = N'Nữ'
        insert into #tmpgiaoviennu select * from #tmpgiaovien where STT = @i3;
    set @i3 = @i3 + 1;
end;

select * from #tmpGIAOVIENNAM
select * from #tmpGIAOVIENNU

-- Hạn chế sử dụng like
-- Hạn chế select nhiều bảng hoặc 1 bảng nhiều lần
-- Hạn chế dùng IN
-- Ví dụ select * from giaovien where magv in('001', '002', '003')
-- Ví dụ select * from giaovien where magv = '001' or magv  = '002' or magv = '003'

-- Ví dụ select * from detai where magv in (select magv from giaovien)
-- Cách 1: join 
-- Cách 2: exists. 
-- select * from detai a where exsist( select 1 from giaovien b where a.magv = b.magv) 

-- select * 

-- alter table add column 
-- Không dùng between cho số, ngày
--Hạn chế dùng câu tính toán trong điều kiện where
--Hạn chế dùng while, cursor
--Thay vào đó dùng update, CTE

-- Bước 1: xác định input
-- Bước 2: Khai báo biến cần dùng
-- Bước 3: Tạo bảng cấu trúc
-- Bước 4: Lấy dữ liệu thô
-- Bước 5: Xử lí dữ liệu
-- Bước 6: Trả về kết quả



select * from GIAOVIEN
-- Câu 1: Viết store nhận vào 2 input: 1/ Phái, Năm sinh. Trả về tất cả giáo viên có phái trùng với input và năm sinh > input
alter procedure Sentence1 @Phai nvarchar(30), @Namsinh int 
AS
BEGIN
	select * from GIAOVIEN where Phai = @Phai and year(NGSINH) > @Namsinh
END
EXEC Sentence1 @Phai = N'Nữ' , @Namsinh = 1950
select * from GIAOVIEN where Phai = 'Nam' and year(NGSINH) > 1990




--Câu 2: Viết store tính tổng lương theo từng bộ môn với input đầu vào là mã bộ môn, nếu mã bộ môn để trắng thì tất cả bộ môn hiện có 

alter procedure BaoCaoLuong @MABM nchar(4) as
select TOP 0 A.MABM, B.TENBM, A.LUONG INTO #TMPSENTENCE2 from GIAOVIEN A , BOMON B
if @MABM = ''

	insert into #TMPSENTENCE2
		select GIAOVIEN.MABM, BOMON.TENBM, GIAOVIEN.LUONG from GIAOVIEN left join BOMON ON GIAOVIEN.MABM = BOMON.MABM 
else
    insert into #TMPSENTENCE2
		select GIAOVIEN.MABM, BOMON.TENBM, GIAOVIEN.LUONG from GIAOVIEN left join BOMON ON GIAOVIEN.MABM = BOMON.MABM WHERE GIAOVIEN.MABM = @MABM

select CASE WHEN MABM IS NULL THEN N'KHÔNG XÁC ĐỊNH'ELSE MABM END as MABM, CASE WHEN MAX(TENBM) IS NULL THEN N'KHÔNG XÁC ĐỊNH' ELSE MAX(TENBM) END AS TENBM, 
SUM(LUONG) AS TONGLUONG from #TMPSENTENCE2 GROUP BY MABM

EXEC BaoCaoLuong  'HL'


alter procedure LayThongTin @tenbang nvarchar(10) as 
declare @sql nvarchar(4000)
select @sql = 'select * from ' + @tenbang + ' order by magv'
print (@sql)
EXEC (@sql)

exec LayThongTin @tenbang = N'GIAOVIEN'
select * from GIAOVIEN
select * from BOMON

-- Câu 1: Viết store nhận vào 2 input: 1/ Phái, Năm sinh. Trả về tất cả giáo viên có phái trùng với input và năm sinh > input 
--(Viết theo kiểu dynamic)

alter procedure LayThongTinGiaoVien @Phai nvarchar(30), @Namsinh nchar(10) as
declare @sql nvarchar(4000)
select @sql = 'select * from GIAOVIEN where Phai = N'''+ @Phai + ''' and' +' year(NGSINH)> '+@Namsinh
print @sql

exec LayThongTinGiaoVien @Phai = N'Nữ', @Namsinh = 1960

select * from GIAOVIEN where Phai = Nữ and year(NGSINH)> 1960   

-- Bước 1: Xác định input
-- Bước 2: khởi tạo biến
-- Bước 3: Tạo bảng cấu trúc
-- Bước 4: Lấy dữ liệu thô dưới dạng Static
-- Bước 5: Chuyển câu query từ Static thành Dynamic 
-- Bước 6: Exec(@sql)



-- Một số lưu ý khi viết store dạng Dynamic
-- 1/ Đảm bảo tất cả phần tử đều là kiểu dữ liệu kí tự.
-- 2/ Những biến giá trị truyền vào chuỗi phải khác null. Vì khi 1 chuỗi nối với giá trị null thì sẽ về null --> chuỗi null.
-- 3/ Kiểm tra dấu nháy đủ hay chưa.

--BTVN: Viết store trả về, số lượng đề tài ứng với mỗi giáo viên. Trả về thông tin gồm MAGV, họ tên giáo viên, số lượng đề tài và cho biết bộ môn giáo viên phụ trách. 
-- Viết store dưới 2 dạng static và dynamic 
-- Nhập vào 2 input đầu vào gồm: mã bộ môn và số lượng đề tài 



--Câu 2: Viết store nhận vào 3 giá trị đầu vào: tên bảng, cột, giá trị. Sao cho khi truyền dữ liệu vào thì lấy theo cú pháp sau 
--select * from tenbang where cột điều kiện = giá trị 

create procedure Cau2 @tenbang nvarchar(30), @cot nvarchar(30), @giatri nvarchar(30) as 
declare @sql nvarchar(4000)

--BTVN: Viết store trả về, số lượng đề tài ứng với mỗi giáo viên. Trả về thông tin gồm MAGV, họ tên giáo viên, số lượng đề tài và cho biết bộ môn giáo viên phụ trách. 
-- Viết store dưới 2 dạng static và dynamic 
-- Nhập vào 2 input đầu vào gồm: mã bộ môn và số lượng đề tài 




alter procedure BTVN_STATIC @SLĐT int, @MABM nchar(4) as
begin
	select top 0 A.MAGV, A.HOTEN, B.GVCNDT, C.MABM into #tmpSoLuongDeTai from GIAOVIEN A , DETAI B , BOMON C

	insert into #tmpSoLuongDeTai
		select GIAOVIEN.MAGV, GIAOVIEN.HOTEN, DETAI.GVCNDT, BOMON.MABM from GIAOVIEN  join DETAI ON GIAOVIEN.MAGV = DETAI.GVCNDT 
		join BOMON ON GIAOVIEN.MABM = BOMON.MABM


	select MAGV, max(HOTEN) as HOTEN, count(GVCNDT) as SLĐT, max(MABM) as MABM into #tmptable from #tmpSoLuongDeTai group by MAGV


	select * from #tmptable where SLĐT >= @SLĐT and MABM = @MABM

end

exec BTVN_STATIC @SLĐT = 2, @MABM = N'HPT'

--BTVN DYNAMIC

alter procedure BTVN_DYNAMIC @SLĐT nchar(10), @MABM nchar(10) as
begin 
	declare @sql nvarchar(4000), @sql2 nvarchar(4000), @sql3 nvarchar(4000)
	select top 0 A.MAGV, A.HOTEN, B.GVCNDT, C.MABM into #tmpSoLuongDeTai from GIAOVIEN A , DETAI B , BOMON C
	select @sql = 'insert into #tmpSoLuongDeTai
					select GIAOVIEN.MAGV, GIAOVIEN.HOTEN, DETAI.GVCNDT, BOMON.MABM from GIAOVIEN  join DETAI ON GIAOVIEN.MAGV = DETAI.GVCNDT 
					join BOMON ON GIAOVIEN.MABM = BOMON.MABM'
    exec(@sql)
	select top 0* into #tmptable from #tmpSoLuongDeTai
	select @sql2 = 'insert into #tmptable
	                 select MAGV, max(HOTEN) as HOTEN, count(GVCNDT) as SLĐT, max(MABM) as MABM from #tmpSoLuongDeTai 
					 group by MAGV'
	exec(@sql2)
	select @sql3 = 'select * from #tmptable where GVCNDT >='+  ltrim(rtrim(isnull(@SLĐT,'''''')))  +' and MABM = N'''+ ltrim(rtrim(isnull(@MABM, '')))+''''
	--print @sql3
	exec(@sql3)

end
EXEC BTVN_DYNAMIC  1, N'HL'




ALTER PROCEDURE ThongTinDeTai_dynamic
 
AS
   BEGIN
	Declare @sql nvarchar(4000)
	
    select top 0 MADT, SOTT, TENCV, cast('' AS CHAR(1)) AS _col into #tmpCongviec from Congviec

    -- Static 
    
    --INSERT INTO #tmpCongviec
        --SELECT MADT, SOTT, TENCV, CASE WHEN MADT like '%1' THEN 'A' WHEN MADT like '%2' THEN 'B' ELSE 'C' END  FROM Congviec

    -- Dynamic
    select @sql = 'INSERT INTO #tmpCongviec
        SELECT MADT, SOTT, TENCV, CASE WHEN ltrim(rtrim(MADT)) like ''%1'' THEN ''A'' WHEN ltrim(rtrim(MADT)) like ''%2'' THEN ''C'' ELSE ''D'' END  FROM Congviec
		union 
		SELECT MADT, SOTT, TENCV, CASE WHEN ltrim(rtrim(MADT)) like ''%1'' THEN ''B'' WHEN ltrim(rtrim(MADT)) like ''%2'' THEN ''C'' ELSE ''D'' END  FROM Congviec'
		
    --print (@sql)
    exec (@sql)
	select * from #tmpCongviec
   END

exec ThongTinDeTai_dynamic

alter procedure ThongTin
    @tenBang varchar(8),
    @dieukien varchar(32)
AS
   BEGIN
	
    DECLARE @sql NVARCHAR(4000)

    SELECT top 0 cast('' as varchar(32)) as tenbang, cast('' as varchar(32)) as dieukien INTO #tmp5
	insert into #tmp5
		select 'giaovien', 'magv = ''' +  @dieukien ''''
	select * from #tmp5
    select @sql = 'select * from ' + tenbang + ' where ' + dieukien + '''' from #tmp5 where tenbang = @tenbang
    exec( @sql)
   END

exec ThongTin 'giaovien' ,'001'




alter procedure Informationn
	@tenbang varchar(8),
	@dieukien varchar(32)
as
	begin
	declare @sql nvarchar(4000)
	select top 0 cast ('' as varchar(32)) as tenbang, cast('' as varchar(32)) as dieukien into #tmp2
	insert into #tmp2
		select 'giaovien', 'magv = ''' + @dieukien + ''''
	insert into #tmp
		select 'detai', 'madt = ''' + @dieukien + ''''
	select * from #tmp2

	select @sql = 'select * from ' + tenbang + ' where ' + dieukien + ''from #tmp where tenbang = @tenbang
	print @sql
	exec (@sql)
end

exec Informationn 'detai', '001'

select * from GIAOVIEN where MAGV = '001'
select * from giaovien where magv = '001'


---Function 

CREATE FUNCTION LayNhanVienTheoPhongBan (
	@ma char(3)
)
RETURNS TABLE
AS
RETURN 
(
	select * from GIAOVIEN where MAGV = @ma
)
select * from LayNhanVienTheoPhongBan('001')






select top 0 cast('' as nvarchar(32)) as ten, cast ('' as nvarchar(32)) as ten2 into #tmp 
insert into #tmp select 'Mr.An', ''
insert into #tmp select 'Mrs.An', ''
insert into #tmp select 'Dr.An', ''

update #tmp set ten2 = case when CHARINDEX('Mr.', ten) > 0  then REPLACE(ten, 'Mr.', '') else '' end


select CHARINDEX('Mr.', ten), * from #tmp
select * from #tmp

alter function DoiTen1 (@ten nvarchar(32))
returns nvarchar(32)
begin
	declare @ten2 nvarchar(32)
	set @ten2 = case when CHARINDEX('Mr.', @ten) = 1  then REPLACE(@ten, 'Mr.', '') 
	when CHARINDEX ('Mrs.', @ten) = 1 then REPLACE(@ten, 'Mrs.', '') 
	when CHARINDEX ('Dr.', @ten) = 1 then REPLACE(@ten, 'Dr.', '')
	end
	return @ten2
end	

update #tmp set ten2 = dbo.DoiTen1(ten)




select top 0 cast('' as nvarchar(32)) as ten3, cast ('' as nvarchar(32)) as ten4 into #tmp1 
insert into #tmp1 
values
('Mr.Huongmr', ''),
('Mrs.Ngoanmrs', ''),
('Dr.ThienDr', '')
select * from #tmp1
alter function Rename (@ten nvarchar(32)) 
returns nvarchar(32)
begin
	declare @ten4 nvarchar(32)
	set @ten4 = case when CHARINDEX('Mr.', ltrim(rtrim(@ten))) = 1 then SUBSTRING(@ten, 4, len(@ten))
				when CHARINDEX('Mrs.', ltrim(rtrim(@ten))) = 1 then SUBSTRING(@ten, 5, len(@ten)) 
				when CHARINDEX('Dr.', ltrim(rtrim(@ten))) = 1 then SUBSTRING(@ten, 4, len(@ten)) end
	return @ten4 
end

select dbo.Rename('Mr.Hoangmr')
update #tmp1 set ten4 = dbo.Rename(ten3)

