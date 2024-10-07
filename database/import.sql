--------------------------------------------------------
--  File created - Monday-October-07-2024   
--------------------------------------------------------
DROP TABLE CHITIETTOATHUOC;
DROP TABLE THUOC;
DROP TABLE TOATHUOC;
DROP TABLE CHITIETCHANDOAN;
DROP TABLE BENH;
DROP TABLE PHIEUKHAM;
DROP TABLE PHIEUDANGKY;
DROP TABLE NHANVIEN;
DROP TABLE BENHNHAN;
DROP TABLE LICHLAMVIEC;
DROP TABLE PHONG;
DROP TABLE HOCVIBACSI;
DROP TABLE HOCVI;
DROP TABLE BACSI;
DROP TABLE CHUYENKHOA;
DROP TABLE PHANQUYENTAIKHOAN;
DROP TABLE QUYEN;
DROP TABLE TAIKHOAN;
--------------------------------------------------------
--  DDL for Table BACSI
--------------------------------------------------------

  CREATE TABLE "BACSI" 
   (	"MABACSI" VARCHAR2(10 BYTE), 
	"HOTEN" NVARCHAR2(30), 
	"GIOITINH" NVARCHAR2(3), 
	"HOCHAM" NVARCHAR2(30), 
	"ANHDAIDIEN" VARCHAR2(20 BYTE), 
	"GIOITHIEU" NCLOB, 
	"MACHUYENKHOA" VARCHAR2(10 BYTE), 
	"TRANGTHAI" NVARCHAR2(20), 
	"NGAYCAPNHAT" DATE, 
	"TAIKHOAN" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("GIOITHIEU") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table BENH
--------------------------------------------------------

  CREATE TABLE "BENH" 
   (	"MABENH" VARCHAR2(10 BYTE), 
	"TENBENH" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BENHNHAN
--------------------------------------------------------

  CREATE TABLE "BENHNHAN" 
   (	"MABENHNHAN" VARCHAR2(10 BYTE), 
	"HOTEN" NVARCHAR2(30), 
	"GIOITINH" NVARCHAR2(3), 
	"DIACHI" NVARCHAR2(100), 
	"NAMSINH" NUMBER, 
	"TAIKHOAN" VARCHAR2(20 BYTE), 
	"DIENTHOAI" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHITIETCHANDOAN
--------------------------------------------------------

  CREATE TABLE "CHITIETCHANDOAN" 
   (	"MAPHIEUKHAM" VARCHAR2(10 BYTE), 
	"MABENH" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHITIETTOATHUOC
--------------------------------------------------------

  CREATE TABLE "CHITIETTOATHUOC" 
   (	"MATOATHUOC" VARCHAR2(10 BYTE), 
	"MATHUOC" VARCHAR2(10 BYTE), 
	"DONGIA" NUMBER, 
	"SOLUONG" NUMBER, 
	"GHICHU" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CHUYENKHOA
--------------------------------------------------------

  CREATE TABLE "CHUYENKHOA" 
   (	"MACHUYENKHOA" VARCHAR2(10 BYTE), 
	"TENCHUYENKHOA" NVARCHAR2(30), 
	"HINHANH" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOCVI
--------------------------------------------------------

  CREATE TABLE "HOCVI" 
   (	"MAHOCVI" VARCHAR2(10 BYTE), 
	"TENHOCVI" NVARCHAR2(30), 
	"BACHOCVI" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOCVIBACSI
--------------------------------------------------------

  CREATE TABLE "HOCVIBACSI" 
   (	"MABACSI" VARCHAR2(10 BYTE), 
	"MAHOCVI" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LICHLAMVIEC
--------------------------------------------------------

  CREATE TABLE "LICHLAMVIEC" 
   (	"MALICH" VARCHAR2(10 BYTE), 
	"MABACSI" VARCHAR2(10 BYTE), 
	"MAPHONG" VARCHAR2(10 BYTE), 
	"NGAYLAM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NHANVIEN
--------------------------------------------------------

  CREATE TABLE "NHANVIEN" 
   (	"MANHANVIEN" VARCHAR2(10 BYTE), 
	"HOTEN" NVARCHAR2(30), 
	"BOPHAN" NVARCHAR2(30), 
	"TAIKHOAN" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHANQUYENTAIKHOAN
--------------------------------------------------------

  CREATE TABLE "PHANQUYENTAIKHOAN" 
   (	"TENTAIKHOAN" VARCHAR2(20 BYTE), 
	"MAQUYEN" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHIEUDANGKY
--------------------------------------------------------

  CREATE TABLE "PHIEUDANGKY" 
   (	"MAPHIEUDANGKY" VARCHAR2(10 BYTE), 
	"NGAYLAP" DATE, 
	"MABHYT" VARCHAR2(20 BYTE), 
	"TRANGTHAITHANHTOAN" NVARCHAR2(20), 
	"MABENHNHAN" VARCHAR2(10 BYTE), 
	"NVLAP" VARCHAR2(10 BYTE), 
	"NVTHANHTOAN" VARCHAR2(10 BYTE), 
	"LICHLAMVIEC" VARCHAR2(10 BYTE), 
	"TINHTRANGSUCKHOE" NVARCHAR2(100), 
	"STTTIEPNHAN" NUMBER, 
	"STTKHAM" NUMBER, 
	"HINHTHUCDANGKY" NVARCHAR2(40)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHIEUKHAM
--------------------------------------------------------

  CREATE TABLE "PHIEUKHAM" 
   (	"MAPHIEUKHAM" VARCHAR2(10 BYTE), 
	"NGAYLAP" DATE, 
	"LOIDAN" NVARCHAR2(100), 
	"MAPHIEUDANGKY" VARCHAR2(10 BYTE), 
	"CANNANG" NUMBER, 
	"CHIEUCAO" NUMBER, 
	"HUYETAPTAMTHU" NUMBER, 
	"HUYETAPTAMTRUONG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHONG
--------------------------------------------------------

  CREATE TABLE "PHONG" 
   (	"MAPHONG" VARCHAR2(10 BYTE), 
	"TENPHONG" NVARCHAR2(70), 
	"VITRI" NVARCHAR2(40)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QUYEN
--------------------------------------------------------

  CREATE TABLE "QUYEN" 
   (	"MAQUYEN" VARCHAR2(10 BYTE), 
	"QUYEN" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TAIKHOAN
--------------------------------------------------------

  CREATE TABLE "TAIKHOAN" 
   (	"TENTAIKHOAN" VARCHAR2(20 BYTE), 
	"MATKHAU" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table THUOC
--------------------------------------------------------

  CREATE TABLE "THUOC" 
   (	"MATHUOC" VARCHAR2(10 BYTE), 
	"TENTHUOC" NVARCHAR2(50), 
	"QCDONGGOI" NVARCHAR2(30), 
	"DONVITINH" NVARCHAR2(10), 
	"DONGIA" NUMBER, 
	"TONKHO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TOATHUOC
--------------------------------------------------------

  CREATE TABLE "TOATHUOC" 
   (	"MATOATHUOC" VARCHAR2(10 BYTE), 
	"MAPHIEUKHAM" VARCHAR2(10 BYTE), 
	"TRANGTHAITHANHTOAN" NVARCHAR2(20), 
	"TONGTIEN" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into BACSI
SET DEFINE OFF;

INSERT INTO BACSI VALUES ('BS0001', N'Triệu Triều Dương', N'Nam', N'Phó giáo sư', 'BS0001.png' , TO_NCLOB('TTƯT.PGS.TS Triệu Triều Dương là chuyên gia hàng đầu ngành phẫu thuật tiêu hóa: phẫu thuật thực quản, dạ dày, ruột, gan mật tụy, đại trực tràng, hậu môn, sàn chậu…. \nSau khi tốt nghiệp bác sĩ đa khoa tại Học viện Quân Y năm 1985, bác sĩ Triều Dương tiếp tục tham gia các khóa đào tạo sau đại học tại Học viện Quân Y (1989), nghiên cứu sinh năm 1996 và đào tạo chuyên sâu về Phẫu thuật nội soi tại Bệnh viện Việt Đức (1992), tại Thái Lan (1996), tại Hàn Quốc, Pháp (2004), tại Singapore (2007); Đào tạo phẫu thuật lạnh tại Ucraina (2007) và Đào tạo ghép gan – tụy tại Hàn Quốc (2017)…\nPGS Dương thường xuyên tham dự các hội nghị hội thảo, tập huấn ngắn hạn trong nước và quốc tế về phẫu thuật ung thư đường tiêu hóa, phẫu thuật nội soi nâng cao. PGS Triệu Triều Dương có gần 40 năm kinh nghiệm trong lĩnh vực nội soi và phẫu thuật ổ bụng. “Bàn tay vàng” của ông đã giúp hàng nghìn người cải thiện sức khỏe và chất lượng sống. Với những cống hiến to lớn cho nền y học nước nhà, PGS.TS.BSCC Triệu Triều Dương nhận được nhiều Bằng khen của Thủ tướng Chính phủ, Bộ trưởng Bộ Y tế, Bộ trưởng Bộ Quốc phòng, đạt danh hiệu Chiến sĩ thi đua cấp Bộ, cấp viện nhiều năm liên tục, Bằng khen tuổi trẻ sáng tạo thủ đô, Kỷ niệm chương “Vì sự nghiệp Khoa học và Công nghệ”… \nĐặc biệt, TTƯT.PGS.TS Triệu Triều Dương vinh dự được Chủ tịch nước tặng Huân chương chiến công hạng Nhất (2004), Huân chương Quân kỳ quyết thắng (2014), Huân chương bảo vệ tổ quốc hạng Nhì (2022), Thầy thuốc ưu tú (2007). Trong suốt chặng đường sự nghiệp vinh quang của mình, PGS Triệu Triều Dương giữ nhiều chức vụ quan trọng: Chủ nhiệm khoa Ngoại nhân dân (2000), Chủ nhiệm khoa Ngoại Tổng hợp (B15) (2003), Viện trưởng Viện phẫu thuật tiêu hóa kiêm chủ nhiệm khoa gan mật tụy (2016), chủ nhiệm khoa phẫu thuật hậu môn trực tràng và sàn chậu (B3C). Phó chủ bộ môn Ngoại tiêu hóa, Giảng viên bộ môn Ngoại tiêu hóa, Chuyên viên Kỹ thuật Cục Quân Y – chuyên ngành Phẫu thuật Tiêu hóa, Bệnh viện Trung ương Quân đội 108…\nHiện nay, với vai trò là Giám đốc khối Ngoại, TTƯT.PGS.TS Triệu Triều Dương tiếp tục cùng đội ngũ chuyên gia hàng đầu tại Bệnh viện Đa khoa Tâm Anh Hà Nội góp phần mang đến chất lượng thăm khám và điều trị hiệu quả cho người bệnh.'), 'CK0001', N'Đang công tác', NULL , 'ttd1');
INSERT INTO BACSI VALUES ('BS0002', N'Trần Văn Hinh', N'Nam', N'Phó giáo sư', 'BS0002.png' , TO_NCLOB('PGS.TS.BS.CKII Trần Văn Hinh được biết đến là một trong những chuyên gia hàng đầu trong lĩnh vực tiết niệu và ghép thận tại Việt Nam. Với hơn 30 năm kinh nghiệm trong ngành Y, PGS Hinh cập nhật và làm chủ các kỹ thuật cao trong điều trị. Ông đã thực hiện thành công trên 1000 trường hợp với các kỹ thuật: ghép thận, tán sỏi thận qua da, tán sỏi niệu quản ngược dòng, nội soi cắt u tuyến tiền liệt, nội soi ổ bụng cắt thận và cắt u tuyến thượng thận…\nSau khi tốt nghiệp Bác sĩ Nội trú Ngoại khoa tại Học viện Quân Y, bác sĩ Trần Văn Hinh tham gia nghiên cứu sinh tiến sĩ Ngoại khoa. Ông tiếp tục con đường nâng cao năng lực chuyên môn, cập nhật các kỹ thuật cao trong điều trị cho người bệnh như kỹ thuật tán sỏi qua da, nội soi lưỡng cực, các tiến bộ trong chẩn đoán và điều trị bệnh lý Nam khoa tại các cơ sở y học lớn trong nước và quốc tế như: Mayo Clinic (Hoa Kỳ), Trung tâm đào tạo phẫu thuật nội soi IRCAD (Đài Loan), Lisbon (Bồ Đào Nha), trường Đại học Y Hà Nội…\nBên cạnh công tác thăm khám điều trị cho người bệnh, PGS Trần Văn Hinh dành thời gian và tâm huyết thực hiện nhiều nghiên cứu khoa học như: một số yếu tố nguy cơ và ứng dụng kỹ thuật cao trong điều trị bệnh sỏi tiết niệu, ứng dụng kỹ thuật cắt lưỡng cực, bốc hơi tổ chức và laser điều trị bệnh u lành tuyến tiền liệt, ung thư bàng quang. Ngoài ra, ông còn xuất bản nhiều đầu sách, giáo trình trong lĩnh vực tiết niệu thận học như Bệnh sỏi đường tiết niệu, Nhiễm khuẩn niệu, Chẩn đoán và điều trị bệnh sỏi đường tiết niệu, Triệu chứng bệnh học ngoại tiết niệu…\nVới những nỗ lực không ngừng nghỉ trong sự nghiệp chữa bệnh cứu người của mình, PGS.TS.BS.CKII Trần Văn Hinh vinh dự nhận được nhiều Bằng khen của Thủ tướng Chính phủ, Bộ Quốc phòng, Bộ Y tế, Trung ương Đoàn, UBND tỉnh…\nHiện nay, PGS.TS.BS.CKII Trần Văn Hinh với vai trò là Trưởng khoa Tiết niệu – Nam học, Bệnh viện Đa khoa Tâm Anh Hà Nội, đồng thời là Phó Chủ tịch kiêm Tổng Thư ký Hội Tiết niệu – Thận học Việt Nam, luôn dành thời gian và tâm sức giúp người bệnh khỏe mạnh, nâng cao chất lượng sống nhờ phát hiện chính xác và điều trị bằng các kỹ thuật hiện đại, ít xâm lấn.'), 'CK0002', N'Đang công tác', NULL , 'tvh2');
INSERT INTO BACSI VALUES ('BS0003', N'Nguyễn Văn Nghĩa', N'Nam', N'Null', 'BS0003.png' , TO_NCLOB('Đam mê bộ môn sinh học và nghiên cứu cấu tạo cơ thể người từ lúc nhỏ, cùng tấm lòng thích giúp đỡ mọi người, chàng thanh niên Nguyễn Văn Nghĩa khi ấy ấp ủ ước mơ theo đuổi sự nghiệp thầy thuốc chữa bệnh cứu người.\nƯớc mơ đã trở thành hiện thực khi Nguyễn Văn Nghĩa đậu trường Đại học Y Dược Cần Thơ. Những tháng ngày gắn bó với giảng đường đại học, sinh viên Nguyễn Văn Nghĩa miệt mài học tập, nghiên cứu, rèn luyện, trau dồi kiến thức và kỹ năng chuyên môn. Sau khi tốt nghiệp bác sĩ đa khoa năm 2020, bác sĩ Nghĩa học tiếp chương trình bác sĩ nội trú tại Đại học Y Dược Cần Thơ rồi xuất sắc nhận cùng lúc hai tấm bằng thạc sĩ y khoa và bác sĩ chuyên khoa I năm 2023.\nTrong quãng thời gian học tập, ThS.BS.CKI Nguyễn Văn Nghĩa có cơ hội tiếp xúc với nhiều chuyên khoa khác nhau. Nhờ đó, bác sĩ bén duyên với ngành Tiết niệu. Bác sĩ Nguyễn Văn Nghĩa chia sẻ: “Các bệnh tiết niệu thường phát triển âm thầm, khó phát hiện, nhiều người không có điều kiện tầm soát bệnh sớm nên bệnh dễ bị bỏ quên, đến khi phát hiện thì bệnh đã trở nặng, ảnh hưởng nghiêm trọng chất lượng cuộc sống”. Càng nghiên cứu, học tập và tiếp xúc với nhiều người bệnh, bác sĩ càng nhiệt huyết với lĩnh vực này.\nBên cạnh thế mạnh điều trị các bệnh niệu nữ và niệu học chức năng như bàng quang thần kinh, tiểu không tự chủ, các triệu chứng đường tiểu dưới, sa tạng chậu ở phụ nữ, bế tắc đường ra của bàng quang…; bác sĩ Nguyễn Văn Nghĩa còn thành thạo các kỹ thuật điều trị trị sỏi tiết niệu như tán sỏi ngoài cơ thể, tán sỏi nội soi…\nKhông chỉ đặt tâm huyết trong điều trị bệnh, bác sĩ Nguyễn Văn Nghĩa còn năng nổ trong công tác nghiên cứu khoa học. Chính nỗ lực này đã giúp bác sĩ vinh dự đạt giải thưởng Báo cáo viên triển vọng của Hội Y học giới tính Việt Nam năm 2023.\nHiện, bác sĩ Nguyễn Văn Nghĩa đang sát cánh cùng đội ngũ bác sĩ, chuyên gia tại Đơn vị Niệu Nữ, khoa Tiết niệu, Trung tâm Tiết niệu – Thận học – Nam khoa, Bệnh viện Đa khoa Tâm Anh TP.HCM, giúp người bệnh không chỉ vượt qua các vấn đề sức khỏe mà còn giúp họ cải thiện chất lượng cuộc sống.'), 'CK0003', N'Đang công tác', NULL , 'nvn3');
INSERT INTO BACSI VALUES ('BS0004', N'Tống Văn Khả', N'Nam', N'Null', 'BS0004.png' , TO_NCLOB('Dược sĩ Tống Văn Khải tốt nghiệp Dược sĩ tại Đại học Miền Đông. Vào năm 2017, Dược sĩ Tống Văn Khải tiếp tục hoàn thành khóa đào tạo chuyên sâu Định hướng chuyên khoa kiểm soát nhiễm khuẩn tại Đại học Y khoa Phạm Ngọc Thạch.\nVới sự nỗ lực, cống hiến không ngừng nghỉ trong lĩnh vực triển khai, quản lý, giám sát công tác kiểm soát nhiễm khuẩn bệnh viện, vào năm 2018, Dược sĩ Tống Văn Khải được Bộ trưởng Bộ Y tế tặng bằng khen vì có thành tích trong công tác kiểm soát nhiễm khuẩn.\nDược sĩ Tống Văn Khải từng đảm trách nhiều vai trò quan trọng như Phó Trưởng khoa Kiểm soát nhiễm khuẩn tại Bệnh viện Đa khoa Thống Nhất, Trưởng khoa Kiểm soát nhiễm khuẩn tại Bệnh viện Đa khoa Thống Nhất, đóng góp cho hoạt động kiểm soát nhiễm khuẩn noi chung tại bệnh viện.'), 'CK0004', N'Đang công tác', NULL , NULL);
INSERT INTO BACSI VALUES ('BS0005', N'Đỗ Thanh Thư', N'Nữ', N'Null', 'BS0005.png' , TO_NCLOB('Với mong muốn được giúp đỡ, chăm sóc sức khỏe cho nhiều người, bác sĩ Đỗ Thanh Thư chọn ngành Y để theo đuổi và phát triển sự nghiệp. Bác sĩ Thanh Thư luôn tâm niệm: “Chữa trị cho người bệnh như chính người nhà của mình”.\nTốt nghiệp ngành Bác sĩ Đa khoa Trường Đại học Y khoa Phạm Ngọc Thạch, bác sĩ Thanh Thư tiếp tục theo học bác sĩ nội trú chuyên ngành Tai Mũi Họng tại chính ngôi trường này. Trong quá trình học bác sĩ nội trú, bác sĩ Thanh Thư có nhiều cơ hội thực hành và học hỏi kinh nghiệm tại các bệnh viện lớn như: Bệnh viện Tai Mũi Họng TP.HCM, Bệnh viện Thống Nhất, Bệnh viện Nhi Đồng 1, Bệnh viện Nhân Dân Gia Định.Suốt thời gian học tập và làm việc, bác sĩ Thanh Thư luôn tìm tòi, học hỏi để phát triển chuyên môn, cập nhật nhiều kiến thức mới; tham gia các khóa học đào tạo chuyên sâu về tai mũi họng, tham gia hỗ trợ giảng dạy kỹ năng thực hành lâm sàng tai mũi họng cho sinh viên y trường Đại học Y khoa Phạm Ngọc Thạch.\nBác sĩ Thanh Thư từng có kinh nghiệm làm việc với vai trò bác sĩ điều trị tai mũi họng tại Bệnh viện Nhân Dân 115. Từ tháng 04.2024, bác sĩ Thanh Thư công tác tại Bệnh viện Đa khoa Tâm Anh TP.HCM với vai trò bác sĩ điều trị tai mũi họng.'), 'CK0005', N'Đang công tác', NULL , 'dtt5');
INSERT INTO BACSI VALUES ('BS0006', N'Huỳnh Thị Thanh Trang', N'Nữ', N'Null', 'BS0006.png' , TO_NCLOB('Năm 1993, THS.BS.CKII Huỳnh Thị Thanh Trang tốt nghiệp Bác sĩ đa khoa tại Đại học Y dược TP.HCM. Sau đó, Bác sĩ Thanh Trang tiếp tục hoàn thành văn bằng Thạc sĩ Y học chuyên ngành Huyết học tại Đại học Y dược TP.HCM vào năm 2002 và tốt nghiệp Bác sĩ chuyên khoa II chuyên ngành Quản lý y tế tại Đại học Y dược Cần Thơ, vào năm 2013.\nTrong suốt quá trình công tác. với tinh thần không ngừng nâng cao trình độ chuyên môn, Thạc sĩ, Bác sĩ Chuyên khoa 2 Thanh Trang tiếp tục tham gia nhiều khóa đào tạo chuyên ngành như: Hướng dẫn triển khai hoạt động An toàn người bệnh tại bệnh viện, Tổng quan về Quản lý chất lượng bệnh viện, Đánh giá viên đánh giá chất lượng bệnh viện, Kiểm soát nhiễm khuẩn cơ bản…\nSau hơn 30 năm công tác, ThS.BS.CKII Huỳnh Thị Thanh Trang đã nhận được nhiều bằng khen, danh hiệu uy tín như Danh hiệu Thầy Thuốc Ưu Tú vào năm 2014, Bằng khen do Ủy ban Nhân dân TP.HCM trao tặng vào các năm 2012, 2014, 2016, 2018, 2020, đạt giải 2 Hội thi Sáng tạo kỹ thuật TP.HCM năm 2019. Bên cạnh đó, ThS.BS.CKII Thanh Trang còn có nhiều công trình nghiên cứu, khảo sát, bài báo được đăng trên các tạp chí, tập san Y học.'), 'CK0006', N'Đang công tác', NULL , 'httt6');
INSERT INTO BACSI VALUES ('BS0007', N'Trần Kim Oanh', N'Nữ ', N'Null', 'BS0007.png' , TO_NCLOB('Tốt nghiệp trường Đại học Y Hà Nội, bác sĩ Trần Kim Oanh nguyên là Trưởng khoa Tim mạch và Rối loạn chuyển hóa bệnh viện Nội tiết Trung Ương. Với trên 30 năm kinh nghiệm khám chữa bệnh, bác sĩ Oanh được coi là chuyên gia trong chuyên ngành Nội tiết – Đái tháo đường, chuyên điều trị các bệnh về tim mạch liên quan đến Rối loạn chuyển hóa. \nSong song với công tác khám chữa bệnh, Bác sĩ Oanh còn tham gia vào công tác đào tạo khi nhận nhiệm vụ giảng dạy đại học và sau đại học tại bệnh viện Nội tiết Trung ương. Bác sĩ Trần Kim Oanh từng tham gia đề tài Nghiên cứu khoa học cấp nhà nước đề tài KC10 và chủ nhiệm đề tài cấp cơ sở. Bác sĩ Trần Kim Oanh đã 2 lần vinh dự nhận bằng khen của Bộ trưởng bộ Y Tế và là chiến sĩ thi đua cấp cơ sở. Hiện tại BSCKII Trần Kim Oanh là bác sĩ khoa Nội tiết – Đái tháo đường Bệnh viện đa khoa Tâm Anh Hà Nội. '), 'CK0007', N'Đang công tác', NULL , 'tko7');
INSERT INTO BACSI VALUES ('BS0008', N'Trần Đức Minh', N'Nam', N'Null', 'BS0008.png' , TO_NCLOB('ThS.BS Trần Đức Minh là một bác sĩ đã có nhiều năm kinh nghiệm trong nghề với chuyên môn về khám, điều trị và can thiệp các bệnh lý Tim mạch.\nThS.BS Trần Đức Minh không ngừng học hỏi và áp dụng những kỹ thuật, phương pháp trị liệu mới giúp cho bệnh nhân bảo vệ sức khỏe của mình trước những nguy hiểm của bệnh tim mạch. Không chỉ là bác sĩ giỏi chuyên môn, đam mê sáng tạo và có tinh thần trách nhiệm, bác sĩ Minh còn tích cực tham gia công tác tư vấn khám chữa cho bệnh nhân. \nBác sĩ Minh hiện được rất nhiều bệnh nhân và đồng nghiệp tin tưởng. Hiện tại Bác sĩ Minh đang công tác tại Khoa Tim mạch, Bệnh viện Đa khoa Tâm Anh Hà Nội.'), 'CK0008', N'Đang công tác', NULL , 'tdm8');
INSERT INTO BACSI VALUES ('BS0009', N'Võ Thị Tường Duy', N'Nữ', N'Null', 'BS0009.png' , TO_NCLOB('“Giúp bệnh nhân khỏi bệnh, lấy lại sự tự tin về ngoại hình, cải thiện chất lượng sống luôn là mục tiêu tôi hướng tới”, bác sĩ CKI Võ Thị Tường Duy chia sẻ về điều bản thân tâm huyết nhất trong cuộc đời làm nghề y.\nTừ lý tưởng đi đến hành động\nSinh ra trong gia đình có truyền thống hành nghề Y – Dược, chị đã ý thức được “làm thầy thuốc để cứu người”. Từ nhỏ, bác sĩ Võ Thị Tường Duy sớm nuôi ước mơ trở thành thầy thuốc, tự nhủ bản thân cố gắng học giỏi để theo đuổi ngành Y. Mọi nỗ lực được đền đáp khi chị trúng tuyển vào ngành Y đa khoa – Đại học Y Dược TPHCM và tốt nghiệp vào năm 2016.\nNgay từ lúc ngồi trên ghế giảng đường, bác sĩ Duy được tiếp cận chuyên ngành Da liễu. Trong quá trình thực hành lâm sàng, bác sĩ gặp nhiều trường hợp mắc các bệnh mạn tính về da: vảy nến, lupus, bạch biến… Người mắc những bệnh này chịu những nỗi đau cả thể xác lẫn tinh thần, luôn co cụm, tự ti, hạn chế tiếp xúc với những người xung quanh. Những hình ảnh đó cứ thôi thúc bác sĩ Duy quyết định học chuyên sâu về lĩnh vực Da liễu – Thẩm mỹ Da để giúp người bệnh nhiều hơn.\nTrong quá trình làm việc, gặp nhiều ca bệnh khó, bác sĩ Duy chưa bao giờ đầu hàng mà luôn kiên nhẫn với những thử thách, tận tâm trong công tác điều trị. Thậm chí, có những ca bệnh nhiều nơi không phát hiện ra nhưng chị đã giúp người bệnh hồi phục. Điển hình như trường hợp bệnh nhân nam mắc viêm gan siêu vi B có triệu chứng đau nhức các khớp trên toàn bộ tứ chi, 2 chi dưới xuất hiện nhiều vết ban đỏ. Người bệnh đã đi điều trị ở nhiều nơi, ghé đến hầu như tất cả các khoa về xương khớp, thần kinh tại TPHCM, tuy nhiên bệnh vẫn không được cải thiện. Người bệnh có cơ duyên khi đăng ký khám với bác sĩ Duy, chị nhận thấy đây là một ca hồng ban nút trên bệnh nhân viêm gan siêu vi B. Sau khi được điều chỉnh đơn thuốc, người bệnh nhanh chóng hồi phục sức khỏe.'), 'CK0009', N'Đang công tác', NULL , 'vttd9');
INSERT INTO BACSI VALUES ('BS0010', N'Cam Ngọc Phượng', N'Nữ', N'Null', 'BS0010.png' , TO_NCLOB('Với sự kỳ diệu của y học hiện đại, bằng tình yêu thương vô bờ bến và tâm huyết cống hiến với nghề, suốt hơn 30 qua, TS.BS Cam Ngọc Phượng không nhớ mình đã dốc sức chăm sóc, ôm ấp, vỗ về, yêu thương và trao tặng cuộc sống kỳ diệu cho bao nhiêu trẻ sinh non, trong đó có những thiên thần chào đời chỉ bằng một gang tay.\nMỗi ngày chứng kiến những thiên thần chưa đủ ngày, đủ tháng phải trải qua những ngày đầu tiên của cuộc đời trong lồng kính, từng phút đấu tranh chênh vênh giữa mong manh hai bờ sinh – tử, bác sĩ Ngọc Phượng luôn trăn trở, nghiên cứu và học tập với tâm niệm, làm thế nào để phát hiện và xử trí bệnh lý bẩm sinh sớm nhất, áp dụng phương pháp chăm sóc và điều trị tối ưu nhất để các em sớm trở về bên vòng tay bố mẹ thật khỏe mạnh, thông minh.'), 'CK0001', N'Đang công tác', NULL , NULL);
INSERT INTO BACSI VALUES ('BS0011', N'Trần Ngọc Hứu', N'Nam', N'Phó giáo sư', 'BS0011.png' , TO_NCLOB('Phó Giáo sư, Tiến sĩ, Bác sĩ Trần Ngọc Hữu tốt nghiệp Bác sĩ Y khoa tại Trường Đại học Y Dược TP.HCM (1) từ năm 1979. Sau đó, PGS Ngọc Hữu hoàn thành chương trình đào tạo Thạc sĩ chuyên ngành Quản lý Chăm sóc sức khỏe ban đầu tại trường Đại học Mahidol, Thái Lan vào năm 1997, và chương trình đào tạo Tiến sĩ chuyên ngành Vệ sinh học Xã hội và Tổ chức Y tế tại Viện Vệ sinh Dịch tễ Trung ương vào năm 2002. Năm 2012, Tiến sĩ, Bác sĩ Ngọc Hữu chính thức được bổ nhiệm chức danh Phó Giáo sư.\nTrong suốt quá trình nghiên cứu và công tác từ năm 1979 đến hiện nay, PGS.TS.BS Trần Ngọc Hữu đã có nhiều đóng góp to lớn cho nền y học nước nhà, đặc biệt là lĩnh vực y tế dự phòng, vắc xin. Phó giáo sư Ngọc Hữu đã triển khai nhiều đề tài, công trình nghiên cứu khoa học trong và ngoài nước có giá trị. Các đề tài nghiên cứu khoa học điển hình như: “Nghiên cứu đặc điểm dịch tễ học, lâm sàng và vi rút học của Cúm A/H1N1 đại dịch 2009 đề xuất biện pháp phòng chống”, “Đánh giá tính an toàn của vắc xin AgrippalTM S1 phòng cúm trên người Việt Nam tình nguyện”, “Hiệu quả và an toàn của vắc xin mới ngừa sốt xuất huyết bốn týp trên trẻ em khỏe mạnh từ 2 đến 14 tuổi ở châu Á thực hiện tại Mỹ Tho và Long Xuyên”, “Đánh giá các liệu trình chủng ngừa các vắc xin phế cầu khác nhau trên trẻ em”….\nCác Công trình khoa học bao gồm: “Immunogenicity and reactogenicity of ten-valent versus 13-valent pneumococcal conjugate vaccines among infants in Ho Chi Minh City, Vietnam: a randomised controlled trial”, “Three Decades of Dengue Surveillance in Five Highly Endemic South East Asian Countries: A Descriptive Review”, “Efficacy and Long-Term Safety of a Dengue Vaccine in Regions of Endemic Disease” trên tạp chí The  New England Journal of medicine, “Clinical efficacy and safety of a novel tetravalent dengue vaccine in healthy children in Asia: a phase 3, randomised, observer-masked, placebo-controlled trial” trên tạp chí The Lancet…\nPhó Giáo sư, Tiến sĩ, Bác sĩ Trần Ngọc Hữu từng giữ nhiều vị trí quan trọng trong hơn 40 năm công tác như: Giám đốc Trung tâm Y tế Dự phòng tỉnh Long An; Giám đốc Bệnh viện Đa khoa tỉnh Long An; Giám đốc Sở Y tế Long An; Giám đốc Viện Pasteur TP.HCM; Phó Chủ tịch Hội Y học Dự phòng Việt Nam; Phó Chủ tịch Hội đồng Đạo đức trong Nghiên cứu Y sinh học Quốc gia.\nHiện nay, PGS.TS.BS Trần Ngọc Hữu đang giữ vai trò Quản lý Thử nghiệm lâm sàng Vắc xin tại Trung tâm Đào tạo và Nghiên cứu Khoa học, Bệnh viện Đa khoa Tâm Anh TP.HCM.'), 'CK0002', N'Đang công tác', NULL , 'tnh11');
INSERT INTO BACSI VALUES ('BS0012', N'Nguyễn Thị Liên Hương', N'Nữ', N'Null', 'BS0012.png' , TO_NCLOB('BS Nguyễn Thị Liên Hương đã có hơn 20 năm kinh nghiệm trong lĩnh vực Mô phôi học. Bên cạnh công tác chuyên môn, bác sĩ Liên Hương còn dành nhiều thời gian cho hoạt động nghiên cứu khoa học và đóng góp nhiều công trình nghiên cứu, bài báo khoa học trong lĩnh vực Mô phôi học. \nKhông chỉ là một bác sĩ tài năng với nhiều công trình nghiên cứu có giá trị, TS.BS Liên Hương còn là Giảng viên kiêm nhiệm bộ môn Mô – Công nghệ Phôi tại Đại học Y Hà Nội. Nhiều thế hệ bác sĩ ưu tú của ngành Mô phôi học Việt Nam đã được tiếp lửa yêu nghề và trưởng thành dưới sự hướng dẫn của TS.BS Nguyễn Thị Liên Hương.\nSau nhiều năm công tác tại Bệnh viện Phụ sản Trung ương, bác sĩ Liên Hương chính thức trở thành một thành viên của Trung tâm Hỗ trợ sinh sản, Bệnh viện Đa khoa Tâm Anh Hà Nội với vị trí Phó Giám đốc Trung tâm, phụ trách LAB IVF. “Là một đơn vị được đầu tư mạnh mẽ và toàn diện, đặc biệt hệ thống phòng LAB tại IVFTA sở hữu những thiết bị, công nghệ hiện đại nhất trong ngành hỗ trợ sinh sản. Đội ngũ chuyên viên LAB IVFTA đáp ứng được những tiêu chuẩn cao về trình độ chuyên môn và luôn giữ vững cái tâm với nghề, luôn nỗ lực chắt chiu cơ hội làm mẹ, làm cha cho những gia đình hiếm muộn.” – bác sĩ Liên Hương chia sẻ.'), 'CK0003', N'Đang công tác', NULL , 'ntlh12');
INSERT INTO BACSI VALUES ('BS0013', N'Trịnh Tuấn Dũng', N'Nam', N'Phó giáo sư', 'BS0013.png' , TO_NCLOB('Với kinh nghiệm hơn 30 năm trong ngành Giải phẫu bệnh, PGS.TS.BS Trịnh Tuấn Dũng hiện đang nắm giữ cương vị Giám đốc Trung tâm Giải phẫu bệnh và Tế bào của Bệnh viện Đa khoa Tâm Anh, Chủ tịch Hội Giải phẫu bệnh – Tế bào học Việt Nam. Ông là một chuyên gia hàng đầu về Giải phẫu bệnh và Tế bào học, không chỉ của Việt Nam mà ở tầm quốc tế, giàu kinh nghiệm trong việc đánh giá và đọc kết quả giải phẫu bệnh và tế bào học chuẩn xác, giúp chẩn đoán sớm các bệnh lý ung thư. \nTrong suốt quá trình công tác, PGS.TS.BS Trịnh Tuấn Dũng luôn tận tâm, say mê và dành nhiều thời gian, công sức đầu tư nghiên cứu những công trình khoa học mang giá trị ứng dụng cao. Tiêu biểu phải kể đến những đề tài từ cấp Bộ Quốc phòng, cấp Nhà nước tới cấp cơ sở, cùng 168 bài báo khoa học đã công bố, trong đó có 8 bài công bố ở nước ngoài và nhiều cuốn sách, giáo trình quan trọng về Giải phẫu bệnh khác.\nXuất thân từ Quân đội, được đào tạo và rèn luyện trong Quân đội hơn 40 năm, trước khi trở thành bác sĩ, Phó giáo sư Trịnh Tuấn Dũng đã có 3 năm làm chiến sĩ công tác tại Lữ đoàn Tăng thiết giáp 215. Hoàn thành nghĩa vụ quân sự, với mong muốn được góp phần đẩy lùi các bệnh hiểm nghèo, đặc biệt là bệnh ung thư, ông quyết tâm theo học ngành Giải phẫu bệnh mặc dù thời điểm đó số lượng bác sĩ theo học và công tác trong ngành này không nhiều. Ông thi đỗ vào Học viện Quân y và sau 6 năm miệt mài học tập, ông tốt nghiệp Bác sĩ loại ưu và được chọn về công tác tại Bệnh viện Trung ương Quân đội 108. \nTốt nghiệp Bác sĩ chuyên khoa sơ bộ, rồi chuyên khoa cấp I tại Đại học Y Hà Nội, nhưng với  PGS.TS.BS Trịnh Tuấn Dũng là chưa đủ. Càng học ông càng thấy kiến thức y khoa thật mênh mông rộng lớn. Với niềm đam mê cùng khát khao chữa bệnh cứu người, ông quyết tâm thi đỗ nghiên cứu sinh Tiến sĩ, và sau 5 năm miệt mài học tập, nghiên cứu, ông đã bảo vệ thành công luận án Tiến sĩ Y học được Hội đồng đánh giá xuất sắc. \nTrở về Bệnh viện Trung ương Quân đội 108 công tác, PGS.TS.BS Trịnh Tuấn Dũng được bổ nhiệm làm phó Khoa Giải phẫu bệnh (tháng 10/2000), rồi gần 7 năm sau đó (tháng 6/2007) ông được bổ nhiệm làm Trưởng khoa.'), 'CK0004', N'Đang công tác', NULL , 'ttd13');
INSERT INTO BACSI VALUES ('BS0014', N'Nguyễn Duy Trinh', N'Nam', N'Null', 'BS0014.png' , TO_NCLOB('Với kinh nghiệm trên 20 năm trong lĩnh vực chẩn đoán hình ảnh, đồng thời từng đảm nhận nhiều vị trí quan trọng tại bệnh viện tuyến đầu trên cả nước, TS.BS Nguyễn Duy Trinh đã chẩn đoán thành công nhiều ca bệnh khó, phức tạp, đặc biệt các bệnh lý đau cột sống, khớp vai, đau do thần kinh ngoại biên… trên các thiết bị máy móc hiện đại như: Siêu âm, Cắt lớp vi tính, cộng hưởng từ..\nSau những nỗ lực không ngừng nghỉ trong lĩnh vực Chẩn đoán hình ảnh, TS.BS Nguyễn Duy Trinh vinh dự được Bộ Y Tế trao tặng bằng khen Danh hiệu chiến sĩ thi đua cấp cơ sở. Bên cạnh đó, TS.BS Nguyễn Duy Trinh còn đóng góp các công trình nghiên cứu đề tài khoa học, sách chuyên ngành cùng các bài báo có giá trị thực tiễn.\nNgoài công tác khám chữa bệnh, TS Nguyễn Duy Trình còn tham gia giảng dạy, bồi dưỡng kiến thức cho các bác sĩ tại các tỉnh giúp đẩy mạnh và phát triển lĩnh vực chẩn đoán hình ảnh. TS Duy Trinh góp phần không nhỏ giúp các bác sĩ cập nhật kiến thức và sử dụng máy móc thiết bị một cách hiệu quả nhằm đưa ra những chẩn đoán chính xác và kịp thời, giúp người bệnh có thể rút ngắn thời gian điều trị.'), 'CK0005', N'Đang công tác', NULL , 'ndt14');
INSERT INTO BACSI VALUES ('BS0015', N'Trần Thị Thanh Trúc', N'Nữ', N'Null', 'BS0015.png' , TO_NCLOB('BS.CKII Trần Thị Thanh Trúc có gần 15 năm kinh nghiệm thực tiễn và đạt được nhiều thành tựu nhất định trong ngành y, đặc biệt là lĩnh vực nội tim mạch. Tốt nghiệp bác sĩ Y khoa tại Đại học Y Dược TP.HCM vào năm 2005 và tiếp tục hoàn thành văn bằng Thạc sĩ, bác sĩ Trần Thị Thanh Trúc đã không ngừng học hỏi, cập nhật những kiến thức mới và nâng cao nghiệp vụ để cung cấp dịch vụ thăm khám, chẩn đoán, điều trị và tư vấn sức khỏe toàn diện cho bệnh nhân. '), 'CK0006', N'Đang công tác', NULL , 'tttt15');
INSERT INTO BACSI VALUES ('BS0016', N'Huỳnh Văn Mười Một', N'Nam', N'Null', 'BS0016.png' , TO_NCLOB('Suốt hơn 20 năm học tập, nghiên cứu và công tác trong lĩnh vực y khoa, bác sĩ Huỳnh Văn Mười Một đã tích lũy được nhiều kinh nghiệm khi từng tiếp cận và giải quyết rất nhiều trường hợp cấp cứu Nội, Ngoại khoa, Nhi khoa… Sau khi tốt nghiệp Đại học Y Dược TP.HCM, Bác sĩ Mười Một tiếp tục theo học để lấy các chứng chỉ ngắn hạn, trong đó có chứng chỉ về Bệnh lý cơ xương khớp và Phục hồi chức năng – vốn rất hữu ích cho công việc chuyên môn của bác sĩ sau này.'), 'CK0007', N'Đang công tác', NULL , 'hvmm16');
INSERT INTO BACSI VALUES ('BS0017', N'Nguyễn Đức Hưng', N'Nam', N'Null', 'BS0017.png' , TO_NCLOB('Với 14 năm kinh nghiệm trong lĩnh vực khám và điều trị về các bệnh lý tim mạch, bác sĩ Nguyễn Đức Hưng là một trong những thầy thuốc luôn được bệnh nhân tin tưởng khi thăm khám và điều trị tại Khoa Tim mạch, Bệnh viện Đa khoa Tâm Anh, Hà Nội.\nTốt nghiệp Trường Đại học Y Hà Nội, bác sĩ Nguyễn Đức Hưng đã đăng ký tham gia các khóa đào tạo của các Viện Tim mạch trong và ngoài nước để trau dồi thêm kiến thức, kỹ năng chuyên môn nhằm mang lại những phác đồ điều trị tiên tiến đến với người bệnh trong quá trình khám chữa bệnh.\nBên cạnh sự tận tâm trong chăm sóc và điều trị cho bệnh nhân, bác sĩ Nguyễn Đức Hưng cũng rất tích cực tham gia các hoạt động nghiên cứu khoa học. Bác sĩ đã thực hiện những đề tài có tính giá trị thực tiễn cao và nhận được nhiều giải thưởng tại những cuộc thi nghiên cứu khoa học uy tín của ngành Y tế. '), 'CK0008', N'Đang công tác', NULL , 'ndh17');
INSERT INTO BACSI VALUES ('BS0018', N'Nguyễn Tân Cương', N'Nam', N'Null', 'BS0018.png' , TO_NCLOB('Với nhiều năm kinh nghiệm trong lĩnh vực Tiết Niệu – Nam khoa, Ths.Bs Nguyễn Tân Cương được đồng nghiệp đánh giá cao và đông đảo bệnh nhân hết lòng tin tưởng để gửi gắm những vấn đề “khó nói” của mình. Bản thân Ths.Bs Tân Cương cũng luôn nỗ lực trau dồi chuyên môn, cập nhật những kiến thức mới, tích cực tham gia các hiệp hội trong nước và quốc tế để có thể đưa ra phác đồ điều trị ưu việt cho từng bệnh nhân, giúp họ cải thiện chất lượng cuộc sống, tìm thấy niềm hạnh phúc lứa đôi.\nThs.Bs Tân Cương có nhiều năm công tác tại chuyên khoa Tiết Niệu – Nam học của các bệnh viện uy tín ở khu vực TP.HCM như Bệnh viện Đại học Y Dược TP.HCM và một số bệnh viện quốc tế khác. Hiện tại, Ths.Bs Tân Cương đang công tác tại Bệnh viện Đa khoa Tâm Anh TP.HCM với vai trò bác sĩ khoa Ngoại Tiết niệu.'), 'CK0009', N'Đang công tác', NULL , 'ntc18');
INSERT INTO BACSI VALUES ('BS0019', N'Nguyễn Ngọc Huỳnh', N'Nữ', N'Null', 'BS0019.png' , TO_NCLOB('Phòng LAB được ví như “trái tim” của một trung tâm Hỗ trợ sinh sản bởi đó chính là nơi thực hiện các kỹ thuật vô cùng phức tạp trong thụ tinh nhân tạo, thụ tinh ống nghiệm IVF. Với nhiều năm kinh nghiệm, Thạc sĩ Nguyễn Ngọc Quỳnh đã làm chủ nhiều kỹ thuật hiện đại, tăng khả năng có con của các cặp vợ chồng vô sinh hiếm muộn đã tăng lên gấp nhiều lần. Thạc sĩ Nguyễn Ngọc Quỳnh luôn làm việc với tâm niệm: “Nỗ lực của chúng tôi là mang tiếng cười trẻ thơ đến mọi nhà, đồng thời kết hợp theo dõi và chăm sóc sức khỏe toàn diện cho trẻ em.”'), 'CK0001', N'Đang công tác', NULL , NULL);
INSERT INTO BACSI VALUES ('BS0020', N'Dương Quang Huy', N'Nam', N'Null', 'BS0020.png' , TO_NCLOB('Hơn 15 năm trước, khi lĩnh vực điều trị các bệnh lý nam khoa, hiếm muộn nam vẫn đang bị bỏ quên, ThS.BS.CKII Dương Quang Huy có cơ duyên tiếp cận sớm với các chương trình đào tạo chuyên sâu ở quốc tế, đặc biệt là Chương trình đào tạo sức khỏe nam giới tại trường Đại học Dược John Hopkins – Hoa Kỳ.\nVới thâm niên 15 năm công tác tại các bệnh viện lớn khu vực phía Nam, thực hiện thành công nhiều ca mổ phức tạp như: Vi phẫu tích mô tinh hoàn tìm tinh trùng (micro-Tese), vi phẫu nối ống dẫn tinh và mào tinh, chỉnh hình cơ quan sinh dục nam, tạo hình khiếm khuyết cơ quan sinh dục, ung thư cơ quan sinh dục nam… ThS.BS.CKII Dương Quang Huy trở thành một trong số ít chuyên gia đặt nền móng đầu tiên cho sự phát triển của lĩnh vực này như ngày nay.\nKhông chỉ tận tâm đồng hành cùng từng bệnh nhân, giúp những nam giới vô sinh hiếm muộn có con “chính chủ”, giảm nguy cơ phải xin tinh trùng từ nguồn hiến tặng, ThS.BS.CKII Dương Quang Huy tâm niệm luôn nỗ lực hơn thế để góp phần cải thiện chất lượng cuộc sống của nam giới ngay cả sau khi điều trị.\nThS.BS.CKII Dương Quang Huy cũng say mê nghiên cứu khoa học với nhiều đề tài nghiên cứu trong nước và quốc tế, thường xuyên cập nhật những phương pháp hiện đại nhất trong khám và điều trị các bệnh lý nam khoa, vô sinh nam, đồng thời chia sẻ những kinh nghiệm hay cùng đồng nghiệp trong và ngoài nước, đào tạo phát triển đội ngũ bác sĩ trẻ.'), 'CK0002', N'Đang công tác', NULL , 'dqh20');
INSERT INTO BACSI VALUES ('BS0021', N'Lê Xuân Nguyên', N'Nam', N'Null', 'BS0021.png' , TO_NCLOB('Tốt nghiệp chuyên ngành bác sĩ đa khoa loại giỏi tại khoa Y – Đại học Tây Nguyên, Bác sĩ Lê Xuân Nguyên có cơ duyên làm việc tại các bệnh viện lớn về sản khoa trên cả nước như bệnh viện Từ Dũ, phòng khám IVFMD Nam Sài Gòn…\nDù tuổi đời, tuổi nghề còn rất trẻ, nhưng với sự ham học hỏi và tận tâm, bác sĩ Lê Xuân Nguyên được đánh giá là một bác sĩ giỏi, có năng lực và sẽ vươn xa trong ngành Vô sinh hiếm muộn. '), 'CK0003', N'Đang công tác', NULL , 'lxn21');
INSERT INTO BACSI VALUES ('BS0022', N'Nguyễn Phạm Thùy Linh', N'Nữ', N'Null', 'BS0022.png' , TO_NCLOB('BS.CKI Nguyễn Phạm Thùy Linh có hơn 12 năm kinh nghiệm thăm khám và điều trị trong lĩnh vực Nội tim mạch nhi. Sau khi tốt nghiệp Đại học Y khoa Phạm Ngọc Thạch, bác sĩ Nguyễn Phạm Thùy Linh tham gia các khóa tu nghiệp tại Malaysia và Hàn Quốc về lĩnh vực Tim mạch nhi. Bác sĩ Nguyễn Phạm Thùy Linh gắn bó với Bệnh viện tim Tâm Đức TP.HCM trong suốt thời gian dài, đồng thời trở thành thành viên Hội Tim mạch Việt Nam và Phân hội Siêu âm tim Việt Nam. \nDành tình yêu đặc biệt đối với các em nhỏ không may bị bệnh tim bẩm sinh, bác sĩ Nguyễn Phạm Thùy Linh chia sẻ: “Nếu chỉ còn một ngày để sống, hãy để tôi chăm sóc những em bé bị tim bẩm sinh. Các bé sinh ra đã không được may mắn. Bằng sự chăm sóc đúng cách với trái tim chân thành, hy vọng tôi sẽ giúp giảm đi nỗi đau trong những trái tim không lành lặn ấy”.'), 'CK0004', N'Đang công tác', NULL , 'nptl22');
INSERT INTO BACSI VALUES ('BS0023', N'Ngô Trường Sơn', N'Nam', N'Null', 'BS0023.png' , TO_NCLOB('BS.CKII Ngô Trường Sơn có gần 20 năm kinh nghiệm điều trị ung thư và được đào tạo bài bản chuyên môn ở trong nước cũng như quốc tế. Sau khi tốt nghiệp chuyên ngành đa khoa tại Đại học Y Hà Nội – Ngôi trường đào tạo y khoa danh tiếng hàng đầu cả nước, bác sĩ Sơn tiếp tục hoàn thành xuất sắc khóa đào tạo bác sĩ nội trú và bác sĩ chuyên khoa II tại đây. Không dừng lại ở đó, với mong muốn học tập và cập nhật những phác đồ hiện đại nhất giúp người bệnh ung thư kiểm soát và điều trị hiệu quả, bác sĩ Sơn đã tham gia nhiều chương trình đào tạo nâng cao tại các quốc gia có nền y học phát triển như: Mỹ, Đan Mạch, Tây Ban Nha, Singapore…\nTrong suốt quá trình công tác và học tập, bác sĩ đã áp dụng nhiều kỹ thuật công nghệ cao về xạ trị và hóa chất vào điều trị các bệnh lý ung thư. Cùng với công tác khám chữa bệnh bác sĩ Sơn còn tham gia đào tạo, giảng dạy, chỉ đạo tuyến, viết sách chuyên ngành và nghiên cứu khoa học. Nhờ thành tích xuất sắc trong công tác giảng dạy và điều trị bác sĩ Sơn nhận được nhiều bằng khen của lãnh đạo các cấp. Bác sĩ Sơn cũng luôn được người bệnh yêu quý bởi sự gần gũi và giản dị.'), 'CK0005', N'Đang công tác', NULL , 'nts23');
INSERT INTO BACSI VALUES ('BS0024', N'Lê Thanh Hùng', N'Nam', N'Null', 'BS0024.png' , TO_NCLOB('Tốt nghiệp Á khoa tại đại học y khoa Phạm Ngọc Thạch năm 1998 với tấm bằng loại Giỏi, BS.CKII Lê Thanh Hùng được giữ lại làm giảng viên tại trường. Bác sĩ Thanh Hùng đã có 23 năm kinh nghiệm giảng dạy và thực hành trong lĩnh vực Sản Phụ khoa, tu nghiệp nội trú tại Bệnh viện Pellegrin-Bordeaux-Pháp. Bác sĩ Thanh Hùng từng phụ trách nhiều ca sinh và mổ khó như song thai, tiền sản giật, nhau tiền đạo, vết mổ lấy thai nhiều lần…\nĐể giúp sản phụ vượt qua những khó khăn trong quá trình sinh nở, Bác sĩ Thanh Hùng thường dành nhiều thời gian trò chuyện cùng sản phụ, giúp họ giảm bớt lo âu. Trong từng ca mổ khó, Bác sĩ Thanh Hùng luôn tập trung cao độ để đảm bảo sự an toàn cho cả mẹ và bé. Bác sĩ Thanh Hùng cũng từng là bác sĩ đại diện cho Việt Nam góp mặt trong chương trình 4 Babies A Second, một phóng sự của kênh truyền hình National Geographic năm 2015 về các ca sinh tại nhiều quốc gia trên thế giới.'), 'CK0006', N'Đang công tác', NULL , 'lth24');
INSERT INTO BACSI VALUES ('BS0025', N'Tạ Ngọc Thạch', N'Nam', N'Null', 'BS0025.png' , TO_NCLOB('Là một trong những bác sĩ trẻ tài năng của khoa Tiết niệu – Nam học, Bệnh viện Đa khoa Tâm Anh Hà Nội, ThS.BS Tạ Ngọc Thạch luôn muốn tiếp cận và áp dụng nhiều phương pháp, kỹ thuật khám, chữa bệnh tiên tiến để cứu chữa cho nhiều người bệnh. \nTốt nghiệp Đại học Y Dược Thái Nguyên, chàng sinh viên y khoa đến từ “Thủ đô Chè Việt Nam”, với tinh thần ham học, đã chuẩn bị hành trang lên Hà Nội, tiếp tục chinh phục lĩnh vực chuyên khoa Ngoại, và bắt đầu bén duyên với ngành Nam học từ đây. Năm 2015, anh được trao tặng danh hiệu Chiến sĩ thi đua cấp cơ sở khi đóng góp nhiều đề tài nghiên cứu khoa học mang tính ứng dụng cao như: “Đánh giá kết quả điều trị cắt túi mật qua phẫu thuật nội soi tại BV Gang thép Thái Nguyên”; “Kết quả ghép thận ở bệnh nhân suy thận mạn giai đoạn cuối từ người cho sống tại BV TƯ Thái Nguyên”…'), 'CK0007', N'Đang công tác', NULL , 'tnt25');
INSERT INTO BACSI VALUES ('BS0026', N'Chế Đình Nghĩa', N'Nam', N'Null', 'BS0026.png' , TO_NCLOB('Với hơn 20 năm công tác trong ngành Y, TS.BS Chế Đình Nghĩa được biết đến là một trong những chuyên gia hàng đầu Việt Nam trong lĩnh vực Chấn thương chỉnh hình và Phẫu thuật tạo hình. Bác sĩ Đình Nghĩa đã giúp nhiều bệnh nhân thoát khỏi những cơn đau đớn, phục hồi khả năng vận động và tránh được nhiều biến chứng nguy hiểm nhờ đường mổ nhỏ, ít đau đớn, giảm tỷ lệ nhiễm trùng, rút ngắn thời gian và tăng khả năng hồi phục…\nSau khi tốt nghiệp Đại học Y Hà Nội (2001), bác sĩ Đình Nghĩa tiếp tục tham gia đào tạo Thạc sĩ Ngoại khoa tại trường (2007) và Tiến sĩ Y học tại Viện Nghiên cứu Khoa học Y Dược Lâm sàng 108 (2019). Hơn 20 năm nghiên cứu và làm việc, Bác sĩ Đình Nghĩa đã điều trị thành công nhiều ca bệnh khó trong lĩnh vực vi phẫu như: trồng nối lại chi thể đứt rời, điều trị các tổn thương liệt đám rối cánh tay, điều trị liệt mặt, tạo hình tuyến vú sau phẫu thuật đoạn vú ung thư, siêu vi phẫu thuật nối thông bạch mạch – tĩnh mạch và chuyển ghép vi phẫu hạch bạch huyết điều trị phù bạch mạch chi thể, chuyển ghép vạt xương mác phục hồi mất đoạn xương sau cắt bỏ khối U vùng đầu mặt, chi thể… \nNgoài ra, bác sĩ Đình Nghĩa dành thời gian tham gia nghiên cứu khoa học, góp phần vào sự tiến bộ chung của ngành. Một số đề tài như nghiên cứu đặc điểm chẩn đoán và kết quả điều trị phẫu thuật tổn thương động mạch chi dưới bằng ghép tĩnh mạch tự thân tại Bệnh viện Việt Đức, nghiên cứu ứng dụng kỹ thuật vi phẫu trong trồng nối chi thể đứt rời… và nhiều báo cáo khoa học về vi phẫu tạo hình. Các nghiên cứu và báo cáo được đánh giá cao, đóng góp không nhỏ vào sự phát triển của nền y học hiện đại. '), 'CK0008', N'Đang công tác', NULL , 'cdn26');
INSERT INTO BACSI VALUES ('BS0027', N'Ngô Quý Châu', N'Nam', N'Giáo sư', 'BS0027.png' , TO_NCLOB('Với hơn 40 năm kinh nghiệm trong lĩnh vực Nội hô hấp, đồng thời từng đảm nhận nhiều vị trí quan trọng tại các bệnh viện lớn hàng đầu cả nước, TTND.GS.TS.BS Ngô Quý Châu hiện đang là Giám đốc chuyên môn, kiêm cố vấn chuyên môn khoa Nội hô hấp, Bệnh viện Đa khoa Tâm Anh, Hà Nội. Tên tuổi TTND.GS.TS.BS Ngô Quý Châu không chỉ vang danh trong nước mà còn “phủ sóng” sang cả các nước châu  Âu – nơi vốn có nền y học hiện đại nhất thế giới. Các thành tựu mà Giáo sư Ngô Quý Châu đạt được, cùng những cống hiến của ông cho nền Y khoa nước nhà như khẳng định thêm cho câu nói: “Trong lĩnh vực Nội tổng hợp nói chung và Phổi – Hô hấp nói riêng, giáo sư Ngô Quý Châu xứng đáng là cây đa cây đề”. \nNăm 1977, cậu học trò Ngô Quý Châu thi đỗ vào trường Đại học Y khoa Hà Nội. Từ quê hương Bắc Giang, chàng trai trẻ khăn gói ra Hà Nội bắt đầu sự nghiệp học tập, tìm tòi và nghiên cứu. Năm 1983, chàng bác sĩ trẻ Ngô Quý Châu xuất sắc nhận bằng loại giỏi – phần thưởng xứng đáng cho những nỗ lực và cố gắng của ông suốt những năm tháng ngồi giảng đường Đại học Y Hà Nội. \nĐủ điều kiện thi tuyển khóa đào tạo bác sĩ nội trú chuyên khoa I, bác sĩ Ngô Quý Châu tiếp tục chinh phục bầu trời tri thức tại Bệnh viện Bạch Mai – Bộ môn Nội Tổng hợp, Trường Đại học Y Hà Nội. Trong số các bác sĩ nội trú khóa đào tạo lúc bấy giờ, ông là người duy nhất được chuyển thẳng làm nghiên cứu sinh. Ba năm miệt mài nghiên cứu, năm 1992, Ngô Quý Châu đã bảo vệ thành công luận án Tiến sĩ về đề tài ung thư phổi khi mới 32 tuổi. Ông chính là vị bác sĩ trẻ nhất của Việt Nam nhận bằng Tiến sĩ Y khoa lúc bấy giờ.  \nKhông dừng lại ở việc trau dồi kiến thức ở môi trường đào tạo trong nước, bác sĩ Ngô Quý Châu còn có khoảng thời gian dài sang Pháp nghiên cứu và thực tập trong nhiều chuyên ngành y khoa: ung thư học, bệnh phổi nghề nghiệp và môi trường… Năm 1995, ông là người Việt Nam đầu tiên thi đỗ vào khóa học Liên các trường đại học của Pháp chuyên sâu về phổi và được Bộ Y tế cho phép tiếp tục học ở Pháp thêm 4 năm nữa. Cuối năm 1999, ông trở lại Việt Nam và công tác tại Bệnh viện Bạch Mai, Hà Nội.'), 'CK0009', N'Đang công tác', NULL , 'nqc27');
INSERT INTO BACSI VALUES ('BS0028', N'Trần Quán Anh', N'Nam', N'Giáo sư', 'BS0028.png' , TO_NCLOB('NGND.GS.TS.BS Trần Quán Anh là người đầu tiên đặt nền móng cho ngành Nam học Việt Nam.\nÔng là Tổng Thư ký Hội Tiết niệu – Thận học Việt Nam, Hội viên Hội Tiết niệu thế giới (S.I.U), là người khởi xướng xây dựng phân khoa nam học, thuộc Khoa tiết niệu, Bệnh viện Việt – Đức, Hà Nội. Từng tham gia nhiều hội nghị quốc tế về nam học tại nhiều quốc gia trên thế giới, Giáo sư Trần Quán Anh tiến hành hàng chục công trình nghiên cứu quý giá gây dựng cho bộ môn khoa học từ non trẻ đến gặt hái được những thành tựu to lớn ở Việt Nam hiện nay.\nHơn nửa thế kỷ cống hiến hết mình cho nền Y học nước nhà, lúc đất nước có chiến tranh, không ngồi yên ở trường đại học, hay phòng nghiên cứu, bác sĩ Trần Quán Anh đã xông pha khắp các vùng đất ác liệt như Hà Tĩnh, Quảng Bình, Quảng Trị… để phục vụ các thương bệnh binh; có nhiều binh trạm số lượng chiến sĩ bị thương hơn 1000 người, người bác sĩ trẻ ấy và các đồng nghiệp phải đã việc không ngừng nghỉ trong suốt nhiều ngày đêm dưới hầm tối với ánh sáng “phòng mổ” chỉ từ những chiếc đèn pha xe đạp. Thậm chí tay không dám ngưng một phút vì “nếu bác sĩ phẫu thuật nghỉ ngơi là đồng nghĩa với chấp nhận đồng đội của mình hy sinh”.\nGác lại những hồi ức tuổi trẻ ở chiến trường, bom đạn, nơi ông là một người lính cầm dao mổ để cứu chữa thương, bệnh binh, hòa bình lập lại, Giáo sư dành trọn vẹn tình yêu tâm sức và quyết gắn bó thuỷ chung với nghề Y. Ông trở thành một trong những người đặt nền móng đầu tiên xây dựng ngành tiết niệu nam học ở Việt Nam và góp phần rất lớn vào sự phát triển của ngành nam học ngày nay. '), 'CK0001', N'Đang công tác', NULL , 'tqa28');
INSERT INTO BACSI VALUES ('BS0029', N'Trần Anh Vũ', N'Nam', N'Null', 'BS0029.png' , TO_NCLOB('ThS.BS.CKII Trần Anh Vũ tốt nghiệp Thạc sĩ Chấn thương chỉnh hình, Đại học Y Dược TP. HCM, từng tu nghiệp tại Pháp và Tây Ban Nha để nâng cao kiến thức và kỹ năng trong lĩnh vực Chấn thương chỉnh hình. Bác sĩ Anh Vũ đã điều trị thành công cho rất nhiều trường hợp gặp phải các chấn thương thể thao từ nhẹ đến nghiêm trọng, giúp bệnh nhân phục hồi nhanh chóng và trở lại với đam mê thể thao.\nBác sĩ Anh Vũ có thời gian 5 năm làm việc tại khoa Chấn thương chỉnh hình, Bệnh viện Nguyễn Tri Phương (TP. HCM) trước khi gia nhập Bệnh viện Đa khoa Tâm Anh TP. HCM với vai trò Trưởng khoa Y học thể thao và Nội soi, Trung tâm Chấn thương Chỉnh hình.'), 'CK0002', N'Đang công tác', NULL , 'tav29');
INSERT INTO BACSI VALUES ('BS0030', N'Hồ Thị Khánh Quyên', N'Nữ', N'Null', 'BS0030.png' , TO_NCLOB('BS.CKI Hồ Thị Khánh Quyên tốt nghiệp và nhận Bằng chuyên khoa cấp I Sản Phụ khoa tại Đại học Y Dược Cần Thơ. Ngoài ra, bác sĩ còn đạt được các chứng nhận về phẫu thuật nội soi cơ bản trong phụ khoa, soi cổ tử cung, kỹ thuật bơm tinh trùng vào buồng tử cung, cấy và rút que tránh thai IMPLANON NXT và là hội viên hội Nội tiết sinh sản và Vô sinh TPHCM (HOSREM). Với 14 năm kinh nghiệm làm việc tại bệnh viện Đa Khoa tỉnh Kiên Giang và bệnh viện Đa khoa Hoàn Mỹ Sài Gòn cùng phương châm “Đừng cố gắng trở thành người thành công, hãy cố gắng là người có giá trị”, bác sĩ Khánh Quyên luôn nỗ lực để tận tay chào đón những thiên thần bé nhỏ và mang lại niềm hạnh phúc cho các sản phụ.'), 'CK0003', N'Đang công tác', NULL , 'htkq30');
INSERT INTO BACSI VALUES ('BS0031', N'Nguyễn Quang Nhật', N'Nam', N'Null', 'BS0031.png' , TO_NCLOB('Xuất thân từ Đại học Y Dược Huế, BS.CKI Nguyễn Quang Nhật có gần 10 năm kinh nghiệm trong lĩnh vực khám và điều trị Sản Phụ khoa tại các bệnh viện như bệnh viện Đa khoa tỉnh Đồng Nai và bệnh viện Đa khoa Hoàn Mỹ Sài Gòn. Với những kinh nghiệm tích lũy được trong quá trình học tập và làm việc, bác sĩ Quang Nhật đã phẫu thuật thành công ca nội soi cấp cứu vỡ thai ngoài tử cung đoạn kẽ, song thai IVF.\nTham gia ngành y với mong muốn được cống hiến cho xã hội, bác sĩ Quang Nhật luôn không ngừng học hỏi và cập nhật những phương pháp y khoa tiên tiến để hỗ trợ các thai phụ có một thai kỳ khỏe mạnh và trải nghiệm vượt cạn an toàn. Bác sĩ Quang Nhật đang là hội viên hội Nội tiết sinh sản và Vô sinh TP.HCM – HOSREM.'), 'CK0004', N'Đang công tác', NULL , 'nqn31');
INSERT INTO BACSI VALUES ('BS0032', N'Đào Trần Tiến', N'Nam', N'Null', 'BS0032.png' , TO_NCLOB('Sau khi tốt nghiệp bác sĩ nội trú tại Đại học Y Hà Nội, với niềm đam mê và tâm huyết đối với lĩnh vực tiêu hóa, BS Đào Trần Tiến tiếp tục tham gia nhiều khóa đào tạo chuyên sâu trong và ngoài nước về các kỹ thuật can thiệp điều trị bệnh lý Tiêu hóa – Gan mật – Tụy. Trong đó có các kỹ thuật hiện đại như nội soi điều trị ung thư dạ dày sớm và cắt cơ thắt thực quản (POEM), đào tạo cầm tay Nội soi can thiệp Tiêu hoá nâng cao (ESD)…\nBác sĩ Tiến có thế mạnh trong chẩn đoán, điều trị các bệnh lý thực quản, dạ dày, đại tràng, bệnh lý về gan, đường mật, tụy; làm chủ kỹ thuật nội soi can thiệp điều trị xuất huyết tiêu hóa, cắt cơ thực quản, cắt ung thư sớm; sử dụng nội soi mật tuỵ ngược dòng trong chẩn đoán và điều trị các bệnh lý đường mật, ống tụy, và túi mật…\nĐồng thời, bác sĩ Tiến cũng tích cực tham gia nghiên cứu khoa học và là tác giả của nhiều công trình nghiên cứu có tính thực tiễn cao. Với những cống hiến không ngừng nghỉ đó, bác sĩ Đào Trần Tiến đã nhận được bằng khen của Bộ Y tế, bằng khen Chiến sĩ thi đua cấp cơ sở tại Bệnh viện Bạch Mai…'), 'CK0005', N'Đang công tác', NULL , 'dtt32');
INSERT INTO BACSI VALUES ('BS0033', N'Hà Thị Loan', N'Nữ', N'Null', 'BS0033.png' , TO_NCLOB('Năm 2015, bác sĩ Hà Thị Loan tốt nghiệp chuyên ngành Bác sĩ Đa khoa tại trường Đại học Y dược Thái Nguyên. Với tinh thần học hỏi nâng cao chuyên môn nhằm hoàn thiện bản thân, có thể điều trị thành công nhiều ca bệnh khó, bác sĩ Loan tiếp tục học tập, hoàn thành nhiều chuyên ngành sau đại học như Hồi sức cấp cứu, siêu âm tổng quát, nội soi tiêu hóa trên, nội soi đại tràng.\nThS.BSNT Hà Thị Loan là bác sĩ trẻ nhiều tâm huyết với người bệnh, tận tụy với công việc khám chữa bệnh tại khoa Tiêu hóa – Gan Mật – Tụy, Bệnh viện Đa khoa Tâm Anh Hà Nội. Bên cạnh đó, bác sĩ luôn dành thời gian nghiên cứu chuyên sâu. Tiêu biểu là công trình nghiên cứu: Đặc điểm lâm sàng, cận lâm sàng và nồng độ Procalcitonin huyết thanh ở bệnh nhân nhiễm khuẩn huyết điều trị tại Bệnh viện đa khoa Trung Ương Thái Nguyên năm 2018.'), 'CK0006', N'Đang công tác', NULL , 'htl33');
INSERT INTO BACSI VALUES ('BS0034', N'Mai Mạnh Tam', N'Nam', N'Null', 'BS0034.png' , TO_NCLOB('ThS. BS Mai Mạnh Tam được đào tạo cơ bản và chuyên sâu lĩnh vực Nội – Hô Hấp tại trường Đại học Y Hà Nội từ năm 2003, có nhiều kinh nghiệm trong thăm khám và điều trị bệnh. Thời gian học tập tại National Center for Global Health and Medicine (NCGM – Nhật Bản) giúp Bác sĩ Mai Mạnh Tam ưu thế phát triển kỹ thuật nội soi phế quản.\nBác sĩ Mai Mạnh Tam đã đóng góp nhiều đề tài, công trình nghiên cứu khoa học, vinh dự nhận được giải thưởng Chiến sĩ thi đua do Sở Y tế trao tặng.'), 'CK0007', N'Đang công tác', NULL , 'mmt34');
INSERT INTO BACSI VALUES ('BS0035', N'Lã Quý Hương', N'Nữ', N'Null', 'BS0035.png' , TO_NCLOB('BSNT Lã Quý Hương là bác sĩ  trẻ được đào tạo chuyên biệt – hệ Bác sĩ Nội trú, chuyên ngành Nội khoa tại một trong những trường đại học về Y lớn nhất cả nước – Đại học Y Hà Nội và thực tập tại Bệnh viện Đại học Ajou (Hàn Quốc). \nLà bác sĩ vững vàng về chuyên môn tại chuyên khoa Nội Hô hấp, bác sĩ Lã Quý Hương để lại ấn tượng tốt cho người bệnh trong suốt quá trình theo dõi tình trạng sức khỏe khi thăm khám, điều trị tại bệnh viện.\nNgoài ra, BSNT Lã Quý Hương thường xuyên tham gia các khóa đào tạo cơ bản cũng như nâng cao trong và ngoài nước để cập nhật các kiến thức y khoa mới. BS Hương là thành viên tích cực của Hội Hô hấp Việt Nam, Hội Hô hấp Hà Nội và Hội Y học Giấc ngủ Việt Nam.'), 'CK0008', N'Đang công tác', NULL , 'lqh35');
INSERT INTO BACSI VALUES ('BS0036', N'Nguyễn Văn Ngân', N'Nam', N'Null', 'BS0036.png' , TO_NCLOB('Với nhiều năm kinh nghiệm trong lĩnh vực Nội tổng hợp và công tác tại bệnh viện tuyến đầu của cả nước, BSNT. Nguyễn Văn Ngân đã điều trị thành công hàng trăm ca bệnh hô hấp phổ biến như: Viêm phế quản, viêm phổi, COPD, hen phế quản, ung thư phổi,… cũng như các bệnh hô hấp chuyên sâu như: Lao, bệnh tích protein phế nang, viêm phổi kẽ, xơ phổi vô căn, Sarcoidosis,… \nLà thành viên tích cực của Hội hô hấp Việt Nam, Hội hô hấp Hà Nội, Hội hô hấp Thành phố Hồ Chí Minh, BS Nguyễn Văn Ngân luôn dẫn đầu trong các hoạt động, hội thảo về chuyên môn, cập nhật những kỹ thuật mới và ứng dụng linh hoạt, sáng tạo trong việc điều trị cho người bệnh một cách hiệu quả nhất. '), 'CK0009', N'Đang công tác', NULL , 'nvn36');
INSERT INTO BACSI VALUES ('BS0037', N'Đặng Thành Đô', N'Nam', N'Null', 'BS0037.png' , TO_NCLOB('ThS.BSNT. Đặng Thành Đô tốt nghiệp xuất sắc tại trường ĐH Y Hà Nội với nhiều thành tích đáng nể. Là một trong những bác sĩ trẻ được đánh giá cao về chuyên môn, bác sĩ Đặng Thành Đô được giữ lại giảng dạy tại Đại học Y Hà Nội, đây cũng là cơ hội để bác sĩ “truyền lửa” đam mê và nhiệt huyết cống hiến cho nhiều thế hệ sinh viên.\nTrong suốt quá trình khám chữa bệnh tại các cơ sở y tế đầu ngành của cả nước, BS Đô đã thăm khám và điều trị thành công hàng nghìn ca bệnh mắc các bệnh lý hô hấp, đặc biệt là bệnh Phổi tắc nghẽn mạn tính. \nNgoài ra, BS Đô luôn dành nhiều thời gian và tâm huyết để giải đáp thắc mắc, tư vấn giúp người bệnh nhanh chóng cải thiện các vấn đề sức khỏe.'), 'CK0001', N'Đang công tác', NULL , 'dtd37');
INSERT INTO BACSI VALUES ('BS0038', N'Thân Thị Ngọc Lan', N'Nữ', N'Null', 'BS0038.png' , TO_NCLOB('Với nhiều năm kinh nghiệm thực tiễn tích lũy tại các bệnh viện lớn, ThS.BSNT. Thân Thị Ngọc Lan được các chuyên gia đầu ngành đánh giá cao về trình độ chuyên môn cũng như nhiệt huyết với công tác khám chữa bệnh. Không chỉ dừng lại ở trong nước, ThS.BSNT Ngọc Lan còn tham gia nhiều đào tạo khoa học liên đại học Pháp – Việt về phương pháp chẩn đoán và điều trị bệnh lý hô hấp. \nVới hơn 10 năm học tập và công tác, bác sĩ Thân Thị Ngọc Lan đã giải quyết được nhiều vấn đề sức khỏe cho người bệnh trong lĩnh vực hô hấp. Luôn tận tâm, chu đáo với từng người bệnh, Ths.BSNT. Ngọc Lan trở thành lựa chọn tin cậy được nhiều người bệnh khi đến thăm khám và điều trị tại Khoa Nội Hô hấp, Bệnh viện Đa Khoa Tâm Anh Hà Nội.'), 'CK0002', N'Đang công tác', NULL , 'ttnl38');
INSERT INTO BACSI VALUES ('BS0039', N'Trần Duy Hưng', N'Nam', N'Null', 'BS0039.png' , TO_NCLOB('Tốt nghiệp Trường Đại học Y Hà Nội (2018) – đơn vị đào tạo y khoa hàng đầu cả nước, bác sĩ Trần Duy Hưng tiếp tục tham gia chương trình đào tạo Bác sĩ Nội trú. Sau 3 năm học tập, rèn luyện, bác sĩ Trần Duy Hưng đã xuất sắc hoàn thành khóa học và công tác tại khoa Hô hấp, Bệnh viện Đa khoa Tâm Anh Hà Nội.\nLà người đầy nhiệt huyết, đam mê với công việc, không quản ngại khó khăn thử thách, bác sĩ Trần Duy Hưng đã tích cực tham gia công tác phòng chống và hỗ trợ điều trị người bệnh Covid-19 trong đợt dịch bệnh bùng phát nghiêm trọng, giúp không ít bệnh nhân khỏi bệnh trở về với gia đình.\nBác sĩ Trần Duy Hưng còn dành nhiều thời gian nghiên cứu sâu về phương pháp chẩn đoán, điều trị hiệu quả các bệnh lý đường hô hấp ở người lớn, không ngừng cập nhật các kiến thức mới để áp dụng trong thực tiễn khám chữa bệnh.'), 'CK0003', N'Đang công tác', NULL , 'tdh39');
INSERT INTO BACSI VALUES ('BS0040', N'Cẩn Tuyết Nga', N'Nữ', N'Null', 'BS0040.png' , TO_NCLOB('Dược sĩ Cẩn Tuyết Nga tốt nghiệp xuất sắc Đại học Dược Piatigorsk (Cộng hòa Liên Bang Nga). Với mong muốn nâng cao chuyên môn, trau dồi kiến thức, dược sĩ Nga trở về Việt Nam, tiếp tục tham gia nghiên cứu và được cấp bằng tiến sĩ tại Đại học Dược Hà Nội.\nVới hơn 30 năm công tác trong ngành Y Dược, TS.DS Cẩn Tuyết Nga từng đảm nhiệm nhiều vị trí quan trọng tại Bệnh viện Bạch Mai như Phó khoa Dược (2013 – 2018), Trưởng khoa Dược (2019 – 2020). Tại đây, TS Nga đã tổ chức hoạt động dược lâm sàng, thông tin các loại thuốc, góp phần giúp người bệnh sử dụng thuốc an toàn, hợp lý, hiệu quả.\nTrong quá trình công tác, TS.DS Cẩn Tuyết Nga đã tham gia xây dựng và triển khai thành công ứng dụng phần mềm cảnh báo các vấn đề liên quan đến thuốc khi kê đơn thuốc ngoại trú tại bệnh viện Bạch Mai (là một trong những đơn vị đầu tiên đưa ra ý tưởng và phát triển được phần mềm cảnh báo khi kê đơn)'), 'CK0004', N'Đang công tác', NULL , 'ctn40');
INSERT INTO BACSI VALUES ('BS0041', N'Trần Đức Hậu', N'Nam', N'Null', 'BS0041.png' , TO_NCLOB('Bác sĩ Hậu được đào tạo chuyên ngành Nhi khoa tại trường Đại học Y Nhi Leningrad, Liên xô. Sau khi tốt nghiệp, bác sĩ tiếp tục thực tập sau đại học tại trường, tích lũy kinh nghiệm thăm khám và điều trị cho các bệnh nhi. Bác sĩ Hậu đã có hơn 30 năm kinh nghiệm trong chuyên ngành Nhi khoa.\nBên cạnh công tác chuyên môn, bác sĩ Trần Đức Hậu dành thời gian tham dự nhiều khóa đào tạo nâng cao chuyên môn và báo cáo tại các hội nghị khoa học trong nước và quốc tế chuyên ngành Nhi, chuyên ngành Nhi Ung thư. Đồng thời bác sĩ là giảng viên thỉnh giảng của Bộ môn Nhi, Đại học Y Hà Nội trong nhiều năm, tham gia vào công tác đào tạo sau đại học.'), 'CK0005', N'Đang công tác', NULL , 'tdh41');
INSERT INTO BACSI VALUES ('BS0042', N'Lê Thị Lan Anh', N'Nữ', N'Null', 'BS0042.png' , TO_NCLOB('Bằng chuyên môn vững chắc cùng bề dày kinh nghiệm 20 năm về Nhi khoa, ThS.BSNT Lê Thị Lan Anh được nhiều bố mẹ đánh giá “mát tay” trong thăm khám và điều trị các bệnh lý ở trẻ nhỏ. Sự cẩn thận, nhẹ nhàng của bác sĩ Lan Anh là điều mà các bậc phụ huynh hoàn toàn an tâm và tin tưởng.\nBác sĩ Lan Anh tốt nghiệp Đại học Y Hà Nội và tiếp tục đào tạo chuyên sâu về Thạc sĩ, Bác sĩ nội trú chuyên khoa Nhi. Trong suốt thời gian cống hiến cho ngành Y, bác sĩ Lan Anh luôn không ngừng hoàn thiện chuyên môn về kỹ năng, tham gia nghiên cứu, cập nhật các kỹ thuật, phương pháp mới.\nKhông chỉ là tác giả của nhiều đề án nghiên cứu giá trị, bác sĩ Lan Anh cũng là gương mặt quen thuộc trong nhiều chương trình về sức khỏe với vai trò chuyên gia tư vấn và là Hội viên Hội Nhi khoa Việt Nam.'), 'CK0006', N'Đang công tác', NULL , 'ltla42');
INSERT INTO BACSI VALUES ('BS0043', N'Nguyễn Văn Lan', N'Nam', N'Null', 'BS0043.png' , TO_NCLOB('Với 15 năm kinh nghiệm trong ngành Chẩn đoán hình ảnh, BSCKI Nguyễn Văn Lan – Phó khoa Chẩn đoán hình ảnh, Bệnh viện Đa khoa Tâm Anh, Hà Nội đã ứng dụng các kỹ thuật tiên tiến vào chẩn đoán, giúp phát hiện sớm các bệnh lý, hỗ trợ bác sĩ điều trị đưa ra phác đồ điều trị sớm và hiệu quả cho người bệnh.\nNgay sau khi tốt nghiệp Bác sĩ Y khoa tại Đại học Y Thái Bình, ông đã “đầu quân” cho Bệnh viện Đa khoa tỉnh Hà Tĩnh. Sau 10 năm giữ vai trò bác sĩ đa khoa, tiếp xúc với nhiều bệnh nhân, trải nghiệm khám chữa bệnh thực tế, ông nhận ra việc chẩn đoán bệnh chính xác, kịp thời giữ vai trò quan trọng, là yếu tố tiên quyết trong điều trị bất kỳ loại bệnh nào. Thấu hiểu tầm quan trọng đó, cùng khát khao muốn cứu chữa nhiều bệnh nhân, bác sĩ Nguyễn Văn Lan tiếp tục theo học Bác sĩ chuyên khoa I – Chuyên ngành Chẩn đoán hình ảnh và tốt nghiệp vào năm 2005. 2 năm sau đó, ông nhận được Chứng chỉ An toàn bức xạ trong X-quang y tế và tiếp tục đạt nhiều thành tựu trong lĩnh vực chẩn đoán hình ảnh, đóng góp cho sự phát triển của y học nước nhà.'), 'CK0007', N'Đang công tác', NULL , 'nvl43');
INSERT INTO BACSI VALUES ('BS0044', N'Lê Văn Khánh', N'Nam', N'Null', 'BS0044.png' , TO_NCLOB('Với gần 10 năm kinh nghiệm và từng công tác tại các bệnh viện tuyến đầu của cả nước trong lĩnh vực Chẩn đoán hình ảnh và điện quang can thiệp, BSCKII. BSNT Lê Văn Khánh đã thực hiện thành công hàng nghìn ca đốt sóng cao tần RFA tuyến giáp, thực hiện nút mạch thành trong u xơ tử cung, u xơ tuyến tiền liệt và đặc biệt kỹ thuật nút tĩnh mạch thừng tinh trong trường hợp vô sinh hiếm muộn.\nMong muốn trau dồi kiến thức, kỹ năng, nâng cao chuyên môn nghề nghiệp, BSNT Lê Văn Khánh nhiệt tình tham gia nhiều khóa học chuyên sâu tại Hàn Quốc như: cắt u hút u vú chân không VABB, đốt sóng cao tầng RFA tuyến giáp… BS Khánh còn dành thời gian nghiên cứu các công trình liên quan đến Chẩn đoán hình ảnh và Điện quang can thiệp, vinh dự được đăng tải các công trình có giá trị thực tiễn trên tạp chí trong và ngoài nước. \nNhờ những cống hiến hết mình trong công tác khám chữa bệnh và nghiên cứu khoa học, BS Khánh được lãnh đạo viện và đồng nghiệp đánh giá cao về chuyên môn, nhiệt huyết với công việc, hết mình vì người bệnh.'), 'CK0008', N'Đang công tác', NULL , 'lvk44');
INSERT INTO BACSI VALUES ('BS0045', N'Lê Nguyệt Minh', N'Nữ', N'Null', 'BS0045.png' , TO_NCLOB('BS.CKII Lê Nguyệt Minh đã có hơn 10 năm kinh nghiệm trong lĩnh vực chẩn đoán hình ảnh và can thiệp điện quang. Tốt nghiệp Đại học Y Hà Nội – một trong những môi trường đào tạo y khoa danh tiếng nhất cả nước, Bác sĩ Minh tiếp tục tham gia thêm nhiều chương trình đào tạo chuyên sâu từ các trường đại học nổi tiếng thế giới như chứng chỉ DFMSA tại Trường đại học Clermont Auvergne (Pháp), đào tạo chẩn đoán hình ảnh tại Bệnh viện Đại học San Antonio (Mỹ), chứng chỉ sinh thiết vú có hỗ trợ hút chân không (VABB) tại Seoul (Hàn Quốc)…\nDành hết thời gian và tâm huyết của mình cho lĩnh vực chẩn đoán hình ảnh và can thiệp vú – tĩnh mạch, Bác sĩ Minh không chỉ xuất sắc trong hoạt động khám chữa bệnh, mà còn đóng góp xây dựng nên nhiều công trình nghiên cứu khoa học có giá trị lớn trong và ngoài nước. Tiêu biểu như công trình “Nghiên cứu đặc điểm hình ảnh suy tĩnh mạch chi dưới tại Bệnh viện Bạch Mai” đăng trên Tạp chí Y học thực hành năm 2017, báo cáo “Các liệu pháp giảm nhẹ trong điều trị suy giãn tĩnh mạch – kinh nghiệm của Việt Nam” tại Đại hội Can thiệp ung thư Châu Á – Thái Bình Dương lần thứ 6 (2017)…'), 'CK0009', N'Đang công tác', NULL , 'lnm45');
INSERT INTO BACSI VALUES ('BS0046', N'Quảng Thị Bính Thìn', N'Nữ', N'Null', 'BS0046.png' , TO_NCLOB('Bác sĩ Quản Thị Bính Thìn có gần 20 năm công tác trong lĩnh vực y khoa, chuyên khoa Chẩn đoán hình ảnh. Những kinh nghiệm đúc kết được trong quá trình học tập và khám chữa bệnh đã giúp Bác sĩ Bính Thìn đưa ra những đánh giá chính xác khi thực hiện các chẩn đoán lâm sàng cho bệnh nhân. Đây chính là cơ sở giúp bác sĩ phát hiện bệnh kịp thời và đưa ra phương án điều trị hiệu quả. '), 'CK0001', N'Đang công tác', NULL , 'qtbt46');
INSERT INTO BACSI VALUES ('BS0047', N'Phạm Thanh Xuân', N'Nữ', N'Null', 'BS0047.png' , TO_NCLOB('Là một trong những người đầu tiên đặt nền móng xây dựng khoa Nhi trở thành khoa mũi nhọn của Bệnh viện Đa Khoa Tâm Anh Hà Nội và là khoa vệ tinh của Bệnh viện Nhi Trung ương, BS.CKII Phạm Thanh Xuân không chỉ được các bệnh nhân yêu mến bởi sự nhẹ nhàng, ấm áp mà còn nhận được sự kính trọng của các đồng nghiệp bởi tính quyết đoán, mạnh mẽ bên trong sự nhẹ nhàng của một bác sĩ Nhi khoa.\nGần 40 năm “tuổi nghề”, bác sĩ Thanh Xuân đã đồng hành cùng hàng triệu bệnh nhi, hàng triệu trường hợp đã được điều trị thành công. Chưa bao giờ ngừng đam mê, sau thời gian công tác tại bệnh viện, bác sĩ Thanh Xuân luôn dành tâm huyết để tìm tòi, nghiên cứu và trau dồi kiến thức chuyên môn.\nKhông chỉ chú trọng công tác chuyên môn, bác sĩ Thanh Xuân còn tích cực tham gia công tác giảng dạy, tâm huyết với sự nghiệp “truyền lửa đam mê” cho các thế hệ bác sĩ trẻ. Đối với bác sĩ Thanh Xuân, giáo dục y tế là phải nhìn về cội nguồn, y tế phải gắn với tri thức và thái độ ứng xử của con người, do đó trong công tác giảng dạy cũng như khi thực hiện vai trò khám chữa bệnh, bác sĩ Thanh Xuân luôn đề cao kinh nghiệm sống, thái độ phục vụ bệnh nhân, đặc biệt là thấu hiểu và thích nghi với những điều kiện thực tế, cho dù là khó khăn và thiếu thốn nhất.\nHơn nửa đời người gắn bó với mối duyên nợ Nhi khoa, bác sĩ Thanh Xuân đã xuất sắc giành được nhiều thành tích nổi bật, trong đó có nhiều danh hiệu thi đua và bằng khen của Bộ Y tế.'), 'CK0002', N'Đang công tác', NULL , 'ptx47');
INSERT INTO BACSI VALUES ('BS0048', N'Phan Thị Phương Thảo', N'Nữ', N'Null', 'BS0048.png' , TO_NCLOB('“Thân thiện, chuyên nghiệp, tận tâm” là những tính từ nổi bật mà đồng nghiệp và bệnh nhân nói về ThS.BS.CKII Phan Thị Phương Thảo. Hơn 29 năm gắn bó với nghề y, niềm vui của bác sĩ Phương Thảo là nhìn thấy nụ cười hài lòng của bệnh nhân. Mỗi ngày đến bệnh viện, bác sĩ Phương Thảo đều cảm thấy hạnh phúc hơn khi bệnh nhân có tiến triển tích cực, hồi phục khỏe mạnh. \nĐối với bác sĩ Phương Thảo, điều trị cho bệnh nhân không chỉ là xây dựng phác đồ phù hợp, theo dõi sát sao quá trình chữa trị; mà còn ở sự tư vấn tận tình, cử chỉ nhẹ nhàng, quan sát từng chút và lưu tâm đến cả những điều nhỏ ở bệnh nhân. Điều này giúp bác sĩ gần gũi hơn và bệnh nhân có thể đặt trọn niềm tin ở người bác sĩ. \nHiện tại, ThS.BS.CKII Phan Thị Phương Thảo vẫn không ngừng nâng cao kiến thức để phát huy các ưu thế trong điều trị. Là bác sĩ nội tim mạch giàu kinh nghiệm, bác sĩ Phương Thảo ưu tiên lựa chọn phương án chữa trị tối ưu với chi phí phù hợp cho bệnh nhân.'), 'CK0003', N'Đang công tác', NULL , 'ptpt48');
INSERT INTO BACSI VALUES ('BS0049', N'Nguyễn Quốc Khánh', N'Nam', N'Null', 'BS0049.png' , TO_NCLOB('Hơn 30 năm gắn bó với nghề y, ThS.BS Nguyễn Quốc Khánh luôn miệt mài nghiên cứu, học tập để nâng cao trình độ chuyên môn trong khám, chẩn đoán bệnh và đưa ra những quyết định đúng đắn để chiến thắng những ca bệnh khó, cứu sống người bệnh.\nTrở về nước sau nhiều năm tu nghiệp ở nước ngoài, ThS.BS Nguyễn Quốc Khánh vừa đảm nhận công tác tại Khoa tim mạch Bệnh viện 19-8 Bộ Công an vừa tiếp tục theo học bác sĩ chuyên khoa và cao học tại Học viện Quân Y. “Luôn bận rộn, căng thẳng và nhiều áp lực, nhưng khi đã bén duyên và yêu quý nghề là nguồn động lực để tôi vượt lên tất cả và gắn bó đến tận bây giờ và cả sau này nữa.”, bác sĩ Nguyễn Quốc Khánh chia sẻ. \nCó lẽ cũng chính vì vậy mà trong ngần ấy năm theo nghiệp Y khoa, Ths.BS Nguyễn Quốc Khánh được nhắc nhớ không chỉ về cái tâm, cái tài của người thầy thuốc mà còn về một tấm gương trau dồi chuyên môn, với những công trình nghiên cứu có giá trị cao, trong đó nhiều đề tài khoa học của bác sĩ đã được áp dụng vào thực tiễn.'), 'CK0004', N'Đang công tác', NULL , 'nqk49');
INSERT INTO BACSI VALUES ('BS0050', N'Dương Công Lĩnh', N'Nam', N'Null', 'BS0050.png' , TO_NCLOB('ThS.BSNT Dương Công Lĩnh vượt qua kỳ sát hạch khắt khe để trở thành Bác sĩ nội trú chuyên ngành Nội Tim mạch tại Trường Đại học Y Hà Nội. \nĐặt phương châm “dùng trái tim để bảo vệ trái tim” lên đầu, ThS.BSNT Dương Công Lĩnh không ngừng học hỏi và áp dụng những kỹ thuật, phương pháp trị liệu mới giúp cho bệnh nhân bảo vệ sức khỏe của mình trước những nguy hiểm của bệnh tim mạch. Không chỉ là bác sĩ giỏi chuyên môn, đam mê sáng tạo và có tinh thần trách nhiệm, bác sĩ Lĩnh còn tích cực tham gia công tác tư vấn khám chữa cho bệnh nhân. \nBằng y đức và tài năng của mình, bác sĩ Lĩnh được rất nhiều bệnh nhân và người nhà tin tưởng. Hiện tại Bác sĩ Lĩnh đang công tác tại Khoa Tim mạch, BVĐK Tâm Anh Hà Nội.'), 'CK0005', N'Đang công tác', NULL , 'dcl50');
REM INSERTING into BENH
SET DEFINE OFF;
INSERT INTO BENH VALUES ('B0001', N'Cúm');
INSERT INTO BENH VALUES ('B0002', N'Viêm phổi');
INSERT INTO BENH VALUES ('B0003', N'Lao');
INSERT INTO BENH VALUES ('B0004', N'COVID-19');
INSERT INTO BENH VALUES ('B0005', N'Sởi');
INSERT INTO BENH VALUES ('B0006', N'Quai bị');
INSERT INTO BENH VALUES ('B0007', N'Rubella');
INSERT INTO BENH VALUES ('B0008', N'Thuỷ đậu');
INSERT INTO BENH VALUES ('B0009', N'Ho gà');
INSERT INTO BENH VALUES ('B0010', N'Viêm não Nhật Bản');
INSERT INTO BENH VALUES ('B0011', N'Tay chân miệng');
INSERT INTO BENH VALUES ('B0012', N'Bệnh dại');
INSERT INTO BENH VALUES ('B0013', N'Đau mắt hột ');
INSERT INTO BENH VALUES ('B0014', N'Tả');
INSERT INTO BENH VALUES ('B0015', N'Thương hàn');
INSERT INTO BENH VALUES ('B0016', N'Lỵ');
INSERT INTO BENH VALUES ('B0017', N'Viêm gan A');
INSERT INTO BENH VALUES ('B0018', N'Viêm gan B');
INSERT INTO BENH VALUES ('B0019', N'Viêm gan C');
INSERT INTO BENH VALUES ('B0020', N'Rotavirus');
INSERT INTO BENH VALUES ('B0021', N'HIV/AIDS');
INSERT INTO BENH VALUES ('B0022', N'Bệnh lậu');
INSERT INTO BENH VALUES ('B0023', N'Giang mai');
INSERT INTO BENH VALUES ('B0024', N'Chlamydia');
INSERT INTO BENH VALUES ('B0025', N'Mụn cóc sinh dục');
INSERT INTO BENH VALUES ('B0026', N'Sốt xuất huyết');
INSERT INTO BENH VALUES ('B0027', N'Sốt rét');
INSERT INTO BENH VALUES ('B0028', N'Zika');
INSERT INTO BENH VALUES ('B0029', N'Sốt vàng da');
INSERT INTO BENH VALUES ('B0030', N'Viêm da do virus');
INSERT INTO BENH VALUES ('B0031', N'Viêm kết mạc');
INSERT INTO BENH VALUES ('B0032', N'Nhiễm nấm da');
INSERT INTO BENH VALUES ('B0033', N'Than');
INSERT INTO BENH VALUES ('B0034', N'Viêm màng não do não mô cầu');
INSERT INTO BENH VALUES ('B0035', N'Uốn ván');
INSERT INTO BENH VALUES ('B0036', N'Phong');
INSERT INTO BENH VALUES ('B0037', N'Bệnh dịch hạch');
INSERT INTO BENH VALUES ('B0038', N'Ebola');
INSERT INTO BENH VALUES ('B0039', N'Marburg');
INSERT INTO BENH VALUES ('B0040', N'Viêm gan E');
INSERT INTO BENH VALUES ('B0041', N'Hantavirus');
INSERT INTO BENH VALUES ('B0042', N'Giun đũa');
INSERT INTO BENH VALUES ('B0043', N'Sán lá gan');
INSERT INTO BENH VALUES ('B0044', N'Sán dây');
INSERT INTO BENH VALUES ('B0045', N'Nhiễm nấm Coccidioides');
INSERT INTO BENH VALUES ('B0046', N'Nhiễm nấm Histoplasma');
INSERT INTO BENH VALUES ('B0047', N'Nhiễm nấm Cryptococcus');
INSERT INTO BENH VALUES ('B0048', N'Khác');
REM INSERTING into BENHNHAN
SET DEFINE OFF;
INSERT INTO BENHNHAN VALUES ('BN0001', N'Trần Trương Tuấn Phát', N'Nam', N'46/6 Cộng Hòa, Phường 13, Quận Tân Bình, TP Hồ Chí Minh', '1997', 'tttp1', '0226979476');
INSERT INTO BENHNHAN VALUES ('BN0002', N'Nguyễn Quốc Thái', N'Nam', N'104 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '2003', 'nqt2', '0258522796');
INSERT INTO BENHNHAN VALUES ('BN0003', N'Đỗ Huy Ngọc Trinh', N'Nữ', N'202 Đ. Trương Định, Tương Mai, Hai Bà Trưng, Hà Nội', '1996', 'dhnt3', '0517034901');
INSERT INTO BENHNHAN VALUES ('BN0004', N'Trương Văn Bích Ngọc', N'Nữ', N'27 Hai Bà Trưng, Bến Nghé, Quận 1, Hồ Chí Minh', '1978', 'tvbn4', '0012200884');
INSERT INTO BENHNHAN VALUES ('BN0005', N'Mai Quang Hà My', N'Nữ', N'248 Võ Văn Tần, Phường 5, Quận 3, Hồ Chí Minh', '1975', 'mqhm5', '0278250452');
INSERT INTO BENHNHAN VALUES ('BN0006', N'Triệu Đức An', N'Nam', N'20 Lê Thánh Tông, Cẩm Sơn, Hội An, Quảng Nam, Việt Nam', '1978', 'tda6', '0127062401');
INSERT INTO BENHNHAN VALUES ('BN0007', N'Giang Phúc Quyết', N'Nam', N'58 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '1954', 'gpq7', '0269360334');
INSERT INTO BENHNHAN VALUES ('BN0008', N'Phùng Công Đông', N'Nam', N'404 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1987', 'pcd8', '0675041817');
INSERT INTO BENHNHAN VALUES ('BN0009', N'Tống Văn Xuân', N'Nam', N'85 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1974', 'tvx9', '0625793114');
INSERT INTO BENHNHAN VALUES ('BN0010', N'Phùng Thành Thùy Linh', N'Nữ', N'45 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1990', 'pttl10', '0562583388');
INSERT INTO BENHNHAN VALUES ('BN0011', N'Trương Minh Hà', N'Nữ', N'31 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1973', 'tmh11', '0084561757');
INSERT INTO BENHNHAN VALUES ('BN0012', N'Phù Huy Ngọc Ánh', N'Nữ', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1975', 'phna12', '0378969265');
INSERT INTO BENHNHAN VALUES ('BN0013', N'Lưu Hoàng Thị Hương', N'Nữ', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1974', 'lhth13', '0855936553');
INSERT INTO BENHNHAN VALUES ('BN0014', N'Trịnh Hữu Vũ', N'Nam', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2004', 'thv14', '0987157069');
INSERT INTO BENHNHAN VALUES ('BN0015', N'Viễn Nguyễn Quang', N'Nam', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '1994', 'vnq15', '0481340734');
INSERT INTO BENHNHAN VALUES ('BN0016', N'Ngụy Phúc Bảo', N'Nam', N'281 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1990', 'npb16', '0824454073');
INSERT INTO BENHNHAN VALUES ('BN0017', N'Sái Hoàng Nhật', N'Nam', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1999', 'shn17', '0226979476');
INSERT INTO BENHNHAN VALUES ('BN0018', N'Vi Thị Kiên', N'Nữ', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1997', 'vtk18', '0083703932');
INSERT INTO BENHNHAN VALUES ('BN0019', N'Hà Thị Loan', N'Nữ', N'202 Đ. Tô Hiến Thành, Phường 15, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '1967', 'htl19', '0168823739');
INSERT INTO BENHNHAN VALUES ('BN0020', N'Cung Đình Phú', N'Nam', N'24 Phạm Nhữ Tăng, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2017', 'cdp20', '0002620708');
INSERT INTO BENHNHAN VALUES ('BN0021', N'Tô Đình Long', N'Nam', N'Ng. 1 800A, Nghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam', '1999', 'tdl21', '0258522796');
INSERT INTO BENHNHAN VALUES ('BN0022', N'Tô Văn Khang', N'Nam', N'226, Đường Hà Huy Tập, Phường Hòa Khê, Quận Thanh Khê, Hòa Khê, Thanh Khê, Đà Nẵng, Việt Nam', '2021', 'tvk22', '0407658210');
INSERT INTO BENHNHAN VALUES ('BN0023', N'Cáp Hoàng Minh Châu', N'Nữ', N'16F/B1 Ba Tháng Hai Tổ 40 KP 6, Phường 14, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '1975', 'chmc23', '0815421991');
INSERT INTO BENHNHAN VALUES ('BN0024', N'Trình Quang Thái', N'Nam', N'237 Đ. Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '1961', 'tqt24', '0841478808');
INSERT INTO BENHNHAN VALUES ('BN0025', N'Ngụy Hoàng Tuấn', N'Nam', N'249 Hà Huy Tập, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1965', 'nht25', '0552702699');
INSERT INTO BENHNHAN VALUES ('BN0026', N'Tô Hoàng Vy', N'Nữ', N'578 Đ. Nguyễn Chí Thanh, Phường 7, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', '1984', 'thv26', '0619899167');
INSERT INTO BENHNHAN VALUES ('BN0027', N'Nguyễn Ngọc Phong', N'Nam', N'25 Ngõ 329 Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội 100000, Việt Nam', '1979', 'nnp27', '0766638154');
INSERT INTO BENHNHAN VALUES ('BN0028', N'Triệu Phúc Thái', N'Nam', N'C4 Cư Xá Phú Thọ Hoà, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1976', 'tpt28', '0785467500');
INSERT INTO BENHNHAN VALUES ('BN0029', N'Tiết Hoàng Thùy Linh', N'Nữ', N'36 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Việt Nam', '1980', 'thtl29', '0457679418');
INSERT INTO BENHNHAN VALUES ('BN0030', N'Phí Nguyễn Ngọc Lan', N'Nữ', N'99B Thái Bình, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1986', 'pnnl30', '0246071750');
INSERT INTO BENHNHAN VALUES ('BN0031', N'Võ Hoàng Việt', N'Nam', N'36/23 Hẻm 36 Đồng Khởi, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2016', 'vhv31', '0345324336');
INSERT INTO BENHNHAN VALUES ('BN0032', N'Hàm Thị Văn', N'Nam', N'203 Nguyễn Văn Linh, TT. Núi Thành, Núi Thành, Quảng Nam 550000, Việt Nam', '1992', 'htv32', '0201493281');
INSERT INTO BENHNHAN VALUES ('BN0033', N'Địch Thị Quỳnh Nga', N'Nữ', N'104 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1963', 'dtqn33', '0544045347');
INSERT INTO BENHNHAN VALUES ('BN0034', N'Lưu Thành Văn', N'Nam', N'33 Đ. Hoàng Diệu, Phường 12, Quận 4, Thành phố Hồ Chí Minh 700000, Việt Nam', '1974', 'ltv34', '0250832780');
INSERT INTO BENHNHAN VALUES ('BN0035', N'Giang Văn Vy', N'Nam', N'28 Hàm Nghi, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Việt Nam', '2004', 'gvv35', '0072349208');
INSERT INTO BENHNHAN VALUES ('BN0036', N'Đồng Thị Hà My', N'Nữ', N'71-73-75 Hai Bà Trưng, Street, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1956', 'dthm36', '0332378390');
INSERT INTO BENHNHAN VALUES ('BN0037', N'Vi Phúc Thanh Hương', N'Nữ', N'59 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '2006', 'vpth37', '0472037078');
INSERT INTO BENHNHAN VALUES ('BN0038', N'Cung Hoàng Ngọc Trinh', N'Nữ', N'Ngõ 30 Đường Phạm Văn Đồng, Mai Dịch, Bắc Từ Liêm, Hà Nội 10000, Việt Nam', '1997', 'chnt38', '0703461097');
INSERT INTO BENHNHAN VALUES ('BN0039', N'Viên Thị Thắng', N'Nam', N'405 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1955', 'vtt39', '0704383494');
INSERT INTO BENHNHAN VALUES ('BN0040', N'Lý Hữu Trí', N'Nam', N'86 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1979', 'lht40', '0204581339');
INSERT INTO BENHNHAN VALUES ('BN0041', N'Đỗ Văn Ngọc Diệp', N'Nữ', N'46 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1956', 'dvnd41', '0809874862');
INSERT INTO BENHNHAN VALUES ('BN0042', N'Ngô Đình Hoa', N'Nữ', N'32 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1996', 'ndh42', '0143825471');
INSERT INTO BENHNHAN VALUES ('BN0043', N'Mã Văn Thu', N'Nam', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1998', 'mvt43', '0282318547');
INSERT INTO BENHNHAN VALUES ('BN0044', N'Đậu Anh Bảo', N'Nam', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1979', 'dab44', '0579532527');
INSERT INTO BENHNHAN VALUES ('BN0045', N'Tạ Hoàng Tuấn', N'Nam', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1955', 'tht45', '0895025939');
INSERT INTO BENHNHAN VALUES ('BN0046', N'Mai Văn Phương', N'Nam', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '1965', 'mvp46', '0342615880');
INSERT INTO BENHNHAN VALUES ('BN0047', N'Khúc Thành Anh', N'Nam', N'282 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1979', 'kta47', '0746131570');
INSERT INTO BENHNHAN VALUES ('BN0048', N'Phạm Huy Ngọc Ánh', N'Nữ', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1990', 'phna48', '0122983232');
INSERT INTO BENHNHAN VALUES ('BN0049', N'Ôn Thị Trung', N'Nữ', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2008', 'ott49', '0825794952');
INSERT INTO BENHNHAN VALUES ('BN0050', N'Nhâm Duy Loan', N'Nữ', N'203 Đ. Tô Hiến Thành, Phường 15, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '1969', 'ndl50', '0746554697');
INSERT INTO BENHNHAN VALUES ('BN0051', N'Khúc Hoàng Phúc', N'Nam', N'25 Phạm Nhữ Tăng, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2018', 'khp51', '0282437723');
INSERT INTO BENHNHAN VALUES ('BN0052', N'Phù Văn Thanh Hương', N'Nữ', N'Ng. 1 800A, Nghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam', '1950', 'pvth52', '0795438089');
INSERT INTO BENHNHAN VALUES ('BN0053', N'Tôn Công Hà', N'Nam', N'226, Đường Hà Huy Tập, Phường Hòa Khê, Quận Thanh Khê, Hòa Khê, Thanh Khê, Đà Nẵng, Việt Nam', '2016', 'tch53', '0163671750');
INSERT INTO BENHNHAN VALUES ('BN0054', N'Đàm Ngọc Yến', N'Nữ', N'16F/B1 Ba Tháng Hai Tổ 40 KP 6, Phường 14, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '2015', 'dny54', '0571144640');
INSERT INTO BENHNHAN VALUES ('BN0055', N'Doãn Anh Minh Tuấn', N'Nam', N'238 Đ. Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '1971', 'damt55', '0102831102');
INSERT INTO BENHNHAN VALUES ('BN0056', N'Tô Hoài Hoa', N'Nữ', N'250 Hà Huy Tập, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1983', 'thh56', '0167098927');
INSERT INTO BENHNHAN VALUES ('BN0057', N'Lâm Văn Linh', N'Nam', N'579 Đ. Nguyễn Chí Thanh, Phường 7, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', '1996', 'lvl57', '0342984493');
INSERT INTO BENHNHAN VALUES ('BN0058', N'Hà Công Tân', N'Nam', N'26 Ngõ 329 Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội 100000, Việt Nam', '1997', 'hct58', '0097678943');
INSERT INTO BENHNHAN VALUES ('BN0059', N'Trịnh Thị Hoàng', N'Nữ', N'C4 Cư Xá Phú Thọ Hoà, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2005', 'tth59', '0329960334');
INSERT INTO BENHNHAN VALUES ('BN0060', N'Mai Phúc Long', N'Nam', N'37 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Việt Nam', '1963', 'mpl60', '0578597387');
INSERT INTO BENHNHAN VALUES ('BN0061', N'Tôn Văn Kim', N'Nam', N'99B Thái Bình, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1986', 'tvk61', '0342880951');
INSERT INTO BENHNHAN VALUES ('BN0062', N'Cù Hữu Nhật', N'Nam', N'36/23 Hẻm 36 Đồng Khởi, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2003', 'chn62', '0812499826');
INSERT INTO BENHNHAN VALUES ('BN0063', N'Quản Văn Đức', N'Nam', N'204 Nguyễn Văn Linh, TT. Núi Thành, Núi Thành, Quảng Nam 550000, Việt Nam', '2000', 'qvd63', '0245767912');
INSERT INTO BENHNHAN VALUES ('BN0064', N'Phù Đình Thúy', N'Nữ', N'105 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1978', 'pdt64', '0307214330');
INSERT INTO BENHNHAN VALUES ('BN0065', N'Khắc Quang Ánh', N'Nam', N'34 Đ. Hoàng Diệu, Phường 12, Quận 4, Thành phố Hồ Chí Minh 700000, Việt Nam', '2007', 'kqa65', '0877856155');
INSERT INTO BENHNHAN VALUES ('BN0066', N'Vi Huy Lan', N'Nữ', N'Ngõ 30 Đường Phạm Văn Đồng, Mai Dịch, Bắc Từ Liêm, Hà Nội 10000, Việt Nam', '2014', 'vhl66', '0629774350');
INSERT INTO BENHNHAN VALUES ('BN0067', N'Khúc Thanh Phúc', N'Nam', N'29 Hàm Nghi, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Việt Nam', '1957', 'ktp67', '0153774013');
INSERT INTO BENHNHAN VALUES ('BN0068', N'Tô Đình Huyền Trang', N'Nữ', N'71-73-75 Hai Bà Trưng, Street, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1959', 'tdht68', '0116182693');
INSERT INTO BENHNHAN VALUES ('BN0069', N'Ngụy Thanh Thành', N'Nữ', N'60 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '1986', 'ntt69', '0459534966');
INSERT INTO BENHNHAN VALUES ('BN0070', N'Sái Thị Kim', N'Nữ', N'406 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1978', 'stk70', '0883251224');
INSERT INTO BENHNHAN VALUES ('BN0071', N'Bùi Phúc Quang', N'Nam', N'87 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1972', 'bpq71', '0614822096');
INSERT INTO BENHNHAN VALUES ('BN0072', N'Tôn Huy Lâm', N'Nam', N'47 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1975', 'thl72', '0429727318');
INSERT INTO BENHNHAN VALUES ('BN0073', N'Vương Văn Thắng', N'Nam', N'33 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1969', 'vvt73', '0304378000');
INSERT INTO BENHNHAN VALUES ('BN0074', N'Trầm Hoài Phúc', N'Nam', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1998', 'thp74', '0310541533');
INSERT INTO BENHNHAN VALUES ('BN0075', N'Bùi Thị Phúc', N'Nữ', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2003', 'btp75', '0787096071');
INSERT INTO BENHNHAN VALUES ('BN0076', N'Lâm Hoài Thùy Linh', N'Nữ', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2005', 'lhtl76', '0706015508');
INSERT INTO BENHNHAN VALUES ('BN0077', N'Văn Nguyễn Yến', N'Nữ', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '1981', 'vny77', '0313692775');
INSERT INTO BENHNHAN VALUES ('BN0078', N'Kiều Nguyễn Thanh Thảo', N'Nữ', N'283 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1999', 'kntt78', '0910926390');
INSERT INTO BENHNHAN VALUES ('BN0079', N'Văn Huy Ngọc Mai', N'Nữ', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1974', 'vhnm79', '0193535313');
INSERT INTO BENHNHAN VALUES ('BN0080', N'Khúc Hoài Khánh', N'Nam', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2001', 'khk80', '0241786228');
INSERT INTO BENHNHAN VALUES ('BN0081', N'Tôn Đức Minh', N'Nam', N'46/1A Đỗ Nhuận, Sơn Kỳ, Tân Phú, TP.HCM', '1986', 'tdm81', '0174511089');
INSERT INTO BENHNHAN VALUES ('BN0082', N'Đàm Công Ngọc Trinh', N'Nữ', N'16 P. Nguyễn Quang Bích. Cửa Đông. Hoàn Kiếm. Hà Nội 10000. Việt Nam', '1956', 'dcnt82', '0140441630');
INSERT INTO BENHNHAN VALUES ('BN0083', N'Khúc Quang Ngọc Yến', N'Nữ', N'88 Lê Văn Duyệt, Đa Kao, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1956', 'kqny83', '0898999040');
INSERT INTO BENHNHAN VALUES ('BN0084', N'Nông Phúc Hà', N'Nam', N'21 5 Tháng 6, Tổ dân phố số 16, Thị xã Lai Châu, Lai Châu, Việt Nam', '1977', 'nph84', '0008201235');
INSERT INTO BENHNHAN VALUES ('BN0085', N'Cáp Thành Long', N'Nam', N'107 Minh Khai, Phố Mới, Lào Cai, Việt Nam', '1973', 'ctl85', '0146292469');
INSERT INTO BENHNHAN VALUES ('BN0086', N'Ôn Văn Long', N'Nam', N'876 Trần Cao Vân, Thanh Khê Đông, Thanh Khê, Đà Nẵng, Việt Nam', '1981', 'ovl86', '0476426220');
INSERT INTO BENHNHAN VALUES ('BN0087', N'Nhâm Hoàng Ngọc Diệp', N'Nữ', N'Ng. 34 P. Hào Nam, Chợ Dừa, Đống Đa, Hà Nội, Việt Nam', '2002', 'nhnd87', '0120215526');
INSERT INTO BENHNHAN VALUES ('BN0088', N'Viễn Thành Mai Phương', N'Nữ', N'164 Nguyễn Thông, Bình Tâm, Tân An, Long An, Việt Nam', '1957', 'vtmp88', '0410554823');
INSERT INTO BENHNHAN VALUES ('BN0089', N'Khổng Thanh Đức', N'Nam', N'108 Thái Bình, Trần Tế Xương, TP. Nam Định, Nam Định, Việt Nam', '2017', 'ktd89', '0208293459');
INSERT INTO BENHNHAN VALUES ('BN0090', N'Mã Văn Ngọc Yến', N'Nữ', N'573 Điện Biên Phủ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2000', 'mvny90', '0550821125');
INSERT INTO BENHNHAN VALUES ('BN0091', N'Phú Phúc Ngọc Mai', N'Nữ', N'79 Đ. La Thành, Chợ Dừa, Đống Đa, Hà Nội, Việt Nam', '1971', 'ppnm91', '0608019402');
INSERT INTO BENHNHAN VALUES ('BN0092', N'Châu Anh Gia Hân', N'Nữ', N'198 Nguyễn Lương Bằng, Quang Trung, Đống Đa, Hà Nội, Việt Nam', '2024', 'cagh92', '0780329453');
INSERT INTO BENHNHAN VALUES ('BN0093', N'Khổng Hoàng Thái', N'Nam', N'12 Hà Liễu, Ph.Gia Cẩm, Thành phố Việt Trì, Phú Thọ, Việt Nam', '2003', 'kht93', '0506997384');
INSERT INTO BENHNHAN VALUES ('BN0094', N'Duy Thị Thảo', N'Nữ', N'112 Đ. Đinh Tiên Hoàng, Đa Kao, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1975', 'dtt94', '0168753181');
INSERT INTO BENHNHAN VALUES ('BN0095', N'Bàng Minh Diệu', N'Nam', N'9 Đ. Phan Đăng Lưu, Phường 3, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '2012', 'bmd95', '0052062068');
INSERT INTO BENHNHAN VALUES ('BN0096', N'Khải Công Quốc', N'Nam', N'12 Nơ Trang Long, Phường 14, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '2003', 'kcq96', '0277797848');
INSERT INTO BENHNHAN VALUES ('BN0097', N'Thi Tuấn Hoài', N'Nam', N'90 Phạm Văn Đồng, Nghĩa Chánh Bắc, Quảng Ngãi, Việt Nam', '2010', 'tth97', '0918765429');
INSERT INTO BENHNHAN VALUES ('BN0098', N'Ứng Hoàng Vũ', N'Nam', N'1 Đ. Phan Đăng Lưu, phường 03, Bình Thạnh, Thành phố Hồ Chí Minh 72300, Việt Nam', '1998', 'uhv98', '0801991858');
INSERT INTO BENHNHAN VALUES ('BN0099', N'Tiêu Thị Bảo', N'Nữ', N'105 Hai Bà Trưng, Phường 3, Quảng Trị, Việt Nam', '1982', 'ttb99', '0987497170');
INSERT INTO BENHNHAN VALUES ('BN0100', N'Tiêu Đức Thùy Linh', N'Nữ', N'10 Lê Thánh Tông, Thắng Lợi, Thành phố Buôn Ma Thuột, Đắk Lắk, Việt Nam', '2005', 'tdtl100', '0063082928');
INSERT INTO BENHNHAN VALUES ('BN0101', N'Phạm Huy Tùng', N'Nam', N'122 Nguyễn Lương Bằng, Quang Trung, Đống Đa, Hà Nội, Việt Nam', '2003', 'pht101', '0269628526');
INSERT INTO BENHNHAN VALUES ('BN0102', N'Lê Tuấn Tuyết', N'Nữ', N'258 Cù Chính Lan, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1981', 'ltt102', '0797282312');
INSERT INTO BENHNHAN VALUES ('BN0103', N'Biện Huy Ngọc Diệp', N'Nữ', N'199 P. Vương Thừa Vũ, Khương Trung, Thanh Xuân, Hà Nội, Việt Nam', '1957', 'bhnd103', '0407458673');
INSERT INTO BENHNHAN VALUES ('BN0104', N'Dương Tuấn Hà Thu', N'Nam', N'132 ĐT848, Phường An Hoà, Sa Đéc, Đồng Tháp, Việt Nam', '1967', 'dtht104', '0829992479');
INSERT INTO BENHNHAN VALUES ('BN0105', N'Nông Thanh Tiến', N'Nam', N'87P1 Đ. Lê Văn Duyệt, Phường 3, Bình Thạnh, Thành phố Hồ Chí Minh 700000, Việt Nam', '2018', 'ntt105', '0173226779');
INSERT INTO BENHNHAN VALUES ('BN0106', N'Tiết Văn Hoài', N'Nam', N'24 Bạch Đằng, P. Nguyễn Trãi, Hà Giang, Việt Nam', '1985', 'tvh106', '0396977682');
INSERT INTO BENHNHAN VALUES ('BN0107', N'Phú Thịnh Thùy Linh', N'Nữ', N'164 / 44 P. Vương Thừa Vũ, Khương Trung, Thanh Xuân, Hà Nội, Việt Nam', '1970', 'pttl107', '0930946142');
INSERT INTO BENHNHAN VALUES ('BN0108', N'Đồng Minh Bảo', N'Nam', N'5 Nguyễn Tri Phương, Quán Thánh, Ba Đình, Hà Nội, Việt Nam', '1960', 'dmb108', '0325594507');
INSERT INTO BENHNHAN VALUES ('BN0109', N'Trịnh Huy Quốc', N'Nam', N'745 Trần Cao Vân, Thanh Khê Đông, Hải Châu, Đà Nẵng, Việt Nam', '1986', 'thq109', '0305927970');
INSERT INTO BENHNHAN VALUES ('BN0110', N'Khổng Quang Ánh', N'Nam', N'1/2 Phó Đức Chính, Phường 1, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '2017', 'kqa110', '0971753833');
INSERT INTO BENHNHAN VALUES ('BN0111', N'Biện Văn Vy', N'Nữ', N'93 Bà Triệu, P. Thanh Trung, Thành phố Hải Dương, Hải Dương, Việt Nam', '2001', 'bvv111', '0775722224');
INSERT INTO BENHNHAN VALUES ('BN0112', N'Châu Hoài Loan', N'Nữ', N'8 Lê Quang Định, Phường 14, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '1994', 'chl112', '0516178668');
INSERT INTO BENHNHAN VALUES ('BN0113', N'Vi Hoài Đức', N'Nam', N'58 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '1964', 'vhd113', '0102625379');
INSERT INTO BENHNHAN VALUES ('BN0114', N'Bùi Văn Phú', N'Nam', N'404 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1985', 'bvp114', '0095123285');
INSERT INTO BENHNHAN VALUES ('BN0115', N'Tri Thanh Quyết', N'Nam', N'85 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2001', 'ttq115', '0421335164');
INSERT INTO BENHNHAN VALUES ('BN0116', N'Vương Thị Tùng', N'Nữ', N'45 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1963', 'vtt116', '0894842441');
INSERT INTO BENHNHAN VALUES ('BN0117', N'Chu Tuấn Ngọc Mai', N'Nữ', N'31 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1982', 'ctnm117', '0129522753');
INSERT INTO BENHNHAN VALUES ('BN0118', N'Đoàn Tuấn Yến', N'Nữ', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1977', 'dty118', '0199215687');
INSERT INTO BENHNHAN VALUES ('BN0119', N'Bàng Thị Phương Anh', N'Nữ', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1964', 'btpa119', '0097803805');
INSERT INTO BENHNHAN VALUES ('BN0120', N'Đậu Văn Thùy Linh', N'Nữ', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2017', 'dvtl120', '0337004353');
INSERT INTO BENHNHAN VALUES ('BN0121', N'Thi Quang Khánh', N'Nam', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '1990', 'tqk121', '0318165951');
INSERT INTO BENHNHAN VALUES ('BN0122', N'Kiều Thị Vy', N'Nữ', N'281 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1950', 'ktv122', '0214533954');
INSERT INTO BENHNHAN VALUES ('BN0123', N'Chu Hoài Khánh', N'Nam', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2002', 'chk123', '0381252162');
INSERT INTO BENHNHAN VALUES ('BN0124', N'Khổng Văn Ngọc Mai', N'Nữ', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1996', 'kvnm124', '0797527593');
INSERT INTO BENHNHAN VALUES ('BN0125', N'Kiều Ngọc Trung', N'Nữ', N'202 Đ. Tô Hiến Thành, Phường 15, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '1975', 'knt125', '0370920560');
INSERT INTO BENHNHAN VALUES ('BN0126', N'Thạch Ngọc Trang', N'Nữ', N'24 Phạm Nhữ Tăng, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1995', 'tnt126', '0214711316');
INSERT INTO BENHNHAN VALUES ('BN0127', N'Hà Ngọc Minh', N'Nữ', N'Ng. 1 800A, Nghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam', '1992', 'hnm127', '0552750061');
INSERT INTO BENHNHAN VALUES ('BN0128', N'Bùi Duy Long', N'Nam', N'226, Đường Hà Huy Tập, Phường Hòa Khê, Quận Thanh Khê, Hòa Khê, Thanh Khê, Đà Nẵng, Việt Nam', '2017', 'bdl128', '0728386149');
INSERT INTO BENHNHAN VALUES ('BN0129', N'Thạch Thành Khánh', N'Nam', N'16F/B1 Ba Tháng Hai Tổ 40 KP 6, Phường 14, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '1995', 'ttk129', '0881852173');
INSERT INTO BENHNHAN VALUES ('BN0130', N'Vương Thịnh Thùy Linh', N'Nữ', N'237 Đ. Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '2014', 'vttl130', '0184216450');
INSERT INTO BENHNHAN VALUES ('BN0131', N'Khổng Ngọc Hải', N'Nữ', N'249 Hà Huy Tập, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1987', 'knh131', '0877204484');
INSERT INTO BENHNHAN VALUES ('BN0132', N'Nghiêm Nguyễn Tiến', N'Nam', N'578 Đ. Nguyễn Chí Thanh, Phường 7, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', '1958', 'nnt132', '0366631894');
INSERT INTO BENHNHAN VALUES ('BN0133', N'Ngụy Đình Ngọc Diệp', N'Nữ', N'25 Ngõ 329 Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội 100000, Việt Nam', '1971', 'ndnd133', '0921963284');
INSERT INTO BENHNHAN VALUES ('BN0134', N'Dư Hoài Phú', N'Nam', N'C4 Cư Xá Phú Thọ Hoà, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1989', 'dhp134', '0327263296');
INSERT INTO BENHNHAN VALUES ('BN0135', N'Dư Đình Trường', N'Nam', N'36 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Việt Nam', '2017', 'ddt135', '0008666947');
INSERT INTO BENHNHAN VALUES ('BN0136', N'Tôn Minh Nhung', N'Nữ', N'99B Thái Bình, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1953', 'tmn136', '0490479215');
INSERT INTO BENHNHAN VALUES ('BN0137', N'Hà Tuấn Ngân', N'Nữ', N'36/23 Hẻm 36 Đồng Khởi, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2002', 'htn137', '0556593193');
INSERT INTO BENHNHAN VALUES ('BN0138', N'Bàng Văn Thảo', N'Nam', N'203 Nguyễn Văn Linh, TT. Núi Thành, Núi Thành, Quảng Nam 550000, Việt Nam', '1977', 'bvt138', '0767181270');
INSERT INTO BENHNHAN VALUES ('BN0139', N'Ứng Huy Bình', N'Nam', N'104 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1988', 'hb139', '0940025221');
INSERT INTO BENHNHAN VALUES ('BN0140', N'Đặng Văn Thuý', N'Nữ', N'33 Đ. Hoàng Diệu, Phường 12, Quận 4, Thành phố Hồ Chí Minh 700000, Việt Nam', '1982', 'dvt140', '0669925124');
INSERT INTO BENHNHAN VALUES ('BN0141', N'Tống Quang Tùng', N'Nam', N'Ngõ 30 Đường Phạm Văn Đồng, Mai Dịch, Bắc Từ Liêm, Hà Nội 10000, Việt Nam', '1993', 'tqt141', '0689185491');
INSERT INTO BENHNHAN VALUES ('BN0142', N'Đậu Thành Hoàng', N'Nam', N'28 Hàm Nghi, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Việt Nam', '1995', 'dth142', '0602859364');
INSERT INTO BENHNHAN VALUES ('BN0143', N'Giang Phúc Gia Hân', N'Nữ', N'71-73-75 Hai Bà Trưng, Street, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1992', 'gpgh143', '0501315147');
INSERT INTO BENHNHAN VALUES ('BN0144', N'Phú Đình Nguyên', N'Nam', N'368 Đ. Hùng Vương. Phường 3. Tân An. Long An. Việt Nam', '2014', 'pdn144', '0133548778');
INSERT INTO BENHNHAN VALUES ('BN0145', N'Tống Thịnh Trung', N'Nam', N'H55 Nguyễn Thị Nghĩa, Phường 2, Thành phố Đà Lạt, Lâm Đồng 66109, Việt Nam', '1986', 'ttt145', '0987988405');
INSERT INTO BENHNHAN VALUES ('BN0146', N'Mai Tuấn Tùng', N'Nam', N'92 Trương Thị Sáu, Phường 3, Tân An, Long An, Việt Nam', '1995', 'mtt146', '0633642440');
INSERT INTO BENHNHAN VALUES ('BN0147', N'Mạc Thành Thắng', N'Nam', N'Đường N3, Lộc Hoà, TP. Nam Định, Nam Định, Việt Nam', '1989', 'mtt147', '0361601677');
INSERT INTO BENHNHAN VALUES ('BN0148', N'Viên Công Quyết', N'Nam', N'Số 40 Đại lộ Xô Viết Nghệ, Nghi Phú, Thành phố Vinh, Nghệ An, Việt Nam', '1950', 'vcq148', '0791969015');
INSERT INTO BENHNHAN VALUES ('BN0149', N'Đồng Tuấn Phúc', N'Nam', N'89 đường Ninh Tôn, Ninh Phú, Ninh Bình, 08000, Việt Nam', '2000', 'dtp149', '0108364118');
INSERT INTO BENHNHAN VALUES ('BN0150', N'Đối Đức Thắng', N'Nam', N'1E Thống Nhất, Đài Sơn, Phan Rang-Tháp Chàm, Ninh Thuận, Việt Nam', '1977', 'ddt150', '0090471097');
INSERT INTO BENHNHAN VALUES ('BN0151', N'Tôn Thành Hà', N'Nam', N'98C6+H48, Hy Cương, Thành phố Việt Trì, Phú Thọ, Việt Nam', '2010', 'tth151', '0504886113');
INSERT INTO BENHNHAN VALUES ('BN0152', N'Tô Hoàng Đạt', N'Nam', N'154 Đ. Nguyễn Trãi, Phường 5, Tuy Hòa, Phú Yên 56100, Việt Nam', '1986', 'thd152', '0397588978');
INSERT INTO BENHNHAN VALUES ('BN0153', N'Khúc Văn Nhật', N'Nam', N'5RX7+MGF, Mỹ Thuỷ, Lệ Thủy, Quảng Bình, Việt Nam', '1994', 'kvn153', '0573964998');
INSERT INTO BENHNHAN VALUES ('BN0154', N'Tài Ngọc Hà', N'Nữ', N'V7F9+36 Điện Bàn, Quảng Nam, Việt Nam', '1994', 'tnh154', '0056185883');
INSERT INTO BENHNHAN VALUES ('BN0155', N'Phí Thịnh Ngọc Lan', N'Nữ', N'4VHF+MPC, Nghĩa Hà, Tư Nghĩa, Quảng Ngãi, Việt Nam', '1999', 'ptnl155', '0888202438');
INSERT INTO BENHNHAN VALUES ('BN0156', N'Quách Quang Hạnh', N'Nam', N'VRXH+W4H, Unnamed Road, Liên Hoà, Yên Hưng, Quảng Ninh, Việt Nam', '1971', 'qqh156', '0461544763');
INSERT INTO BENHNHAN VALUES ('BN0157', N'Trần Văn Cường', N'Nam', N'WH88+45W, Hòa Sơn, Lương Sơn, Hòa Bình, Việt Nam', '1992', 'tvc157', '0648804426');
INSERT INTO BENHNHAN VALUES ('BN0158', N'Văn Công Phúc', N'Nam', N'Nguyễn Hữu Thọ, Phường 3, Tây Ninh, Việt Nam', '1953', 'vcp158', '0007611148');
INSERT INTO BENHNHAN VALUES ('BN0159', N'Văn Ngọc Thanh', N'Nữ', N'Phạm Quang Lịch Lý Bôn, Tiền Phong, Thái Bình, 61000, Việt Nam', '2008', 'vnt159', '0823674748');
INSERT INTO BENHNHAN VALUES ('BN0160', N'Tri Hữu Lan', N'Nữ', N'HR8R+4X6, Đ. Việt Bắc, Phú Xá, Thành phố Thái Nguyên, Thái Nguyên, Việt Nam', '1972', 'thl160', '0364480461');
INSERT INTO BENHNHAN VALUES ('BN0161', N'Cao Thị Ngọc Diệp', N'Nữ', N'50 Ngô Đức, TT. Nhồi, Đông Sơn, Thanh Hoá, Việt Nam', '1996', 'ctnd161', '0836986289');
INSERT INTO BENHNHAN VALUES ('BN0162', N'Bàng Hữu Ngân', N'Nữ', N'38 An Dương Vương, An Cựu, Thành phố Huế, Thừa Thiên Huế, Việt Nam', '2012', 'bhn162', '0263426923');
INSERT INTO BENHNHAN VALUES ('BN0163', N'Cáp Hoài Lan', N'Nữ', N'9FP4+572, Đăng Hưng Phước, Chợ Gạo, Tiền Giang, Việt Nam', '2016', 'chl163', '0869794224');
INSERT INTO BENHNHAN VALUES ('BN0164', N'Hàm Nguyễn Thuý', N'Nữ', N'492f Võ Văn Kiệt, Phường 1, Trà Vinh, Việt Nam', '1983', 'hnt164', '0905128719');
INSERT INTO BENHNHAN VALUES ('BN0165', N'Tống Phúc Hồng Loan', N'Nữ', N'48 Nguyễn Văn Cừ, P. Minh Xuân, Tuyên Quang, Việt Nam', '2010', 'tphl165', '0553712241');
INSERT INTO BENHNHAN VALUES ('BN0166', N'Ôn Đức Văn', N'Nam', N'294 Nguyễn Văn Thiệt, Phường 3, Vĩnh Long, Việt Nam', '1953', 'odv166', '0539684641');
INSERT INTO BENHNHAN VALUES ('BN0167', N'Phù Văn Quỳnh Nga', N'Nữ', N'Ngã 5 - Nguyễn Tất Thành, Trần Phú, Liên Bảo, Vĩnh Yên, Vĩnh Phúc, Việt Nam', '1953', 'pvqn167', '0217947183');
INSERT INTO BENHNHAN VALUES ('BN0168', N'Khúc Hoài Thanh Thảo', N'Nữ', N'Đá Bia, Tổ 4, Thành phố Yên Bái, Yên Bái, Việt Nam', '1958', 'khtt168', '0976644028');
INSERT INTO BENHNHAN VALUES ('BN0169', N'Trịnh Nguyễn Phương', N'Nữ', N'M89M+GJ6, Phú An, Phú Tân, An Giang, Việt Nam', '1979', 'tnp169', '0228768349');
INSERT INTO BENHNHAN VALUES ('BN0170', N'Địch Thành Đức', N'Nam', N'783W+C27, Lộ Cơ Khí, Bình Phú, Bến Tre, Việt Nam', '2008', 'dtd170', '0111625667');
INSERT INTO BENHNHAN VALUES ('BN0171', N'Bàng Hoàng Phúc', N'Nam', N'376 Nguyễn An Ninh, Dĩ An, Bình Dương, Việt Nam', '1990', 'bhp171', '0243020511');
INSERT INTO BENHNHAN VALUES ('BN0172', N'Đồng Thanh Quyết', N'Nam', N'11 Huỳnh Tấn Phát, Đống Đa, Thành phố Qui Nhơn, Bình Định 560000, Việt Nam', '1973', 'dtq172', '0835894577');
INSERT INTO BENHNHAN VALUES ('BN0173', N'Tô Thị Hải', N'Nữ', N'GWM6+FVW, Phường Tân Thiện, Đồng Xoài, Bình Phước, Việt Nam', '1962', 'tth173', '0046451706');
INSERT INTO BENHNHAN VALUES ('BN0174', N'Tiết Thịnh Thùy Linh', N'Nữ', N'Nguyễn Minh Châu, Mũi Né, Thành phố Phan Thiết, Bình Thuận, Việt Nam', '1956', 'tttl174', '0191383193');
INSERT INTO BENHNHAN VALUES ('BN0175', N'Hứa Huy Minh Tuấn', N'Nam', N'36 Điện Biên Phủ, Điện Biên, Ba Đình, Hà Nội, Việt Nam', '2022', 'hhmt175', '0007319128');
INSERT INTO BENHNHAN VALUES ('BN0176', N'Đối Minh Tuấn', N'Nam', N'63 Đình Tân Khai, Bình Trị Đông, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1955', 'dmt176', '0708439179');
INSERT INTO BENHNHAN VALUES ('BN0177', N'Tri Hoài Vy', N'Nữ', N'185 Bùi Tá Hán, Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng, Việt Nam', '2000', 'thv177', '0312223054');
INSERT INTO BENHNHAN VALUES ('BN0178', N'Văn Nguyễn Huyền Trang', N'Nữ', N'42/4c Đ. Bình Trị Đông, Bình Trị Đông, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1951', 'vnht178', '0205079930');
INSERT INTO BENHNHAN VALUES ('BN0179', N'Lại Anh Thùy Linh', N'Nữ', N'Ng. 82 P. Kim Mã, Kim Mã, Ba Đình, Hà Nội, Việt Nam', '1996', 'latl179', '0366925580');
INSERT INTO BENHNHAN VALUES ('BN0180', N'Hồ Phúc Đức', N'Nam', N'487 Chiến Lược, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1999', 'hpd180', '0586063012');
INSERT INTO BENHNHAN VALUES ('BN0181', N'Tôn Văn Quân', N'Nam', N'Lô 15B3, 1 Bùi Tá Hán, Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng, Việt Nam', '1993', 'tvq181', '0038287534');
INSERT INTO BENHNHAN VALUES ('BN0182', N'Đinh Huy Ngọc', N'Nam', N'65 Trung Lương 14, Hoà Xuân, Cẩm Lệ, Đà Nẵng, Việt Nam', '1994', 'dhn182', '0083557469');
INSERT INTO BENHNHAN VALUES ('BN0183', N'Hàm Thị Tiến', N'Nam', N'365 Đ. Trường Chinh, Phường 14, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2017', 'htt183', '0912476437');
INSERT INTO BENHNHAN VALUES ('BN0184', N'Chuẩn Huy Ngọc', N'Nam', N'143 P. Đốc Ngữ, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1971', 'chn184', '0318831456');
INSERT INTO BENHNHAN VALUES ('BN0185', N'Mai Phúc Hà', N'Nam', N'1888 C3 Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1961', 'mph185', '0636069548');
INSERT INTO BENHNHAN VALUES ('BN0186', N'Viên Minh Thúy', N'Nữ', N'281/55, Lý Thường Kiệt, Phường 15, Quận 11, Phường 14, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '1988', 'vmt186', '0904033781');
INSERT INTO BENHNHAN VALUES ('BN0187', N'Lại Ngọc Đức', N'Nam', N'298 Lý Thường Kiệt, Phường 14, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '2013', 'lnd187', '0324760018');
INSERT INTO BENHNHAN VALUES ('BN0188', N'Hồ Duy Ngọc Mai', N'Nữ', N'104 Đ. Đoàn Khuê, Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng, Việt Nam', '1982', 'hdnm188', '0422122942');
INSERT INTO BENHNHAN VALUES ('BN0189', N'Quản Văn Lan', N'Nam', N'36 Ngõ 68 Phố Phùng Chí Kiên, Nghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam', '2020', 'qvl189', '0555501220');
INSERT INTO BENHNHAN VALUES ('BN0190', N'Lê Công Ngọc Diệp', N'Nữ', N'43 Lê Hữu Khánh, Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng, Việt Nam', '1973', 'lcnd190', '0461071495');
INSERT INTO BENHNHAN VALUES ('BN0191', N'Trình Ngọc Yến', N'Nữ', N'495 Đ. Nhật Tảo, Phường 7, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '2012', 'tny191', '0849659371');
INSERT INTO BENHNHAN VALUES ('BN0192', N'Tề Phúc Tân', N'Nam', N'30 Đ. Nguyễn Văn Huyên, Quan Hoa, Cầu Giấy, Hà Nội, Việt Nam', '1982', 'tpt192', '0480271279');
INSERT INTO BENHNHAN VALUES ('BN0193', N'Quản Thành Thùy Linh', N'Nữ', N'79 Đ. Đoàn Khuê, Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng, Việt Nam', '1963', 'qttl193', '0709906931');
INSERT INTO BENHNHAN VALUES ('BN0194', N'Chuẩn Nguyễn Ngọc Lan', N'Nữ', N'80 Đ. Châu Văn Liêm, Phường 11, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', '1964', 'cnnl194', '0237757518');
INSERT INTO BENHNHAN VALUES ('BN0195', N'Đoàn Duy Trang', N'Nam', N'38 P. Khúc Thừa Dụ, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '1992', 'ddt195', '0413922535');
INSERT INTO BENHNHAN VALUES ('BN0196', N'Trình Hữu Thắng', N'Nam', N'148 Ni Sư Huỳnh Liên, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2022', 'tht196', '0549765605');
INSERT INTO BENHNHAN VALUES ('BN0197', N'Trương Minh Hà', N'Nam', N'135 Đ. Nguyễn Phong Sắc, Nghĩa Tân, Cầu Giấy, Hà Nội, Việt Nam', '2021', 'tmh197', '0991529016');
INSERT INTO BENHNHAN VALUES ('BN0198', N'Phạm Đình Lâm', N'Nam', N'110/D6 Hẻm 108 Cộng Hòa, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1978', 'pdl198', '0525735108');
INSERT INTO BENHNHAN VALUES ('BN0199', N'Khúc Đức Thị Hương', N'Nữ', N'217 Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '2024', 'kdth199', '0862357649');
INSERT INTO BENHNHAN VALUES ('BN0200', N'Ngụy Phúc Vy', N'Nữ', N'02 Trần Hữu Độ, Khuê Mỹ, Ngũ Hành Sơn, Đà Nẵng, Việt Nam', '1977', 'npv200', '0269602688');
INSERT INTO BENHNHAN VALUES ('BN0201', N'Địch Ngọc Thanh Hương', N'Nữ', N'22 Nguyễn Tất Thành, Phường 12, Quận 4, Thành phố Hồ Chí Minh, Việt Nam', '1990', 'dnth201', '0218872633');
INSERT INTO BENHNHAN VALUES ('BN0202', N'Cáp Quang Duy', N'Nam', N'289 Tây Thạnh, P. Phú Thuận, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1959', 'cqd202', '0610960483');
INSERT INTO BENHNHAN VALUES ('BN0203', N'Hà Nguyễn Quyết', N'Nam', N'Ngõ 234 Hoàng Quốc Việt, Cổ Nhuế, Cầu Giấy, Hà Nội, Việt Nam', '1970', 'hnq203', '0033342278');
INSERT INTO BENHNHAN VALUES ('BN0204', N'Vũ Huy Hà My', N'Nữ', N'106 Đ. Hồ Tùng Mậu, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1979', 'vhhm204', '0685536722');
INSERT INTO BENHNHAN VALUES ('BN0205', N'Doãn Hoàng Ngọc', N'Nam', N'39 Đ. Mạc Đĩnh Chi, Đa Kao, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1950', 'dhn205', '0250788805');
INSERT INTO BENHNHAN VALUES ('BN0206', N'Cù Quang Bích Ngọc', N'Nữ', N'58 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '1979', 'cqbn206', '0825393878');
INSERT INTO BENHNHAN VALUES ('BN0207', N'Hà Công Thanh', N'Nam', N'404 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1953', 'hct207', '0979396267');
INSERT INTO BENHNHAN VALUES ('BN0208', N'Phí Thị Tùng', N'Nữ', N'85 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2018', 'ptt208', '0674136815');
INSERT INTO BENHNHAN VALUES ('BN0209', N'Chuẩn Đức Quyết', N'Nam', N'45 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1960', 'cdq209', '0850951388');
INSERT INTO BENHNHAN VALUES ('BN0210', N'Lại Anh Hà Thu', N'Nữ', N'31 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1970', 'laht210', '0870333060');
INSERT INTO BENHNHAN VALUES ('BN0211', N'Đối Thị Thanh Hương', N'Nữ', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1963', 'dtth211', '0606854476');
INSERT INTO BENHNHAN VALUES ('BN0212', N'Mạc Văn Trung', N'Nam', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1991', 'mvt212', '0430785034');
INSERT INTO BENHNHAN VALUES ('BN0213', N'Trình Tuấn Vy', N'Nam', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1956', 'ttv213', '0799083045');
INSERT INTO BENHNHAN VALUES ('BN0214', N'Từ Văn Anh', N'Nam', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '1961', 'tva214', '0665980250');
INSERT INTO BENHNHAN VALUES ('BN0215', N'Từ Hoàng Minh', N'Nam', N'281 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1991', 'thm215', '0100803129');
INSERT INTO BENHNHAN VALUES ('BN0216', N'Khúc Thị Thúy', N'Nữ', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2015', 'ktt216', '0752434582');
INSERT INTO BENHNHAN VALUES ('BN0217', N'Viên Phúc Tân', N'Nam', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2011', 'vpt217', '0402712811');
INSERT INTO BENHNHAN VALUES ('BN0218', N'Thi Thị Ngọc Lan', N'Nữ', N'202 Đ. Tô Hiến Thành, Phường 15, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '1984', 'ttnl218', '0456893388');
INSERT INTO BENHNHAN VALUES ('BN0219', N'Đỗ Minh Kim', N'Nữ', N'24 Phạm Nhữ Tăng, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1970', 'dmk219', '0089004193');
INSERT INTO BENHNHAN VALUES ('BN0220', N'Đặng Huy Hà My', N'Nữ', N'Ng. 1 800A, Nghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam', '2011', 'dhhm220', '0670243583');
INSERT INTO BENHNHAN VALUES ('BN0221', N'Quách Thành Ngọc Yến', N'Nữ', N'226, Đường Hà Huy Tập, Phường Hòa Khê, Quận Thanh Khê, Hòa Khê, Thanh Khê, Đà Nẵng, Việt Nam', '2013', 'qtny221', '0923842261');
INSERT INTO BENHNHAN VALUES ('BN0222', N'Biện Quang Minh Châu', N'Nữ', N'16F/B1 Ba Tháng Hai Tổ 40 KP 6, Phường 14, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '1965', 'bqmc222', '0925949688');
INSERT INTO BENHNHAN VALUES ('BN0223', N'Biện Minh Phúc', N'Nam', N'237 Đ. Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '1970', 'bmp223', '0761457918');
INSERT INTO BENHNHAN VALUES ('BN0224', N'Tạ Quang Phương Anh', N'Nữ', N'249 Hà Huy Tập, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1973', 'tqpa224', '0935160118');
INSERT INTO BENHNHAN VALUES ('BN0225', N'Cáp Nguyễn Bích Ngọc', N'Nữ', N'578 Đ. Nguyễn Chí Thanh, Phường 7, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', '2014', 'cnbn225', '0137130149');
INSERT INTO BENHNHAN VALUES ('BN0226', N'Bùi Văn Xuân', N'Nam', N'25 Ngõ 329 Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội 100000, Việt Nam', '2002', 'bvx226', '0727302411');
INSERT INTO BENHNHAN VALUES ('BN0227', N'Dư Duy Cường', N'Nam', N'C4 Cư Xá Phú Thọ Hoà, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1986', 'ddc227', '0813657972');
INSERT INTO BENHNHAN VALUES ('BN0228', N'Phùng Văn Tân', N'Nam', N'36 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Việt Nam', '1968', 'pvt228', '0200458316');
INSERT INTO BENHNHAN VALUES ('BN0229', N'Mai Đình Huy', N'Nam', N'99B Thái Bình, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1957', 'mdh229', '0289046638');
INSERT INTO BENHNHAN VALUES ('BN0230', N'Hà Thành Đạt', N'Nam', N'36/23 Hẻm 36 Đồng Khởi, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1955', 'htd230', '0363470024');
INSERT INTO BENHNHAN VALUES ('BN0231', N'Hồ Ngọc Bình', N'Nữ', N'203 Nguyễn Văn Linh, TT. Núi Thành, Núi Thành, Quảng Nam 550000, Việt Nam', '1992', 'hnb231', '0550504823');
INSERT INTO BENHNHAN VALUES ('BN0232', N'Duy Thành Bảo', N'Nam', N'104 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '2021', 'dtb232', '0030303678');
INSERT INTO BENHNHAN VALUES ('BN0233', N'Mã Văn Hùng', N'Nam', N'33 Đ. Hoàng Diệu, Phường 12, Quận 4, Thành phố Hồ Chí Minh 700000, Việt Nam', '1980', 'mvh233', '0437013594');
INSERT INTO BENHNHAN VALUES ('BN0234', N'Huỳnh Phúc Sơn', N'Nam', N'Ngõ 30 Đường Phạm Văn Đồng, Mai Dịch, Bắc Từ Liêm, Hà Nội 10000, Việt Nam', '1966', 'hps234', '0317996357');
INSERT INTO BENHNHAN VALUES ('BN0235', N'Ngụy Văn Xuân', N'Nam', N'28 Hàm Nghi, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Việt Nam', '2024', 'nvx235', '0774380697');
INSERT INTO BENHNHAN VALUES ('BN0236', N'Tề Đình Tiến', N'Nam', N'71-73-75 Hai Bà Trưng, Street, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1993', 'tdt236', '0686169829');
INSERT INTO BENHNHAN VALUES ('BN0237', N'Bàng Minh Khánh', N'Nam', N'59 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '2008', 'bmk237', '0043016552');
INSERT INTO BENHNHAN VALUES ('BN0238', N'Dương Thị Thắng', N'Nữ', N'405 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1970', 'dtt238', '0387923668');
INSERT INTO BENHNHAN VALUES ('BN0239', N'Ngụy Hoàng Thái', N'Nam', N'86 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1989', 'nht239', '0994918474');
INSERT INTO BENHNHAN VALUES ('BN0240', N'Phù Thị Vũ', N'Nữ', N'46 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1979', 'ptv240', '0999921530');
INSERT INTO BENHNHAN VALUES ('BN0241', N'Hồ Thị Lan', N'Nữ', N'32 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1986', 'htl241', '0147644910');
INSERT INTO BENHNHAN VALUES ('BN0242', N'Khải Văn Bảo', N'Nam', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2006', 'kvb242', '0892233091');
INSERT INTO BENHNHAN VALUES ('BN0243', N'Ngụy Thịnh Văn', N'Nam', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2010', 'ntv243', '0168346316');
INSERT INTO BENHNHAN VALUES ('BN0244', N'Giang Thành Trang', N'Nữ', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1990', 'gtt244', '0554867971');
INSERT INTO BENHNHAN VALUES ('BN0245', N'Mạc Hữu Minh', N'Nam', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '1952', 'mhm245', '0239521093');
INSERT INTO BENHNHAN VALUES ('BN0246', N'Tất Hoàng Hải', N'Nam', N'282 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1987', 'thh246', '0133299603');
INSERT INTO BENHNHAN VALUES ('BN0247', N'Tài Văn Phúc', N'Nam', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2022', 'tvp247', '0157567079');
INSERT INTO BENHNHAN VALUES ('BN0248', N'La Huy Nhung', N'Nữ', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1956', 'lhn248', '0775527523');
INSERT INTO BENHNHAN VALUES ('BN0249', N'Phùng Huy Nhật', N'Nam', N'203 Đ. Tô Hiến Thành, Phường 15, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '2020', 'phn249', '0236686892');
INSERT INTO BENHNHAN VALUES ('BN0250', N'Đồng Nguyễn Bảo', N'Nam', N'25 Phạm Nhữ Tăng, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2016', 'dnb250', '0765384385');
INSERT INTO BENHNHAN VALUES ('BN0251', N'Dương Đức Thanh Thảo', N'Nam', N'Ng. 1 800A, Nghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam', '2021', 'ddtt251', '0667862431');
INSERT INTO BENHNHAN VALUES ('BN0252', N'Tất Tuấn Minh', N'Nam', N'226, Đường Hà Huy Tập, Phường Hòa Khê, Quận Thanh Khê, Hòa Khê, Thanh Khê, Đà Nẵng, Việt Nam', '1954', 'ttm252', '0438806444');
INSERT INTO BENHNHAN VALUES ('BN0253', N'Cáp Văn Ngọc Trinh', N'Nữ', N'16F/B1 Ba Tháng Hai Tổ 40 KP 6, Phường 14, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '1989', 'cvnt253', '0889794343');
INSERT INTO BENHNHAN VALUES ('BN0254', N'Tạ Quang Ngọc Mai', N'Nữ', N'238 Đ. Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '2021', 'tqnm254', '0743852723');
INSERT INTO BENHNHAN VALUES ('BN0255', N'Lý Hoàng Khang', N'Nam', N'250 Hà Huy Tập, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2005', 'lhk255', '0626067090');
INSERT INTO BENHNHAN VALUES ('BN0256', N'Tiêu Công Hồng Loan', N'Nữ', N'579 Đ. Nguyễn Chí Thanh, Phường 7, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', '2013', 'tchl256', '0875987487');
INSERT INTO BENHNHAN VALUES ('BN0257', N'Khổng Duy Cường', N'Nam', N'26 Ngõ 329 Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội 100000, Việt Nam', '1970', 'kdc257', '0829960869');
INSERT INTO BENHNHAN VALUES ('BN0258', N'Viễn Tuấn Minh', N'Nam', N'C4 Cư Xá Phú Thọ Hoà, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2022', 'vtm258', '0889765505');
INSERT INTO BENHNHAN VALUES ('BN0259', N'Tô Nguyễn Đức', N'Nam', N'37 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Việt Nam', '1967', 'tnd259', '0848889974');
INSERT INTO BENHNHAN VALUES ('BN0260', N'Tạ Tuấn Ngọc Yến', N'Nữ', N'99B Thái Bình, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1965', 'ttny260', '0807718123');
INSERT INTO BENHNHAN VALUES ('BN0261', N'Hồng Thịnh Thu', N'Nữ', N'36/23 Hẻm 36 Đồng Khởi, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1960', 'htt261', '0893181024');
INSERT INTO BENHNHAN VALUES ('BN0262', N'Đối Hoàng Nam', N'Nam', N'204 Nguyễn Văn Linh, TT. Núi Thành, Núi Thành, Quảng Nam 550000, Việt Nam', '2002', 'dhn262', '0724221167');
INSERT INTO BENHNHAN VALUES ('BN0263', N'Vũ Thanh Gia Hân', N'Nữ', N'105 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1962', 'vtgh263', '0955851625');
INSERT INTO BENHNHAN VALUES ('BN0264', N'Tiêu Ngọc Quân', N'Nam', N'34 Đ. Hoàng Diệu, Phường 12, Quận 4, Thành phố Hồ Chí Minh 700000, Việt Nam', '1958', 'tnq264', '0887747542');
INSERT INTO BENHNHAN VALUES ('BN0265', N'Duy Văn Ngọc Ánh', N'Nữ', N'Ngõ 30 Đường Phạm Văn Đồng, Mai Dịch, Bắc Từ Liêm, Hà Nội 10000, Việt Nam', '1986', 'dvna265', '0770254273');
INSERT INTO BENHNHAN VALUES ('BN0266', N'Đàm Công Minh Tuấn', N'Nam', N'29 Hàm Nghi, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Việt Nam', '1996', 'dcmt266', '0293091253');
INSERT INTO BENHNHAN VALUES ('BN0267', N'Ân Công Yến', N'Nam', N'71-73-75 Hai Bà Trưng, Street, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '2019', 'acy267', '0179533367');
INSERT INTO BENHNHAN VALUES ('BN0268', N'Cung Đình Tuấn', N'Nam', N'60 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '2010', 'cdt268', '0673754181');
INSERT INTO BENHNHAN VALUES ('BN0269', N'Phước Duy Bình', N'Nam', N'406 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1959', 'pdb269', '0727513942');
INSERT INTO BENHNHAN VALUES ('BN0270', N'Phí Thanh Ngọc Diệp', N'Nữ', N'87 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1994', 'ptnd270', '0169783456');
INSERT INTO BENHNHAN VALUES ('BN0271', N'Biện Văn Quỳnh', N'Nam', N'47 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2018', 'bvq271', '0057250321');
INSERT INTO BENHNHAN VALUES ('BN0272', N'Dương Thị Nguyên', N'Nữ', N'33 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1975', 'dtn272', '0141119140');
INSERT INTO BENHNHAN VALUES ('BN0273', N'Bàng Văn An', N'Nam', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1993', 'bva273', '0452852330');
INSERT INTO BENHNHAN VALUES ('BN0274', N'Hà Văn Quang', N'Nam', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1991', 'hvq274', '0645321937');
INSERT INTO BENHNHAN VALUES ('BN0275', N'Châu Văn Huyền Trang', N'Nữ', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1987', 'cvht275', '0471857479');
INSERT INTO BENHNHAN VALUES ('BN0276', N'Trương Huy Phú', N'Nam', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '1951', 'thp276', '0775576565');
INSERT INTO BENHNHAN VALUES ('BN0277', N'Triệu Hoàng Vũ', N'Nam', N'283 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1999', 'thv277', '0995189131');
INSERT INTO BENHNHAN VALUES ('BN0278', N'Ân Hữu Ngân', N'Nam', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1977', 'ahn278', '0609314163');
INSERT INTO BENHNHAN VALUES ('BN0279', N'Lưu Ngọc Phú', N'Nam', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1951', 'lnp279', '0021788130');
INSERT INTO BENHNHAN VALUES ('BN0280', N'Phú Văn An', N'Nam', N'253 Lê Lợi, TT. An Châu, Châu Thành, An Giang, Việt Nam', '1986', 'pva280', '0711912382');
INSERT INTO BENHNHAN VALUES ('BN0281', N'Trầm Thành Linh', N'Nam', N'213 Nguyễn An Ninh, Phường 6, Thành phố Vũng Tầu, Bà Rịa - Vũng Tàu, Việt Nam', '2004', 'ttl281', '0287439945');
INSERT INTO BENHNHAN VALUES ('BN0282', N'Phạm Đình Thanh Thảo', N'Nữ', N'346 Cao Văn Lầu, Phường 2, Bạc Liêu, Việt Nam', '1969', 'pdtt282', '0717973770');
INSERT INTO BENHNHAN VALUES ('BN0283', N'Lại Đình Phương Anh', N'Nữ', N'4RWQ+R5Q, Phùng Chí Kiên, Bắc Kạn, Việt Nam', '1997', 'ldpa283', '0729886675');
INSERT INTO BENHNHAN VALUES ('BN0284', N'Võ Văn Hiếu', N'Nam', N'217 Lê Lợi, Phường Hoàng Văn Thụ, Bắc Giang, Việt Nam', '2001', 'vvh284', '0290969224');
INSERT INTO BENHNHAN VALUES ('BN0285', N'Vương Thị Hà My', N'Nữ', N'420, Nghiêm Xá, Yên Phong, Bắc Ninh, Việt Nam', '2015', 'vthm285', '0990078607');
INSERT INTO BENHNHAN VALUES ('BN0286', N'Đinh Đình Anh', N'Nam', N'68 Đồng Văn Cống, Bình Phú, Bến Tre, Việt Nam', '1985', 'dda286', '0556036662');
INSERT INTO BENHNHAN VALUES ('BN0287', N'Phó Thanh Khang', N'Nam', N'77 Đ. Hoàng Hoa Thám, Hiệp Thành, Thủ Dầu Một, Bình Dương, Việt Nam', '1967', 'ptk287', '0088673688');
INSERT INTO BENHNHAN VALUES ('BN0288', N'Ân Văn Thái', N'Nam', N'468 Trần Hưng Đạo, Lê Hồng Phong, Thành Phố, Bình Định, Việt Nam', '1983', 'avt288', '0002789060');
INSERT INTO BENHNHAN VALUES ('BN0289', N'Lâm Ngọc Quỳnh Nga', N'Nữ', N'57 Lê Duẩn, Tân Phú, Đồng Xoài, Bình Phước, Việt Nam', '2004', 'lnqn289', '0493898634');
INSERT INTO BENHNHAN VALUES ('BN0290', N'Tống Văn Hải', N'Nam', N'154 Trương Hán Siêu, Phú Thuỷ, Thành phố Phan Thiết, Bình Thuận, Việt Nam', '2001', 'tvh290', '0339256903');
INSERT INTO BENHNHAN VALUES ('BN0291', N'Huỳnh Duy Quỳnh', N'Nam', N'298 Đ. Trần Hưng Đạo, Phường 5, Thành phố Cà Mau, Cà Mau, Việt Nam', '1977', 'hdq291', '0038662284');
INSERT INTO BENHNHAN VALUES ('BN0292', N'Phù Duy Bình', N'Nam', N'Sn18 Tổ 1 Phố Giữa, Hòa An, Cao Bằng, Việt Nam', '2017', 'pdb292', '0624568086');
INSERT INTO BENHNHAN VALUES ('BN0293', N'Dương Minh Bích Ngọc', N'Nữ', N'55 Đ. Ngô Tất Tố, Phường An Khánh, Ninh Kiều, Cần Thơ, Việt Nam', '2005', 'dmbn293', '0014009650');
INSERT INTO BENHNHAN VALUES ('BN0294', N'Chuẩn Văn Đông', N'Nam', N'Nguyễn Phước Tần, Hoà Phát, Cẩm Lệ, Đà Nẵng, Việt Nam', '1972', 'cvd294', '0230869081');
INSERT INTO BENHNHAN VALUES ('BN0295', N'Triệu Văn Hoa', N'Nam', N'J46M+HMC, Ea tur, Cư Kuin, Đắk Lắk, Việt Nam', '1980', 'tvh295', '0803684153');
INSERT INTO BENHNHAN VALUES ('BN0296', N'Tống Huy Hương', N'Nam', N'448 Tôn Đức Thắng, Phường Nghĩa Thành, Gia Nghĩa, Đắk Nông, Việt Nam', '1969', 'thh296', '0889371741');
INSERT INTO BENHNHAN VALUES ('BN0297', N'Đàm Hoàng Huy', N'Nam', N'Số 565, tổ 11, Thành phố Điện Biên Phủ, Điện Biên, Việt Nam', '2000', 'dhh297', '0842047195');
INSERT INTO BENHNHAN VALUES ('BN0298', N'Dư Nguyễn Hùng', N'Nam', N'201-203 QL1A ,Ấp, Hố Nai 3, Trảng Bom, Đồng Nai, Việt Nam', '1971', 'dnh298', '0787332262');
INSERT INTO BENHNHAN VALUES ('BN0299', N'Ân Công Phúc', N'Nam', N'267 Ngô Thì Nhậm, Phường 1, TP. Cao Lãnh, Đồng Tháp, Việt Nam', '1963', 'acp299', '0410233685');
INSERT INTO BENHNHAN VALUES ('BN0300', N'Tiết Văn Trang', N'Nam', N'67 Hoàng Văn Thụ, P.Tây Sơn, Thành phố Pleiku, Gia Lai, Việt Nam', '1984', 'tvt300', '0705979365');
INSERT INTO BENHNHAN VALUES ('BN0301', N'Tiêu Duy Hà', N'Nam', N'SỐ 522 ĐƯỜNG QUANG TRUNG, TỔ 5, THỊ TRẤN, Hà Giang, Việt Nam', '1999', 'tdh301', '0419917499');
INSERT INTO BENHNHAN VALUES ('BN0302', N'Tri Duy Thanh Thảo', N'Nam', N'294 Nguyễn Hữu Tiến, Đồng Văn, Duy Tiên, Hà Nam, Việt Nam', '2009', 'tdtt302', '0732524257');
INSERT INTO BENHNHAN VALUES ('BN0303', N'Lê Hoàng Kiên', N'Nam', N'THANH OAI, SỐ 147, Cao Dương, HÀ NỘI, Hà Nội, Việt Nam', '1995', 'lhk303', '0677179693');
INSERT INTO BENHNHAN VALUES ('BN0304', N'Phạm Thịnh Ngọc Trinh', N'Nữ', N'6 Trần Phú, Bắc Hà, Hà Tĩnh, Việt Nam', '1981', 'ptnt304', '0758219838');
INSERT INTO BENHNHAN VALUES ('BN0305', N'Tiêu Quang Anh', N'Nam', N'169 Bạch Đằng, P. Trần Phú, Thành phố Hải Dương, Hải Dương, Việt Nam', '1999', 'tqa305', '0469084586');
INSERT INTO BENHNHAN VALUES ('BN0306', N'Nông Thành Cường', N'Nam', N'771 Nguyễn Bỉnh Khiêm, Đông Hải 1, Hải An, Hải Phòng, Việt Nam', '1993', 'ntc306', '0337098434');
INSERT INTO BENHNHAN VALUES ('BN0307', N'Chuẩn Anh Trang', N'Nữ', N'22 Ngõ 38 Phố Trần Quý Kiên, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '1999', 'cat307', '0358083760');
INSERT INTO BENHNHAN VALUES ('BN0308', N'Thái Tuấn Hà Thu', N'Nữ', N'161 đường Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh, Việt Nam', '1985', 'ttht308', '0104409716');
INSERT INTO BENHNHAN VALUES ('BN0309', N'Tạ Đức Minh', N'Nam', N'38 Ba Mươi Tháng Tư, Phường 1, Vị Thanh, Hậu Giang, Việt Nam', '1997', 'tdm309', '0910700689');
INSERT INTO BENHNHAN VALUES ('BN0310', N'Phạm Công Nhung', N'Nữ', N'65 Lê Thanh Nghị, P. Hiền Nam, Hưng Yên, Việt Nam', '1970', 'pcn310', '0058981281');
INSERT INTO BENHNHAN VALUES ('BN0311', N'Tài Thị Thanh Thảo', N'Nữ', N'254 Trường Chinh, Cam Đức, Cam Lâm, Khánh Hòa, Việt Nam', '2024', 'tttt311', '0365451084');
INSERT INTO BENHNHAN VALUES ('BN0312', N'Trần Văn Hạnh', N'Nam', N'237 Đông An, TT. Tân Hiệp, Tân Hịêp, Kiên Giang, Việt Nam', '1950', 'tvh312', '0936180647');
INSERT INTO BENHNHAN VALUES ('BN0313', N'Đồng Hữu Huyền Trang', N'Nữ', N'191 Phan Chu Trinh, Phường Quyết Thắng, Kon Tum, Việt Nam', '1988', 'dhht313', '0337990131');
INSERT INTO BENHNHAN VALUES ('BN0314', N'Mạc Nguyễn Hồng Loan', N'Nữ', N'TỔ 12, Tp. Lai Châu, Lai Châu, Việt Nam', '2019', 'mnhl314', '0273779739');
INSERT INTO BENHNHAN VALUES ('BN0315', N'Ngọc Hoàng Ngọc', N'Nam', N'224 Nguyễn Huệ, Phố Mới, Lào Cai, Việt Nam', '2003', 'nhn315', '0538733912');
INSERT INTO BENHNHAN VALUES ('BN0316', N'Biện Thanh Phong', N'Nam', N'422 Hùng Vương, Mai Pha, Thành phố Lạng Sơn, Lạng Sơn, Việt Nam', '1982', 'btp316', '0070929993');
INSERT INTO BENHNHAN VALUES ('BN0317', N'Lại Ngọc Hiếu', N'Nữ', N'151 Nguyễn Công Trứ, Phường 8, Thành phố Đà Lạt, Lâm Đồng, Việt Nam', '2001', 'lnh317', '0706689400');
INSERT INTO BENHNHAN VALUES ('BN0318', N'Cao Nguyễn Trang', N'Nam', N'Số 30 ấp Phước Toàn, Long Hiệp, Bến Lức, Long An, Việt Nam', '1987', 'cnt318', '0378500231');
INSERT INTO BENHNHAN VALUES ('BN0319', N'Trịnh Quang Anh', N'Nam', N'192 Quán Chiền, Nam Dương, Nam Trực, Nam Định, Việt Nam', '1962', 'tqa319', '0698092407');
INSERT INTO BENHNHAN VALUES ('BN0320', N'Nông Hoàng Thắng', N'Nam', N'96 Lý Thường Kiệt, Lê Lợi, Thành phố Vinh, Nghệ An, Việt Nam', '1959', 'nht320', '0616479081');
INSERT INTO BENHNHAN VALUES ('BN0321', N'Đoàn Văn Dung', N'Nam', N'120 Xuân Thành, Tân Thành, Ninh Bình, Việt Nam', '1956', 'dvd321', '0023591801');
INSERT INTO BENHNHAN VALUES ('BN0322', N'Trương Hoàng Hà My', N'Nữ', N'90A Trần Phú, Phủ Hà, Phan Rang-Tháp Chàm, Ninh Thuận, Việt Nam', '1965', 'thhm322', '0992715835');
INSERT INTO BENHNHAN VALUES ('BN0323', N'Sái Ngọc Lan', N'Nữ', N'8C4J+26W, Đ. Hùng Vương, Ph. Thanh Miếu, Thành phố Việt Trì, Phú Thọ, Việt Nam', '2013', 'snl323', '0149581470');
INSERT INTO BENHNHAN VALUES ('BN0324', N'Vương Hoàng Ngọc Ánh', N'Nữ', N'42 Đ. Trần Bình Trọng, Phường 4, Tuy Hòa, Phú Yên, Việt Nam', '2015', 'vhna324', '0939320090');
INSERT INTO BENHNHAN VALUES ('BN0325', N'Phí Thành Hoa', N'Nam', N'145 Lý Thái Tổ, Đồng Sơn, Đồng Hới, Quảng Bình, Việt Nam', '1987', 'pth325', '0368781306');
INSERT INTO BENHNHAN VALUES ('BN0326', N'Hồ Văn Phong', N'Nam', N'140 Quang Trung, Khu 5, Đại Lộc, Quảng Nam, Việt Nam', '1980', 'hvp326', '0686705779');
INSERT INTO BENHNHAN VALUES ('BN0327', N'Vi Văn Minh Tuấn', N'Nam', N'336 Đ. Nguyễn Huệ, La Hà, Tư Nghĩa, Quảng Ngãi, Việt Nam', '1967', 'vvmt327', '0115095119');
INSERT INTO BENHNHAN VALUES ('BN0328', N'Ngụy Thịnh Đức', N'Nam', N'8 Đ Thanh Niên, Cẩm Thành, Cẩm Phả, Quảng Ninh, Việt Nam', '2006', 'ntd328', '0561025071');
INSERT INTO BENHNHAN VALUES ('BN0329', N'Tôn Huy Hải', N'Nam', N'Kiệt 125, QL9, Phường 5, Đông Hà, Quảng Trị, Việt Nam', '1984', 'thh329', '0208552286');
INSERT INTO BENHNHAN VALUES ('BN0330', N'Giang Công Thảo', N'Nam', N'98 Nguyễn Huệ, K1P1, Ngã Năm, Sóc Trăng, Việt Nam', '1992', 'gct330', '0973501753');
INSERT INTO BENHNHAN VALUES ('BN0331', N'Hà Hoàng Anh', N'Nữ', N'Số 61 Đường Hương Xoài, TT. Yên Châu, Yên Châu, Sơn La, Việt Nam', '2003', 'hha331', '0634112856');
INSERT INTO BENHNHAN VALUES ('BN0332', N'Biện Thị Trí', N'Nữ', N'250 Nguyễn Chí Thanh, Phường 3, Tây Ninh, Việt Nam', '1986', 'btt332', '0233780510');
INSERT INTO BENHNHAN VALUES ('BN0333', N'Tiêu Hoàng Long', N'Nam', N'218 Long Hưng, Hoàn Diệu, Thái Bình, 411004, Việt Nam', '1988', 'thl333', '0062376838');
INSERT INTO BENHNHAN VALUES ('BN0334', N'Quách Minh An', N'Nữ', N'262 đường Phan Đình Phùng, Thành phố Thái Nguyên, Thái Nguyên, Việt Nam', '1981', 'qma334', '0657350002');
INSERT INTO BENHNHAN VALUES ('BN0335', N'La Hoài Kiên', N'Nam', N'360A Đ. Trần Phú, P. Ba Đình, Thành phố Thanh Hóa, Thanh Hoá, Việt Nam', '2003', 'lhk335', '0877122253');
INSERT INTO BENHNHAN VALUES ('BN0336', N'Chuẩn Ngọc Quỳnh Anh', N'Nữ', N'193 Điện Biên Phủ, Trường An, Thành phố Huế, Thừa Thiên Huế, Việt Nam', '1979', 'cnqa336', '0874714085');
INSERT INTO BENHNHAN VALUES ('BN0337', N'Lý Thanh Hạnh', N'Nữ', N'559A Lý Thường Kiệt, Phường 5, Thành phố Mỹ Tho, Tiền Giang, Việt Nam', '2005', 'lth337', '0853197144');
INSERT INTO BENHNHAN VALUES ('BN0338', N'Tài Hoài Hà Thu', N'Nữ', N'156 Đ. Nguyễn Đáng, Phường 7, Trà Vinh, Việt Nam', '1950', 'thht338', '0231873448');
INSERT INTO BENHNHAN VALUES ('BN0339', N'Phạm Thịnh Long', N'Nam', N'R626+X3W, Phạm Văn Đồng, Hưng Thành, Tp. Tuyên Quang, Tuyên Quang, Việt Nam', '2007', 'ptl339', '0502443320');
INSERT INTO BENHNHAN VALUES ('BN0340', N'Đoàn Minh Quyết', N'Nam', N'55E Phạm Thái Bường, Phường 4, Vĩnh Long, Việt Nam', '1962', 'dmq340', '0503276475');
INSERT INTO BENHNHAN VALUES ('BN0341', N'Châu Minh Dung', N'Nữ', N'31 Ng. 376 Đ. Thụy Khuê, Bưởi, Tây Hồ, Hà Nội, Việt Nam', '1979', 'cmd341', '0945349555');
INSERT INTO BENHNHAN VALUES ('BN0342', N'Hàm Văn Ngọc Ánh', N'Nữ', N'318 đường Kim Đồng, phường Minh Tân, Thành phố Yên Bái, Yên Bái, Việt Nam', '2024', 'hvna342', '0461142800');
INSERT INTO BENHNHAN VALUES ('BN0343', N'Trình Duy Thành', N'Nam', N'46/6 Cộng Hòa, Phường 13, Quận Tân Bình, TP Hồ Chí Minh', '2003', 'tdt343', '0754955531');
INSERT INTO BENHNHAN VALUES ('BN0344', N'Cung Ngọc Lan', N'Nữ', N'104 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '2007', 'cnl344', '0892965574');
INSERT INTO BENHNHAN VALUES ('BN0345', N'Bùi Hữu Cường', N'Nam', N'202 Đ. Trương Định, Tương Mai, Hai Bà Trưng, Hà Nội', '2016', 'bhc345', '0450689989');
INSERT INTO BENHNHAN VALUES ('BN0346', N'Ngọc Duy Hạnh', N'Nam', N'27 Hai Bà Trưng, Bến Nghé, Quận 1, Hồ Chí Minh', '1950', 'ndh346', '0222197293');
INSERT INTO BENHNHAN VALUES ('BN0347', N'Quản Huy Quốc', N'Nam', N'248 Võ Văn Tần, Phường 5, Quận 3, Hồ Chí Minh', '2008', 'qhq347', '0969064462');
INSERT INTO BENHNHAN VALUES ('BN0348', N'Biện Huy Khánh', N'Nam', N'20 Lê Thánh Tông, Cẩm Sơn, Hội An, Quảng Nam, Việt Nam', '2009', 'bhk348', '0795239933');
INSERT INTO BENHNHAN VALUES ('BN0349', N'Hứa Công Mai', N'Nam', N'58 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '1995', 'hcm349', '0777752118');
INSERT INTO BENHNHAN VALUES ('BN0350', N'Đàm Hoài Hùng', N'Nam', N'404 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1990', 'dhh350', '0247656748');
INSERT INTO BENHNHAN VALUES ('BN0351', N'Chuẩn Anh Phương Anh', N'Nữ', N'85 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2015', 'capa351', '0059918542');
INSERT INTO BENHNHAN VALUES ('BN0352', N'Đặng Thịnh Kim', N'Nam', N'45 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2009', 'dtk352', '0587632377');
INSERT INTO BENHNHAN VALUES ('BN0353', N'Ứng Thịnh Phú', N'Nam', N'31 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '2014', 'utp353', '0879117426');
INSERT INTO BENHNHAN VALUES ('BN0354', N'Giang Hoàng Hương', N'Nữ', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2007', 'ghh354', '0435310657');
INSERT INTO BENHNHAN VALUES ('BN0355', N'Khải Thịnh Phúc', N'Nam', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2018', 'ktp355', '0291711645');
INSERT INTO BENHNHAN VALUES ('BN0356', N'Giang Thành Quỳnh Anh', N'Nữ', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1992', 'gtqa356', '0747362248');
INSERT INTO BENHNHAN VALUES ('BN0357', N'Phùng Thanh Khang', N'Nam', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '1995', 'ptk357', '0567895636');
INSERT INTO BENHNHAN VALUES ('BN0358', N'Triệu Hoài Anh', N'Nam', N'281 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '2001', 'tha358', '0843296005');
INSERT INTO BENHNHAN VALUES ('BN0359', N'Trần Nguyễn Anh', N'Nữ', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1956', 'tna359', '0356991755');
INSERT INTO BENHNHAN VALUES ('BN0360', N'Tri Công Thuý', N'Nữ', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1999', 'tct360', '0852094550');
INSERT INTO BENHNHAN VALUES ('BN0361', N'Ngụy Văn Linh', N'Nam', N'202 Đ. Tô Hiến Thành, Phường 15, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '2022', 'nvl361', '0689867830');
INSERT INTO BENHNHAN VALUES ('BN0362', N'Vi Hoàng Quyết', N'Nam', N'24 Phạm Nhữ Tăng, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1978', 'vhq362', '0320236334');
INSERT INTO BENHNHAN VALUES ('BN0363', N'Khắc Thị Thái', N'Nữ', N'Ng. 1 800A, Nghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam', '1956', 'ktt363', '0309565391');
INSERT INTO BENHNHAN VALUES ('BN0364', N'Phan Thành Ngân', N'Nam', N'226, Đường Hà Huy Tập, Phường Hòa Khê, Quận Thanh Khê, Hòa Khê, Thanh Khê, Đà Nẵng, Việt Nam', '1994', 'ptn364', '0716463358');
INSERT INTO BENHNHAN VALUES ('BN0365', N'Tề Thanh Anh', N'Nam', N'16F/B1 Ba Tháng Hai Tổ 40 KP 6, Phường 14, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '1950', 'tta365', '0326620195');
INSERT INTO BENHNHAN VALUES ('BN0366', N'Khắc Trung Duy', N'Nam', N'237 Đ. Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '1990', 'ktd366', '0619251301');
INSERT INTO BENHNHAN VALUES ('BN0367', N'Phước Hoài Ngân', N'Nữ', N'249 Hà Huy Tập, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2024', 'phn367', '0034582793');
INSERT INTO BENHNHAN VALUES ('BN0368', N'Lương Văn Thái', N'Nam', N'578 Đ. Nguyễn Chí Thanh, Phường 7, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', '1969', 'lvt368', '0827091032');
INSERT INTO BENHNHAN VALUES ('BN0369', N'Đặng Đức Long', N'Nam', N'25 Ngõ 329 Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội 100000, Việt Nam', '2016', 'ddl369', '0148090898');
INSERT INTO BENHNHAN VALUES ('BN0370', N'Sái Văn Hạnh', N'Nam', N'C4 Cư Xá Phú Thọ Hoà, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1976', 'svh370', '0357038793');
INSERT INTO BENHNHAN VALUES ('BN0371', N'Đối Phúc Thanh Hương', N'Nữ', N'36 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Việt Nam', '2008', 'dpth371', '0738566933');
INSERT INTO BENHNHAN VALUES ('BN0372', N'Ứng Văn Hạnh', N'Nam', N'99B Thái Bình, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2024', 'uvh372', '0587898983');
INSERT INTO BENHNHAN VALUES ('BN0373', N'Lê Thành Ngọc', N'Nữ', N'36/23 Hẻm 36 Đồng Khởi, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1956', 'ltn373', '0573336459');
INSERT INTO BENHNHAN VALUES ('BN0374', N'Tề Thanh Huy', N'Nam', N'203 Nguyễn Văn Linh, TT. Núi Thành, Núi Thành, Quảng Nam 550000, Việt Nam', '2011', 'tth374', '0549547310');
INSERT INTO BENHNHAN VALUES ('BN0375', N'Dư Văn Ngọc', N'Nam', N'104 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1974', 'dvn375', '0934527517');
INSERT INTO BENHNHAN VALUES ('BN0376', N'Kiều Hoàng Lan', N'Nam', N'33 Đ. Hoàng Diệu, Phường 12, Quận 4, Thành phố Hồ Chí Minh 700000, Việt Nam', '2006', 'khl376', '0098405192');
INSERT INTO BENHNHAN VALUES ('BN0377', N'Quản Duy Đức', N'Nam', N'28 Hàm Nghi, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Việt Nam', '2015', 'qdd377', '0489943572');
INSERT INTO BENHNHAN VALUES ('BN0378', N'Tô Thanh Minh Châu', N'Nữ', N'71-73-75 Hai Bà Trưng, Street, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1963', 'ttmc378', '0996807839');
INSERT INTO BENHNHAN VALUES ('BN0379', N'Châu Công Thùy Linh', N'Nữ', N'59 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '1957', 'cctl379', '0975536070');
INSERT INTO BENHNHAN VALUES ('BN0380', N'Thạch Văn Phong', N'Nam', N'Ngõ 30 Đường Phạm Văn Đồng, Mai Dịch, Bắc Từ Liêm, Hà Nội 10000, Việt Nam', '1990', 'tvp380', '0243908803');
INSERT INTO BENHNHAN VALUES ('BN0381', N'Trầm Thịnh Đông', N'Nam', N'405 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1978', 'ttd381', '0639892135');
INSERT INTO BENHNHAN VALUES ('BN0382', N'Kiều Công Nguyên', N'Nam', N'86 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1953', 'kcn382', '0106440397');
INSERT INTO BENHNHAN VALUES ('BN0383', N'Ngọc Hoàng Hùng', N'Nam', N'46 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1982', 'nhh383', '0733682706');
INSERT INTO BENHNHAN VALUES ('BN0384', N'Lê Thị Quỳnh', N'Nữ', N'32 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1951', 'ltq384', '0088677613');
INSERT INTO BENHNHAN VALUES ('BN0385', N'Phù Hoàng Kiên', N'Nam', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1956', 'phk385', '0705015133');
INSERT INTO BENHNHAN VALUES ('BN0386', N'Đinh Văn Tùng', N'Nam', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1988', 'dvt386', '0631772687');
INSERT INTO BENHNHAN VALUES ('BN0387', N'Kiều Đức Hải', N'Nam', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1963', 'kdh387', '0859659723');
INSERT INTO BENHNHAN VALUES ('BN0388', N'Lâm Thị Hải', N'Nữ', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '2006', 'lth388', '0462686498');
INSERT INTO BENHNHAN VALUES ('BN0389', N'Lê Văn Diệu', N'Nam', N'282 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1977', 'lvd389', '0899890077');
INSERT INTO BENHNHAN VALUES ('BN0390', N'Nông Văn Thành', N'Nam', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2022', 'nvt390', '0722402798');
INSERT INTO BENHNHAN VALUES ('BN0391', N'Lương Công Dung', N'Nữ', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2005', 'lcd391', '0268059211');
INSERT INTO BENHNHAN VALUES ('BN0392', N'Mạc Thị Hương', N'Nữ', N'203 Đ. Tô Hiến Thành, Phường 15, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '2018', 'mth392', '0725259443');
INSERT INTO BENHNHAN VALUES ('BN0393', N'Hứa Huy Hà My', N'Nữ', N'25 Phạm Nhữ Tăng, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2024', 'hhhm393', '0183271461');
INSERT INTO BENHNHAN VALUES ('BN0394', N'Sái Hữu Vũ', N'Nam', N'Ng. 1 800A, Nghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam', '1953', 'shv394', '0038687082');
INSERT INTO BENHNHAN VALUES ('BN0395', N'Hồng Hoàng Khang', N'Nam', N'226, Đường Hà Huy Tập, Phường Hòa Khê, Quận Thanh Khê, Hòa Khê, Thanh Khê, Đà Nẵng, Việt Nam', '2024', 'hhk395', '0576215918');
INSERT INTO BENHNHAN VALUES ('BN0396', N'Bàng Nguyễn Phúc', N'Nam', N'16F/B1 Ba Tháng Hai Tổ 40 KP 6, Phường 14, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '1969', 'bnp396', '0040072539');
INSERT INTO BENHNHAN VALUES ('BN0397', N'Doãn Hoài Minh Tuấn', N'Nam', N'238 Đ. Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '2006', 'dhmt397', '0014539237');
INSERT INTO BENHNHAN VALUES ('BN0398', N'Sái Đình Phú', N'Nam', N'250 Hà Huy Tập, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2024', 'sdp398', '0763124768');
INSERT INTO BENHNHAN VALUES ('BN0399', N'Tề Đức Quốc', N'Nam', N'579 Đ. Nguyễn Chí Thanh, Phường 7, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', '1987', 'tdq399', '0208573767');
INSERT INTO BENHNHAN VALUES ('BN0400', N'Phạm Hoài Đạt', N'Nam', N'26 Ngõ 329 Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội 100000, Việt Nam', '1981', 'phd400', '0756288737');
INSERT INTO BENHNHAN VALUES ('BN0401', N'Hà Đức Yến', N'Nam', N'C4 Cư Xá Phú Thọ Hoà, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1956', 'hdy401', '0258510545');
INSERT INTO BENHNHAN VALUES ('BN0402', N'Tô Hữu Hương', N'Nữ', N'37 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Việt Nam', '2006', 'thh402', '0945662641');
INSERT INTO BENHNHAN VALUES ('BN0403', N'Viên Thành Quỳnh', N'Nam', N'99B Thái Bình, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1960', 'vtq403', '0993528750');
INSERT INTO BENHNHAN VALUES ('BN0404', N'Nhâm Hoài Huyền Trang', N'Nữ', N'36/23 Hẻm 36 Đồng Khởi, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1953', 'nhht404', '0172695352');
INSERT INTO BENHNHAN VALUES ('BN0405', N'Văn Văn Quang', N'Nam', N'204 Nguyễn Văn Linh, TT. Núi Thành, Núi Thành, Quảng Nam 550000, Việt Nam', '1972', 'vvq405', '0135095339');
INSERT INTO BENHNHAN VALUES ('BN0406', N'Đồng Hoàng Ngọc', N'Nam', N'105 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1982', 'dhn406', '0487244082');
INSERT INTO BENHNHAN VALUES ('BN0407', N'Thái Thành Gia Hân', N'Nữ', N'34 Đ. Hoàng Diệu, Phường 12, Quận 4, Thành phố Hồ Chí Minh 700000, Việt Nam', '1980', 'ttgh407', '0405106958');
INSERT INTO BENHNHAN VALUES ('BN0408', N'Duy Ngọc Nhung', N'Nữ', N'Ngõ 30 Đường Phạm Văn Đồng, Mai Dịch, Bắc Từ Liêm, Hà Nội 10000, Việt Nam', '1957', 'dnn408', '0213796064');
INSERT INTO BENHNHAN VALUES ('BN0409', N'Châu Minh Thanh Hương', N'Nữ', N'29 Hàm Nghi, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Việt Nam', '1966', 'cmth409', '0710005783');
INSERT INTO BENHNHAN VALUES ('BN0410', N'Hàm Hữu Hiếu', N'Nam', N'71-73-75 Hai Bà Trưng, Street, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '2008', 'hhh410', '0993326241');
INSERT INTO BENHNHAN VALUES ('BN0411', N'Kiều Thị Lan', N'Nữ', N'60 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '2015', 'ktl411', '0047291330');
INSERT INTO BENHNHAN VALUES ('BN0412', N'Viên Phúc Ngọc', N'Nam', N'406 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1979', 'vpn412', '0636725381');
INSERT INTO BENHNHAN VALUES ('BN0413', N'Đoàn Hoàng Diệu', N'Nam', N'87 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1966', 'dhd413', '0557826613');
INSERT INTO BENHNHAN VALUES ('BN0414', N'Cáp Hoài Khang', N'Nam', N'47 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2018', 'chk414', '0881133204');
INSERT INTO BENHNHAN VALUES ('BN0415', N'Vương Ngọc Ngân', N'Nữ', N'33 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1958', 'vnn415', '0309406199');
INSERT INTO BENHNHAN VALUES ('BN0416', N'Tề Hoàng Bình', N'Nam', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2013', 'thb416', '0524208702');
INSERT INTO BENHNHAN VALUES ('BN0417', N'Phùng Ngọc Khang', N'Nam', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2013', 'pnk417', '0289171077');
INSERT INTO BENHNHAN VALUES ('BN0418', N'Từ Công Quỳnh', N'Nam', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2007', 'tcq418', '0079331091');
INSERT INTO BENHNHAN VALUES ('BN0419', N'Trầm Phúc Gia Hân', N'Nữ', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '2001', 'tpgh419', '0982010082');
INSERT INTO BENHNHAN VALUES ('BN0420', N'Vi Thành Bích Ngọc', N'Nữ', N'283 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '2019', 'vtbn420', '0847539021');
INSERT INTO BENHNHAN VALUES ('BN0421', N'Địch Hoài Ánh', N'Nam', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1974', 'dha421', '0116168630');
INSERT INTO BENHNHAN VALUES ('BN0422', N'Ôn Phúc Ngọc Ánh', N'Nữ', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1985', 'opna422', '0151399031');
INSERT INTO BENHNHAN VALUES ('BN0423', N'Đỗ Tuấn Sơn', N'Nam', N'46/1A Đỗ Nhuận, Sơn Kỳ, Tân Phú, TP.HCM', '1983', 'dts423', '0258160368');
INSERT INTO BENHNHAN VALUES ('BN0424', N'Âu Hữu Vinh', N'Nam', N'16 P. Nguyễn Quang Bích. Cửa Đông. Hoàn Kiếm. Hà Nội 10000. Việt Nam', '1993', 'ahv424', '0918453871');
INSERT INTO BENHNHAN VALUES ('BN0425', N'Doãn Tuấn Hiếu', N'Nam', N'88 Lê Văn Duyệt, Đa Kao, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1971', 'dth425', '0793310974');
INSERT INTO BENHNHAN VALUES ('BN0426', N'Cù Ngọc Hương', N'Nữ', N'21 5 Tháng 6, Tổ dân phố số 16, Thị xã Lai Châu, Lai Châu, Việt Nam', '2012', 'cnh426', '0425714709');
INSERT INTO BENHNHAN VALUES ('BN0427', N'Phó Đức Linh', N'Nam', N'107 Minh Khai, Phố Mới, Lào Cai, Việt Nam', '2011', 'pdl427', '0651422435');
INSERT INTO BENHNHAN VALUES ('BN0428', N'Khổng Thanh Lâm', N'Nam', N'876 Trần Cao Vân, Thanh Khê Đông, Thanh Khê, Đà Nẵng, Việt Nam', '1996', 'ktl428', '0053093152');
INSERT INTO BENHNHAN VALUES ('BN0429', N'Tài Phúc Lâm', N'Nam', N'Ng. 34 P. Hào Nam, Chợ Dừa, Đống Đa, Hà Nội, Việt Nam', '2022', 'tpl429', '0262513424');
INSERT INTO BENHNHAN VALUES ('BN0430', N'Lương Huy Quốc', N'Nam', N'164 Nguyễn Thông, Bình Tâm, Tân An, Long An, Việt Nam', '2017', 'lhq430', '0191565928');
INSERT INTO BENHNHAN VALUES ('BN0431', N'Khổng Hoài Ngọc', N'Nữ', N'108 Thái Bình, Trần Tế Xương, TP. Nam Định, Nam Định, Việt Nam', '2019', 'khn431', '0308039328');
INSERT INTO BENHNHAN VALUES ('BN0432', N'Lê Thành Ngọc Mai', N'Nữ', N'573 Điện Biên Phủ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1987', 'ltnm432', '0168844396');
INSERT INTO BENHNHAN VALUES ('BN0433', N'Giang Công Hà', N'Nam', N'79 Đ. La Thành, Chợ Dừa, Đống Đa, Hà Nội, Việt Nam', '1959', 'gch433', '0910873984');
INSERT INTO BENHNHAN VALUES ('BN0434', N'Hứa Hữu Hải', N'Nam', N'198 Nguyễn Lương Bằng, Quang Trung, Đống Đa, Hà Nội, Việt Nam', '2002', 'hhh434', '0012252478');
INSERT INTO BENHNHAN VALUES ('BN0435', N'Lâm Thị Ngọc Lan', N'Nam', N'12 Hà Liễu, Ph.Gia Cẩm, Thành phố Việt Trì, Phú Thọ, Việt Nam', '1956', 'ltnl435', '0254266717');
INSERT INTO BENHNHAN VALUES ('BN0436', N'Văn Thị Quỳnh Nga', N'Nam', N'112 Đ. Đinh Tiên Hoàng, Đa Kao, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1994', 'vtqn436', '0506334425');
INSERT INTO BENHNHAN VALUES ('BN0437', N'Hàm Nguyễn Ánh', N'Nam', N'9 Đ. Phan Đăng Lưu, Phường 3, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '1955', 'hna437', '0490400433');
INSERT INTO BENHNHAN VALUES ('BN0438', N'Phan Thị Thắng', N'Nữ', N'12 Nơ Trang Long, Phường 14, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '1963', 'ptt438', '0490134762');
INSERT INTO BENHNHAN VALUES ('BN0439', N'Đồng Văn Quỳnh', N'Nam', N'90 Phạm Văn Đồng, Nghĩa Chánh Bắc, Quảng Ngãi, Việt Nam', '1965', 'dvq439', '0844021811');
INSERT INTO BENHNHAN VALUES ('BN0440', N'Bùi Đức Kim', N'Nam', N'1 Đ. Phan Đăng Lưu, phường 03, Bình Thạnh, Thành phố Hồ Chí Minh 72300, Việt Nam', '2012', 'bdk440', '0398285078');
INSERT INTO BENHNHAN VALUES ('BN0441', N'Mai Hoàng Quốc', N'Nam', N'105 Hai Bà Trưng, Phường 3, Quảng Trị, Việt Nam', '1961', 'mhq441', '0400479378');
INSERT INTO BENHNHAN VALUES ('BN0442', N'Đoàn Thịnh An', N'Nam', N'10 Lê Thánh Tông, Thắng Lợi, Thành phố Buôn Ma Thuột, Đắk Lắk, Việt Nam', '2003', 'dta442', '0436423974');
INSERT INTO BENHNHAN VALUES ('BN0443', N'Tôn Thị Thái', N'Nữ', N'122 Nguyễn Lương Bằng, Quang Trung, Đống Đa, Hà Nội, Việt Nam', '2020', 'ttt443', '0869053146');
INSERT INTO BENHNHAN VALUES ('BN0444', N'Dương Thịnh Phương Anh', N'Nữ', N'258 Cù Chính Lan, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1963', 'dtpa444', '0834678125');
INSERT INTO BENHNHAN VALUES ('BN0445', N'Trầm Thanh Mai Phương', N'Nữ', N'199 P. Vương Thừa Vũ, Khương Trung, Thanh Xuân, Hà Nội, Việt Nam', '2005', 'ttmp445', '0810695247');
INSERT INTO BENHNHAN VALUES ('BN0446', N'Đàm Đức Vy', N'Nữ', N'132 ĐT848, Phường An Hoà, Sa Đéc, Đồng Tháp, Việt Nam', '2024', 'ddv446', '0962634128');
INSERT INTO BENHNHAN VALUES ('BN0447', N'Phùng Thị Hà', N'Nữ', N'87P1 Đ. Lê Văn Duyệt, Phường 3, Bình Thạnh, Thành phố Hồ Chí Minh 700000, Việt Nam', '2003', 'pth447', '0557739543');
INSERT INTO BENHNHAN VALUES ('BN0448', N'Hàm Hoàng Nam', N'Nam', N'24 Bạch Đằng, P. Nguyễn Trãi, Hà Giang, Việt Nam', '2010', 'hhn448', '0708323929');
INSERT INTO BENHNHAN VALUES ('BN0449', N'Tôn Minh Tuyết', N'Nữ', N'164 / 44 P. Vương Thừa Vũ, Khương Trung, Thanh Xuân, Hà Nội, Việt Nam', '2011', 'tmt449', '0162780521');
INSERT INTO BENHNHAN VALUES ('BN0450', N'Phùng Hoài Thị Hương', N'Nữ', N'5 Nguyễn Tri Phương, Quán Thánh, Ba Đình, Hà Nội, Việt Nam', '2012', 'phth450', '0114178014');
INSERT INTO BENHNHAN VALUES ('BN0451', N'Chuẩn Thị Khang', N'Nữ', N'745 Trần Cao Vân, Thanh Khê Đông, Hải Châu, Đà Nẵng, Việt Nam', '1963', 'ctk451', '0743751503');
INSERT INTO BENHNHAN VALUES ('BN0452', N'Hàn Văn Phúc', N'Nam', N'1/2 Phó Đức Chính, Phường 1, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '1953', 'hvp452', '0500833182');
INSERT INTO BENHNHAN VALUES ('BN0453', N'Lưu Tuấn Trường', N'Nam', N'93 Bà Triệu, P. Thanh Trung, Thành phố Hải Dương, Hải Dương, Việt Nam', '1955', 'ltt453', '0272815970');
INSERT INTO BENHNHAN VALUES ('BN0454', N'Mạc Thanh Sơn', N'Nam', N'8 Lê Quang Định, Phường 14, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '1985', 'mts454', '0429244133');
INSERT INTO BENHNHAN VALUES ('BN0455', N'Đinh Văn Ngọc Yến', N'Nữ', N'58 ngõ 79, Hữu Nghị, Hòa Bình, Việt Nam', '2003', 'dvny455', '0226953312');
INSERT INTO BENHNHAN VALUES ('BN0456', N'Thạch Hoàng Huy', N'Nam', N'404 Nguyễn Sơn, Phú Thọ Hoà, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '2005', 'thh456', '0588150362');
INSERT INTO BENHNHAN VALUES ('BN0457', N'Viễn Huy Nguyên', N'Nam', N'85 Huỳnh Ngọc Huệ, Thanh Khê Đông, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1956', 'vhn457', '0667302263');
INSERT INTO BENHNHAN VALUES ('BN0458', N'Viên Anh Loan', N'Nữ', N'45 Nguyễn Triệu Luật, Khu Phố 4, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1974', 'val458', '0591255052');
INSERT INTO BENHNHAN VALUES ('BN0459', N'Ứng Đức Hải', N'Nam', N'31 P. Yên Thế, Văn Miếu, Đống Đa, Hà Nội, Việt Nam', '1978', 'udh459', '0052592082');
INSERT INTO BENHNHAN VALUES ('BN0460', N'Phùng Nguyễn Duy', N'Nam', N'HL2, Bình Trị Đông A, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '2013', 'pnd460', '0220812263');
INSERT INTO BENHNHAN VALUES ('BN0461', N'Vương Minh Hồng Loan', N'Nữ', N'28/1B Lê Đình Cẩn, P, Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', '1969', 'vmhl461', '0800180747');
INSERT INTO BENHNHAN VALUES ('BN0462', N'Biện Thị Tiến', N'Nam', N'K 123 Cù Chính Lan, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1979', 'btt462', '0684646419');
INSERT INTO BENHNHAN VALUES ('BN0463', N'Đậu Thanh Thuý', N'Nữ', N'A7/54 Đường 1C, Vĩnh Lộc B, Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', '1977', 'dtt463', '0859761378');
INSERT INTO BENHNHAN VALUES ('BN0464', N'Dương Thành Lâm', N'Nam', N'281 P. Đội Cấn, Liễu Giai, Ba Đình, Hà Nội, Việt Nam', '1995', 'dtl464', '0360744030');
INSERT INTO BENHNHAN VALUES ('BN0465', N'Sái Thị Quyết', N'Nữ', N'Lạc Long Quân, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1970', 'stq465', '0865615005');
INSERT INTO BENHNHAN VALUES ('BN0466', N'Quản Minh Đức', N'Nam', N'7/3C Đ. Âu Cơ, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '2015', 'qmd466', '0438195367');
INSERT INTO BENHNHAN VALUES ('BN0467', N'Đồng Tuấn Huy', N'Nam', N'202 Đ. Tô Hiến Thành, Phường 15, Quận 11, Thành phố Hồ Chí Minh, Việt Nam', '1963', 'dth467', '0420457520');
INSERT INTO BENHNHAN VALUES ('BN0468', N'La Minh Kim', N'Nữ', N'24 Phạm Nhữ Tăng, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '2016', 'lmk468', '0794637733');
INSERT INTO BENHNHAN VALUES ('BN0469', N'Kiều Đức Trang', N'Nữ', N'Ng. 1 800A, Nghĩa Đô, Cầu Giấy, Hà Nội, Việt Nam', '1958', 'kdt469', '0342379657');
INSERT INTO BENHNHAN VALUES ('BN0470', N'Văn Nguyễn Đức', N'Nam', N'226, Đường Hà Huy Tập, Phường Hòa Khê, Quận Thanh Khê, Hòa Khê, Thanh Khê, Đà Nẵng, Việt Nam', '1990', 'vnd470', '0850349209');
INSERT INTO BENHNHAN VALUES ('BN0471', N'Nhâm Thị Ngân', N'Nữ', N'16F/B1 Ba Tháng Hai Tổ 40 KP 6, Phường 14, Quận 10, Thành phố Hồ Chí Minh, Việt Nam', '2024', 'ntn471', '0130744169');
INSERT INTO BENHNHAN VALUES ('BN0472', N'Chuẩn Hoàng Thuý', N'Nữ', N'237 Đ. Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội, Việt Nam', '1957', 'cht472', '0131526355');
INSERT INTO BENHNHAN VALUES ('BN0473', N'Huỳnh Đức Ngọc Lan', N'Nữ', N'249 Hà Huy Tập, Hòa Khê, Thanh Khê, Đà Nẵng 550000, Việt Nam', '1985', 'hdnl473', '0440377362');
INSERT INTO BENHNHAN VALUES ('BN0474', N'Khúc Văn An', N'Nữ', N'578 Đ. Nguyễn Chí Thanh, Phường 7, Quận 5, Thành phố Hồ Chí Minh, Việt Nam', '1983', 'kva474', '0108086546');
INSERT INTO BENHNHAN VALUES ('BN0475', N'Đặng Ngọc Mai', N'Nữ', N'25 Ngõ 329 Cầu Giấy, Dịch Vọng, Cầu Giấy, Hà Nội 100000, Việt Nam', '1992', 'dnm475', '0614363358');
INSERT INTO BENHNHAN VALUES ('BN0476', N'Kiều Đức Ngọc Mai', N'Nữ', N'C4 Cư Xá Phú Thọ Hoà, Phường 10, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1954', 'kdnm476', '0482934186');
INSERT INTO BENHNHAN VALUES ('BN0477', N'Giang Hoàng Vinh', N'Nam', N'36 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Việt Nam', '1960', 'ghv477', '0325831860');
INSERT INTO BENHNHAN VALUES ('BN0478', N'Châu Văn Bảo', N'Nam', N'99B Thái Bình, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1964', 'cvb478', '0833946994');
INSERT INTO BENHNHAN VALUES ('BN0479', N'Quản Công Hương', N'Nữ', N'36/23 Hẻm 36 Đồng Khởi, Phường 4, Tân Bình, Thành phố Hồ Chí Minh, Việt Nam', '1994', 'qch479', '0969609618');
INSERT INTO BENHNHAN VALUES ('BN0480', N'Quản Văn Bảo', N'Nam', N'203 Nguyễn Văn Linh, TT. Núi Thành, Núi Thành, Quảng Nam 550000, Việt Nam', '1961', 'qvb480', '0650079835');
INSERT INTO BENHNHAN VALUES ('BN0481', N'Đỗ Hoài Anh', N'Nam', N'104 Đường B2, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh, Việt Nam', '1952', 'dha481', '0525980446');
INSERT INTO BENHNHAN VALUES ('BN0482', N'Trình Thành Linh', N'Nam', N'33 Đ. Hoàng Diệu, Phường 12, Quận 4, Thành phố Hồ Chí Minh 700000, Việt Nam', '1989', 'ttl482', '0294422396');
INSERT INTO BENHNHAN VALUES ('BN0483', N'Tôn Thanh Hải', N'Nam', N'Ngõ 30 Đường Phạm Văn Đồng, Mai Dịch, Bắc Từ Liêm, Hà Nội 10000, Việt Nam', '1985', 'tth483', '0897216953');
INSERT INTO BENHNHAN VALUES ('BN0484', N'Lý Hoàng Ngọc Diệp', N'Nữ', N'28 Hàm Nghi, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Việt Nam', '1975', 'lhnd484', '0490675579');
INSERT INTO BENHNHAN VALUES ('BN0485', N'Lâm Hoàng Hà Thu', N'Nữ', N'71-73-75 Hai Bà Trưng, Street, Quận 1, Thành phố Hồ Chí Minh, Việt Nam', '1969', 'lhht485', '0718737147');
INSERT INTO BENHNHAN VALUES ('BN0486', N'Phan Văn Sơn', N'Nam', N'368 Đ. Hùng Vương. Phường 3. Tân An. Long An. Việt Nam', '1962', 'pvs486', '0195911093');
INSERT INTO BENHNHAN VALUES ('BN0487', N'Tất Hoàng Quỳnh', N'Nữ', N'H55 Nguyễn Thị Nghĩa, Phường 2, Thành phố Đà Lạt, Lâm Đồng 66109, Việt Nam', '1992', 'thq487', '0898622220');
INSERT INTO BENHNHAN VALUES ('BN0488', N'Trịnh Anh Văn', N'Nam', N'92 Trương Thị Sáu, Phường 3, Tân An, Long An, Việt Nam', '2017', 'tav488', '0208793738');
INSERT INTO BENHNHAN VALUES ('BN0489', N'Tôn Thịnh Duy', N'Nam', N'Đường N3, Lộc Hoà, TP. Nam Định, Nam Định, Việt Nam', '1999', 'ttd489', '0216542724');
INSERT INTO BENHNHAN VALUES ('BN0490', N'Ngô Duy Nam', N'Nam', N'Số 40 Đại lộ Xô Viết Nghệ, Nghi Phú, Thành phố Vinh, Nghệ An, Việt Nam', '2002', 'ndn490', '0598195333');
INSERT INTO BENHNHAN VALUES ('BN0491', N'Nguyễn Duy Khang', N'Nam', N'89 đường Ninh Tôn, Ninh Phú, Ninh Bình, 08000, Việt Nam', '1975', 'ndk491', '0259970633');
INSERT INTO BENHNHAN VALUES ('BN0492', N'Thái Đình Phú', N'Nam', N'1E Thống Nhất, Đài Sơn, Phan Rang-Tháp Chàm, Ninh Thuận, Việt Nam', '1962', 'tdp492', '0040200327');
INSERT INTO BENHNHAN VALUES ('BN0493', N'Sái Thanh Yến', N'Nam', N'98C6+H48, Hy Cương, Thành phố Việt Trì, Phú Thọ, Việt Nam', '1963', 'sty493', '0815240555');
INSERT INTO BENHNHAN VALUES ('BN0494', N'Lý Thị Nguyên', N'Nữ', N'154 Đ. Nguyễn Trãi, Phường 5, Tuy Hòa, Phú Yên 56100, Việt Nam', '1967', 'ltn494', '0681042838');
INSERT INTO BENHNHAN VALUES ('BN0495', N'Phùng Công Nam', N'Nam', N'5RX7+MGF, Mỹ Thuỷ, Lệ Thủy, Quảng Bình, Việt Nam', '1989', 'pcn495', '0073086700');
INSERT INTO BENHNHAN VALUES ('BN0496', N'Lê Công Thúy', N'Nữ', N'V7F9+36 Điện Bàn, Quảng Nam, Việt Nam', '1970', 'lct496', '0350146156');
INSERT INTO BENHNHAN VALUES ('BN0497', N'Từ Văn Quân', N'Nam', N'4VHF+MPC, Nghĩa Hà, Tư Nghĩa, Quảng Ngãi, Việt Nam', '2016', 'tvq497', '0613838659');
INSERT INTO BENHNHAN VALUES ('BN0498', N'Châu Thị Ngọc Trinh', N'Nữ', N'VRXH+W4H, Unnamed Road, Liên Hoà, Yên Hưng, Quảng Ninh, Việt Nam', '1952', 'ctnt498', '0567228699');
INSERT INTO BENHNHAN VALUES ('BN0499', N'Nông Quang Thanh', N'Nam', N'WH88+45W, Hòa Sơn, Lương Sơn, Hòa Bình, Việt Nam', '1953', 'nqt499', '0458232406');
INSERT INTO BENHNHAN VALUES ('BN0500', N'Lâm Thịnh Linh', N'Nam', N'Nguyễn Hữu Thọ, Phường 3, Tây Ninh, Việt Nam', '2006', 'ltl500', '0266268500');
INSERT INTO BENHNHAN VALUES ('BN0501', N'Thi Văn Kim', N'Nam', N'Phạm Quang Lịch Lý Bôn, Tiền Phong, Thái Bình, 61000, Việt Nam', '1993', 'tvk501', '0781703456');
REM INSERTING into CHITIETCHANDOAN
SET DEFINE OFF;
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0001','B0001');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0001','B0005');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0002','B0002');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0002','B0006');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0003','B0003');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0003','B0007');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0004','B0004');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0004','B0008');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0005','B0005');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0005','B0009');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0006','B0006');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0006','B0010');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0007','B0007');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0007','B0011');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0008','B0008');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0008','B0012');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0009','B0009');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0009','B0013');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0010','B0010');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0010','B0014');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0011','B0011');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0011','B0015');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0012','B0012');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0012','B0016');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0013','B0013');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0013','B0017');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0014','B0014');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0014','B0018');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0015','B0015');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0015','B0019');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0016','B0016');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0016','B0020');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0017','B0017');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0017','B0021');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0018','B0018');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0018','B0022');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0019','B0019');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0019','B0023');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0020','B0020');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0020','B0024');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0021','B0021');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0021','B0025');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0022','B0022');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0022','B0026');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0023','B0023');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0023','B0027');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0024','B0024');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0024','B0028');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0025','B0025');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0026','B0026');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0027','B0027');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0028','B0028');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0029','B0029');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0030','B0030');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0031','B0031');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0032','B0032');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0033','B0033');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0034','B0034');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0035','B0035');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0036','B0036');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0037','B0037');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0038','B0038');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0039','B0039');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0040','B0040');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0041','B0041');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0042','B0042');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0043','B0043');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0044','B0044');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0045','B0045');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0046','B0046');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0047','B0047');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0048','B0048');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0049','B0001');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0050','B0002');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0051','B0003');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0052','B0004');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0053','B0005');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0054','B0006');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0055','B0007');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0056','B0008');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0057','B0009');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0058','B0010');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0059','B0011');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0060','B0012');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0061','B0013');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0062','B0014');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0063','B0015');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0064','B0016');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0065','B0017');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0066','B0018');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0067','B0019');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0068','B0020');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0069','B0021');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0070','B0022');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0071','B0023');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0072','B0024');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0073','B0025');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0074','B0026');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0075','B0027');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0076','B0028');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0077','B0029');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0078','B0030');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0079','B0031');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0080','B0032');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0081','B0033');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0082','B0034');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0083','B0035');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0084','B0036');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0085','B0037');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0086','B0038');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0087','B0039');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0088','B0040');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0089','B0041');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0090','B0042');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0091','B0043');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0092','B0044');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0093','B0045');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0094','B0046');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0095','B0047');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0096','B0048');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0097','B0001');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0098','B0002');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0099','B0003');
Insert into CHITIETCHANDOAN (MAPHIEUKHAM,MABENH) values ('PK0100','B0004');
REM INSERTING into CHITIETTOATHUOC
SET DEFINE OFF;

INSERT INTO CHITIETTOATHUOC VALUES ('TT0001', 'T0096', 50000, 10, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0001', 'T0097', 7000, 12, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0001', 'T0098', 49000, 30, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0002', 'T0099', 25000, 15, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0003', 'T0100', 11000, 12, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0003', 'T0101', 56000, 6, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0004', 'T0102', 120000, 9, N'Ngày 2 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0005', 'T0103', 21800, 30, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0006', 'T0104', 30000, 18, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0006', 'T0105', 12000, 10, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0006', 'T0106', 158000, 12, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0007', 'T0107', 12000, 9, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0008', 'T0108', 1526000, 6, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0009', 'T0109', 12000, 5, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0010', 'T0110', 150000, 3, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0011', 'T0111', 599000, 1, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0012', 'T0112', 811000, 8, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0013', 'T0113', 389000, 5, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0014', 'T0114', 369000, 6, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0014', 'T0115', 189000, 10, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0014', 'T0116', 789000, 15, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0015', 'T0117', 559000, 18, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0016', 'T0118', 484000, 20, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0017', 'T0119', 639000, 24, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0018', 'T0120', 439000, 30, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0019', 'T0121', 490000, 10, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0019', 'T0122', 239000, 12, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0019', 'T0123', 369000, 30, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0019', 'T0124', 169000, 15, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0020', 'T0125', 569000, 12, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0021', 'T0126', 399000, 6, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0022', 'T0127', 169000, 9, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0022', 'T0128', 16900, 30, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0023', 'T0129', 169000, 18, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0024', 'T0130', 169000, 10, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0025', 'T0131', 769000, 12, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0026', 'T0132', 169000, 9, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0027', 'T0133', 869000, 6, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0028', 'T0134', 1569000, 5, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0029', 'T0135', 899000, 3, N'Ngày 1 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0030', 'T0136', 1629000, 1, N'Ngày 1 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0031', 'T0137', 169000, 8, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0032', 'T0138', 499000, 5, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0033', 'T0139', 279000, 6, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0034', 'T0140', 169000, 10, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0035', 'T0141', 99000, 15, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0036', 'T0142', 399000, 18, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0037', 'T0143', 830000, 20, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0038', 'T0144', 222000, 24, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0039', 'T0145', 569000, 30, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0040', 'T0146', 769000, 10, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0041', 'T0147', 869000, 12, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0042', 'T0148', 129000, 30, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0043', 'T0149', 269000, 15, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0044', 'T0150', 45000, 12, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0045', 'T0151', 669000, 6, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0045', 'T0152', 559000, 9, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0046', 'T0153', 369000, 30, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0047', 'T0154', 69000, 18, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0047', 'T0155', 1690000, 10, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0047', 'T0156', 369000, 12, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0047', 'T0157', 269000, 9, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0048', 'T0158', 69000, 6, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0049', 'T0159', 169000, 5, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0050', 'T0160', 169000, 3, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0051', 'T0161', 550000, 1, N'Ngày 1 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0052', 'T0162', 750000, 8, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0053', 'T0163', 300000, 5, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0054', 'T0164', 299000, 6, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0055', 'T0165', 140000, 10, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0056', 'T0166', 700000, 15, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0057', 'T0167', 500000, 18, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0058', 'T0168', 404000, 20, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0059', 'T0169', 600000, 24, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0060', 'T0170', 400000, 30, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0061', 'T0171', 450000, 10, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0062', 'T0172', 200000, 12, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0063', 'T0173', 360000, 30, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0064', 'T0174', 160000, 15, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0065', 'T0175', 560000, 12, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0066', 'T0176', 389000, 6, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0067', 'T0177', 160000, 9, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0068', 'T0178', 15000, 30, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0069', 'T0179', 160000, 18, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0070', 'T0180', 160000, 10, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0071', 'T0181', 760000, 12, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0071', 'T0182', 160000, 9, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0071', 'T0183', 760000, 6, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0071', 'T0184', 1460000, 5, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0072', 'T0185', 860000, 3, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0073', 'T0186', 1600000, 1, N'Ngày 1 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0074', 'T0187', 160000, 8, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0075', 'T0188', 400000, 5, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0076', 'T0189', 250000, 6, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0077', 'T0190', 160000, 10, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0078', 'T0191', 90000, 15, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0079', 'T0192', 390000, 18, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0080', 'T0193', 760000, 20, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0081', 'T0194', 160000, 24, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0082', 'T0195', 560000, 30, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0083', 'T0196', 760000, 10, N'Ngày 2 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0084', 'T0197', 860000, 12, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0085', 'T0198', 120000, 30, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0086', 'T0199', 260000, 15, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0087', 'T0065', 30000, 12, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0088', 'T0066', 650000, 6, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0089', 'T0067', 540000, 9, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0089', 'T0068', 360000, 30, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0089', 'T0069', 60000, 18, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0090', 'T0070', 1600000, 10, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0091', 'T0071', 360000, 12, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0092', 'T0072', 160000, 9, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0093', 'T0073', 60000, 6, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0093', 'T0074', 160000, 5, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0093', 'T0075', 160000, 3, N'Ngày 1 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0094', 'T0076', 499000, 1, N'Ngày 3 lần mỗi lần 2 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0095', 'T0077', 279000, 8, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0096', 'T0078', 169000, 5, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0097', 'T0079', 99000, 6, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0098', 'T0080', 399000, 10, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0098', 'T0081', 830000, 15, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0098', 'T0082', 222000, 18, N'Ngày 3 lần mỗi lần 3 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0099', 'T0083', 569000, 20, N'Ngày 3 lần mỗi lần 1 viên');
INSERT INTO CHITIETTOATHUOC VALUES ('TT0100', 'T0073', 769000, 24, N'Ngày 3 lần mỗi lần 2 viên');
REM INSERTING into CHUYENKHOA
SET DEFINE OFF;
Insert into CHUYENKHOA (MACHUYENKHOA,TENCHUYENKHOA,HINHANH) values ('CK0001', N'Chuyên khoa Da liễu','CK0001.png');
Insert into CHUYENKHOA (MACHUYENKHOA,TENCHUYENKHOA,HINHANH) values ('CK0002', N'Chuyên khoa Gan','CK0002.png');
Insert into CHUYENKHOA (MACHUYENKHOA,TENCHUYENKHOA,HINHANH) values ('CK0003', N'Chuyên khoa Ký sinh trùng','CK0003.png');
Insert into CHUYENKHOA (MACHUYENKHOA,TENCHUYENKHOA,HINHANH) values ('CK0004', N'Chuyên khoa Nhi khoa','CK0004.png');
Insert into CHUYENKHOA (MACHUYENKHOA,TENCHUYENKHOA,HINHANH) values ('CK0005', N'Chuyên khoa HIV/AIDS','CK0005.png');
Insert into CHUYENKHOA (MACHUYENKHOA,TENCHUYENKHOA,HINHANH) values ('CK0006', N'Chuyên khoa Hô hấp','CK0006.png');
Insert into CHUYENKHOA (MACHUYENKHOA,TENCHUYENKHOA,HINHANH) values ('CK0007', N'Chuyên khoa Tiêu hóa','CK0007.png');
Insert into CHUYENKHOA (MACHUYENKHOA,TENCHUYENKHOA,HINHANH) values ('CK0008', N'Chuyên khoa Huyết học','CK0008.png');
Insert into CHUYENKHOA (MACHUYENKHOA,TENCHUYENKHOA,HINHANH) values ('CK0009', N'Chuyên khoa Thần kinh','CK0009.png');
REM INSERTING into HOCVI
SET DEFINE OFF;
INSERT INTO HOCVI VALUES ('BS.CKII', N'Bác sĩ chuyên khoa II', 3 );
INSERT INTO HOCVI VALUES ('BS.CKI', N'Bác sĩ chuyên khoa I', 3 );
INSERT INTO HOCVI VALUES ('DS', N'Dược sĩ', 5 );
INSERT INTO HOCVI VALUES ('BSNT', N'Bác sĩ nội trú', 4 );
INSERT INTO HOCVI VALUES ('CN', N'Cử nhân', 6 );
INSERT INTO HOCVI VALUES ('BSCC', N'Bác sĩ cao cấp', 3 );
INSERT INTO HOCVI VALUES ('TS', N'Tiến sĩ', 1 );
INSERT INTO HOCVI VALUES ('THS', N'Thạc sĩ', 2 );
INSERT INTO HOCVI VALUES ('BS', N'Bác sĩ', 4 );
REM INSERTING into HOCVIBACSI
SET DEFINE OFF;
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0001','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0002','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0002','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0003','BS.CKI');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0003','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0004','DS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0005','BSNT');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0005','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0006','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0007','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0008','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0008','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0009','BS.CKI');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0010','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0010','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0011','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0011','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0012','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0012','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0013','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0013','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0014','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0014','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0015','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0016','BS.CKI');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0017','BS.CKI');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0018','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0018','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0019','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0020','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0020','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0021','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0022','BS.CKI');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0023','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0024','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0025','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0025','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0026','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0026','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0027','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0027','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0028','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0028','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0029','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0029','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0030','BS.CKI');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0031','BS.CKI');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0032','BSNT');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0032','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0033','BSNT');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0033','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0034','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0034','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0035','BSNT');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0036','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0036','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0037','BSNT');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0037','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0038','BSNT');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0038','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0039','BSNT');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0039','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0040','DS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0040','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0041','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0041','TS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0042','BSNT');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0042','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0043','BS.CKI');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0044','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0045','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0046','BS.CKI');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0047','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0048','BS.CKII');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0048','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0049','BS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0049','THS');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0050','BSNT');
Insert into HOCVIBACSI (MABACSI,MAHOCVI) values ('BS0050','THS');
REM INSERTING into LICHLAMVIEC
SET DEFINE OFF;
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0001','BS0001','A31',to_date('02-JAN-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0002','BS0002','A42',to_date('02-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0003','BS0003','B14',to_date('03-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0004','BS0004','F33',to_date('04-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0005','BS0005','A14',to_date('05-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0006','BS0006','P24',to_date('06-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0007','BS0007','B32',to_date('07-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0008','BS0008','A21',to_date('08-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0009','BS0009','A34',to_date('09-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0010','BS0010','B11',to_date('10-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0011','BS0011','B31',to_date('11-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0012','BS0012','C31',to_date('12-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0013','BS0013','A11',to_date('13-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0014','BS0014','B33',to_date('14-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0015','BS0015','A22',to_date('15-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0016','BS0016','P31',to_date('16-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0017','BS0017','B34',to_date('17-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0018','BS0018','F31',to_date('18-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0019','BS0019','A35',to_date('19-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0020','BS0020','A12',to_date('20-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0021','BS0021','A31',to_date('21-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0022','BS0022','A42',to_date('22-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0023','BS0023','B14',to_date('23-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0024','BS0024','F33',to_date('24-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0025','BS0025','A14',to_date('25-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0026','BS0026','P24',to_date('26-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0027','BS0027','B32',to_date('27-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0028','BS0028','A21',to_date('28-FEB-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0029','BS0029','A34',to_date('01-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0030','BS0030','B11',to_date('02-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0031','BS0031','B31',to_date('03-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0032','BS0032','C31',to_date('04-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0033','BS0033','A11',to_date('05-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0034','BS0034','B33',to_date('06-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0035','BS0035','A22',to_date('07-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0036','BS0044','P31',to_date('08-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0037','BS0045','B34',to_date('09-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0038','BS0046','F31',to_date('10-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0039','BS0047','A35',to_date('11-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0040','BS0048','A12',to_date('12-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0041','BS0049','A31',to_date('13-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0042','BS0050','A42',to_date('14-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0043','BS0001','B14',to_date('15-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0044','BS0002','F33',to_date('16-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0045','BS0003','A14',to_date('17-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0046','BS0004','P24',to_date('18-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0047','BS0005','B32',to_date('19-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0048','BS0006','A21',to_date('20-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0049','BS0007','A34',to_date('21-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0050','BS0008','B11',to_date('22-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0051','BS0009','B31',to_date('23-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0052','BS0010','C31',to_date('24-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0053','BS0011','A11',to_date('25-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0054','BS0012','B33',to_date('26-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0055','BS0013','A22',to_date('27-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0056','BS0014','P31',to_date('28-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0057','BS0015','B34',to_date('29-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0058','BS0016','F31',to_date('30-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0059','BS0017','A35',to_date('31-MAR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0060','BS0018','A12',to_date('01-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0061','BS0019','A31',to_date('02-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0062','BS0020','A42',to_date('03-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0063','BS0021','B14',to_date('04-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0064','BS0022','F33',to_date('05-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0065','BS0023','A14',to_date('06-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0066','BS0024','P24',to_date('07-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0067','BS0025','B32',to_date('08-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0068','BS0026','A21',to_date('09-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0069','BS0027','A34',to_date('10-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0070','BS0028','B11',to_date('11-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0071','BS0029','B31',to_date('12-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0072','BS0030','C31',to_date('13-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0073','BS0031','A11',to_date('14-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0074','BS0032','B33',to_date('15-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0075','BS0033','A22',to_date('16-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0076','BS0034','P31',to_date('17-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0077','BS0035','B34',to_date('18-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0078','BS0044','F31',to_date('19-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0079','BS0045','A35',to_date('20-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0080','BS0046','A12',to_date('21-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0081','BS0047','A31',to_date('22-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0082','BS0048','A42',to_date('23-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0083','BS0049','B14',to_date('24-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0084','BS0050','F33',to_date('25-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0085','BS0021','A14',to_date('26-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0086','BS0022','P24',to_date('27-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0087','BS0023','B32',to_date('28-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0088','BS0024','A21',to_date('29-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0089','BS0025','A34',to_date('30-APR-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0090','BS0026','B11',to_date('01-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0091','BS0027','B31',to_date('02-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0092','BS0028','C31',to_date('03-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0093','BS0029','A11',to_date('04-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0094','BS0030','B33',to_date('05-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0095','BS0022','A22',to_date('06-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0096','BS0023','P31',to_date('07-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0097','BS0024','B34',to_date('08-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0098','BS0033','F31',to_date('09-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0099','BS0034','A35',to_date('10-MAY-24','DD-MON-RR'));
Insert into LICHLAMVIEC (MALICH,MABACSI,MAPHONG,NGAYLAM) values ('L0100','BS0035','A12',to_date('11-MAY-24','DD-MON-RR'));
REM INSERTING into NHANVIEN
SET DEFINE OFF;
INSERT INTO NHANVIEN VALUES ('NV0001', N'Bùi Phan Bảo Ngọc ', N'Quản lý', 'quanly');
INSERT INTO NHANVIEN VALUES ('NV0002', N'Nguyễn Phan Như Quỳnh ', N'Thu ngân', 'nhuquynh');
INSERT INTO NHANVIEN VALUES ('NV0003', N'Võ Thị Thanh Trúc', N'Thu ngân', 'thanhtruc');
INSERT INTO NHANVIEN VALUES ('NV0004', N'Cù Đức Trường', N'Tiếp tân', 'ductruong');
INSERT INTO NHANVIEN VALUES ('NV0005', N'Nguyễn Phương Bảo Ngân', N'Tiếp tân', 'baongan');

REM INSERTING into PHANQUYENTAIKHOAN
SET DEFINE OFF;
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('quanly','ADMIN');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nhuquynh','CASHIER');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thanhtruc','CASHIER');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ductruong','RECEIVING');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('baongan','RECEIVING');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttd1','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvh2','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nvn3','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtt5','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('httt6','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tko7','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdm8','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vttd9','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tnh11','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ntlh12','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttd13','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ndt14','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tttt15','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hvmm16','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ndh17','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ntc18','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dqh20','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lxn21','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nptl22','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nts23','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lth24','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tnt25','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cdn26','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nqc27','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tqa28','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tav29','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('htkq30','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nqn31','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtt32','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('htl33','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mmt34','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lqh35','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nvn36','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtd37','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttnl38','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdh39','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ctn40','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdh41','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltla42','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nvl43','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lvk44','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lnm45','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qtbt46','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptx47','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptpt48','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nqk49','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dcl50','DOCTOR');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tttp1','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nqt2','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhnt3','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvbn4','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mqhm5','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tda6','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('gpq7','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pcd8','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvx9','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pttl10','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tmh11','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('phna12','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lhth13','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thv14','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vnq15','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('npb16','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('shn17','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vtk18','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('htl19','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cdp20','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdl21','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvk22','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('chmc23','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tqt24','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nht25','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thv26','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nnp27','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tpt28','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thtl29','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pnnl30','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vhv31','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('htv32','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtqn33','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltv34','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('gvv35','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dthm36','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vpth37','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('chnt38','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vtt39','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lht40','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dvnd41','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ndh42','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mvt43','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dab44','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tht45','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mvp46','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kta47','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('phna48','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ott49','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ndl50','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('khp51','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pvth52','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tch53','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dny54','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('damt55','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thh56','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lvl57','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hct58','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tth59','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mpl60','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvk61','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('chn62','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qvd63','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pdt64','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kqa65','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vhl66','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ktp67','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdht68','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ntt69','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('stk70','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bpq71','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thl72','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vvt73','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thp74','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('btp75','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lhtl76','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vny77','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kntt78','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vhnm79','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('khk80','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdm81','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dcnt82','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kqny83','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nph84','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ctl85','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ovl86','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nhnd87','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vtmp88','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ktd89','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mvny90','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ppnm91','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cagh92','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kht93','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtt94','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bmd95','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kcq96','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tth97','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('uhv98','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttb99','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdtl100','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pht101','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltt102','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bhnd103','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtht104','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ntt105','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvh106','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pttl107','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dmb108','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thq109','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kqa110','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bvv111','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('chl112','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vhd113','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bvp114','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttq115','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vtt116','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ctnm117','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dty118','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('btpa119','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dvtl120','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tqk121','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ktv122','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('chk123','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kvnm124','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('knt125','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tnt126','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hnm127','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bdl128','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttk129','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vttl130','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('knh131','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nnt132','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ndnd133','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhp134','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ddt135','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tmn136','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('htn137','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bvt138','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hb139','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dvt140','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tqt141','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dth142','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('gpgh143','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pdn144','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttt145','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mtt146','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mtt147','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vcq148','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtp149','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ddt150','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tth151','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thd152','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kvn153','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tnh154','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptnl155','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qqh156','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvc157','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vcp158','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vnt159','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thl160','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ctnd161','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bhn162','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('chl163','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hnt164','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tphl165','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('odv166','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pvqn167','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('khtt168','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tnp169','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtd170','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bhp171','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtq172','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tth173','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tttl174','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hhmt175','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dmt176','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thv177','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vnht178','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('latl179','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hpd180','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvq181','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhn182','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('htt183','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('chn184','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mph185','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vmt186','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lnd187','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hdnm188','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qvl189','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lcnd190','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tny191','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tpt192','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qttl193','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cnnl194','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ddt195','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tht196','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tmh197','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pdl198','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kdth199','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('npv200','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dnth201','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cqd202','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hnq203','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vhhm204','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhn205','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cqbn206','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hct207','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptt208','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cdq209','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('laht210','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtth211','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mvt212','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttv213','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tva214','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thm215','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ktt216','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vpt217','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttnl218','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dmk219','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhhm220','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qtny221','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bqmc222','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bmp223','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tqpa224','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cnbn225','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bvx226','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ddc227','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pvt228','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mdh229','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('htd230','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hnb231','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtb232','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mvh233','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hps234','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nvx235','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdt236','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bmk237','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtt238','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nht239','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptv240','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('htl241','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kvb242','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ntv243','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('gtt244','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mhm245','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thh246','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvp247','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lhn248','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('phn249','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dnb250','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ddtt251','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttm252','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cvnt253','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tqnm254','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lhk255','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tchl256','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kdc257','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vtm258','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tnd259','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttny260','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('htt261','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhn262','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vtgh263','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tnq264','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dvna265','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dcmt266','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('acy267','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cdt268','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pdb269','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptnd270','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bvq271','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtn272','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bva273','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hvq274','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cvht275','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thp276','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thv277','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ahn278','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lnp279','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pva280','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttl281','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pdtt282','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ldpa283','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vvh284','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vthm285','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dda286','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptk287','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('avt288','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lnqn289','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvh290','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hdq291','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pdb292','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dmbn293','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cvd294','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvh295','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thh296','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhh297','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dnh298','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('acp299','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvt300','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdh301','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdtt302','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lhk303','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptnt304','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tqa305','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ntc306','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cat307','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttht308','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdm309','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pcn310','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tttt311','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvh312','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhht313','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mnhl314','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nhn315','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('btp316','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lnh317','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cnt318','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tqa319','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nht320','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dvd321','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thhm322','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('snl323','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vhna324','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pth325','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hvp326','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vvmt327','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ntd328','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thh329','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('gct330','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hha331','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('btt332','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thl333','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qma334','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lhk335','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cnqa336','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lth337','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thht338','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptl339','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dmq340','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cmd341','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hvna342','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdt343','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cnl344','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bhc345','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ndh346','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qhq347','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bhk348','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hcm349','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhh350','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('capa351','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtk352','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('utp353','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ghh354','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ktp355','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('gtqa356','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptk357','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tha358','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tna359','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tct360','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nvl361','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vhq362','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ktt363','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptn364','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tta365','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ktd366','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('phn367','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lvt368','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ddl369','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('svh370','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dpth371','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('uvh372','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltn373','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tth374','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dvn375','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('khl376','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qdd377','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttmc378','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cctl379','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvp380','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttd381','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kcn382','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nhh383','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltq384','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('phk385','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dvt386','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kdh387','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lth388','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lvd389','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nvt390','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lcd391','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mth392','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hhhm393','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('shv394','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hhk395','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bnp396','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhmt397','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('sdp398','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdq399','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('phd400','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hdy401','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thh402','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vtq403','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nhht404','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vvq405','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhn406','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttgh407','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dnn408','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cmth409','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hhh410','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ktl411','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vpn412','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dhd413','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('chk414','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vnn415','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thb416','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pnk417','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tcq418','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tpgh419','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vtbn420','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dha421','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('opna422','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dts423','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ahv424','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dth425','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cnh426','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pdl427','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ktl428','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tpl429','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lhq430','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('khn431','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltnm432','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('gch433','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hhh434','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltnl435','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vtqn436','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hna437','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ptt438','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dvq439','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('bdk440','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mhq441','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dta442','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttt443','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtpa444','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttmp445','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ddv446','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pth447','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hhn448','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tmt449','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('phth450','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ctk451','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hvp452','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltt453','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('mts454','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dvny455','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thh456','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vhn457','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('val458','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('udh459','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pnd460','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vmhl461','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('btt462','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtt463','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dtl464','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('stq465','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qmd466','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dth467','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lmk468','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kdt469','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('vnd470','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ntn471','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cht472','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('hdnl473','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kva474','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dnm475','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('kdnm476','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ghv477','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('cvb478','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qch479','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('qvb480','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('dha481','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttl482','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tth483','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lhnd484','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lhht485','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pvs486','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('thq487','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tav488','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ttd489','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ndn490','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ndk491','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tdp492','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('sty493','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltn494','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('pcn495','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('lct496','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvq497','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ctnt498','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('nqt499','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('ltl500','PATIENT');
Insert into PHANQUYENTAIKHOAN (TENTAIKHOAN,MAQUYEN) values ('tvk501','PATIENT');
REM INSERTING into PHIEUDANGKY
SET DEFINE OFF;
INSERT INTO PHIEUDANGKY VALUES ('PDK0001', TO_DATE('02/01/2024', 'DD-MM-YYYY'), 'TB7512118338392', N'Đã thanh toán', 'BN0001', 'NV0004', 'NV0002', 'L0001', NULL, 1, 1, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0002', TO_DATE('02/02/2024', 'DD-MM-YYYY'), 'SV5273740420206', N'Đã thanh toán', 'BN0002', 'NV0004', 'NV0002', 'L0002', NULL, 2, 2, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0003', TO_DATE('03/02/2024', 'DD-MM-YYYY'), 'TB2335296193324', N'Đã thanh toán', 'BN0003', 'NV0005', 'NV0003', 'L0003', NULL, 3, 3, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0004', TO_DATE('04/03/2024', 'DD-MM-YYYY'), 'HX5365978692543', N'Đã thanh toán', 'BN0004', 'NV0004', 'NV0002', 'L0004', NULL, 4, 4, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0005', TO_DATE('05/02/2024', 'DD-MM-YYYY'), 'NN7610738255254', N'Đã thanh toán', 'BN0005', 'NV0004', 'NV0002', 'L0005', NULL, 5, 5, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0006', TO_DATE('06/03/2024', 'DD-MM-YYYY'), 'KC5012681618345', N'Đã thanh toán', 'BN0006', 'NV0005', 'NV0003', 'L0006', NULL, 6, 6, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0007', TO_DATE('07/02/2024', 'DD-MM-YYYY'), 'KC2436120686503', N'Đã thanh toán', 'BN0007', 'NV0004', 'NV0002', 'L0007', NULL, 7, 7, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0008', TO_DATE('08/02/2024', 'DD-MM-YYYY'), 'KC8200807195913', N'Đã thanh toán', 'BN0008', 'NV0004', 'NV0002', 'L0008', NULL, 8, 8, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0009', TO_DATE('09/02/2024', 'DD-MM-YYYY'), 'LS8215416952028', N'Đã thanh toán', 'BN0009', 'NV0005', 'NV0003', 'L0009', NULL, 9, 9, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0010', TO_DATE('10/02/2024', 'DD-MM-YYYY'), 'TB6978905415587', N'Đã thanh toán', 'BN0010', 'NV0004', 'NV0002', 'L0010', NULL, 10, 10, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0011', TO_DATE('11/03/2024', 'DD-MM-YYYY'), 'TB9397316738950', N'Đã thanh toán', 'BN0011', 'NV0004', 'NV0002', 'L0011', NULL, 11, 11, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0012', TO_DATE('12/02/2024', 'DD-MM-YYYY'), 'CC5681659067273', N'Đã thanh toán', 'BN0012', 'NV0004', 'NV0002', 'L0012', NULL, 12, 12, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0013', TO_DATE('13/02/2024', 'DD-MM-YYYY'), 'HG5918071609772', N'Đã thanh toán', 'BN0013', 'NV0005', 'NV0003', 'L0013', NULL, 13, 13, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0014', TO_DATE('14/02/2024', 'DD-MM-YYYY'), 'HT7182160676709', N'Đã thanh toán', 'BN0080', 'NV0004', 'NV0002', 'L0014', NULL, 14, 14, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0015', TO_DATE('15/02/2024', 'DD-MM-YYYY'), 'LS4177017907473', N'Đã thanh toán', 'BN0081', 'NV0004', 'NV0002', 'L0015', NULL, 15, 15, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0016', TO_DATE('16/02/2024', 'DD-MM-YYYY'), 'XK5378954433963', N'Đã thanh toán', 'BN0082', 'NV0005', 'NV0003', 'L0016', NULL, 16, 16, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0017', TO_DATE('17/02/2024', 'DD-MM-YYYY'), 'CC8152140285016', N'Đã thanh toán', 'BN0083', 'NV0004', 'NV0002', 'L0017', NULL, 17, 17, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0018', TO_DATE('18/02/2024', 'DD-MM-YYYY'), 'XN4192879111938', N'Đã thanh toán', 'BN0084', 'NV0004', 'NV0002', 'L0018', NULL, 18, 18, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0019', TO_DATE('19/02/2024', 'DD-MM-YYYY'), 'CN8848656655366', N'Đã thanh toán', 'BN0085', 'NV0005', 'NV0003', 'L0019', NULL, 19, 19, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0020', TO_DATE('20/02/2024', 'DD-MM-YYYY'), 'CK7690956661033', N'Đã thanh toán', 'BN0086', 'NV0004', 'NV0002', 'L0020', NULL, 20, 20, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0021', TO_DATE('21/02/2024', 'DD-MM-YYYY'), 'CK0727860776177', N'Đã thanh toán', 'BN0087', 'NV0004', 'NV0002', 'L0021', NULL, 21, 21, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0022', TO_DATE('22/02/2024', 'DD-MM-YYYY'), 'KC0648928520354', N'Đã thanh toán', 'BN0088', 'NV0005', 'NV0003', 'L0022', NULL, 22, 22, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0023', TO_DATE('23/02/2024', 'DD-MM-YYYY'), 'HX7935287938895', N'Đã thanh toán', 'BN0048', 'NV0004', 'NV0002', 'L0023', NULL, 23, 23, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0024', TO_DATE('24/02/2024', 'DD-MM-YYYY'), 'TY0350954300228', N'Đã thanh toán', 'BN0049', 'NV0004', 'NV0002', 'L0024', NULL, 24, 24, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0025', TO_DATE('25/02/2024', 'DD-MM-YYYY'), 'CT6749018275067', N'Đã thanh toán', 'BN0050', 'NV0005', 'NV0003', 'L0025', NULL, 25, 25, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0026', TO_DATE('26/02/2024', 'DD-MM-YYYY'), 'TA6697671627538', N'Đã thanh toán', 'BN0051', 'NV0004', 'NV0002', 'L0026', NULL, 26, 26, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0027', TO_DATE('27/02/2024', 'DD-MM-YYYY'), 'CH7369101414164', N'Đã thanh toán', 'BN0052', 'NV0004', 'NV0002', 'L0027', NULL, 27, 27, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0028', TO_DATE('28/02/2024', 'DD-MM-YYYY'), 'CN8082550248685', N'Đã thanh toán', 'BN0053', 'NV0005', 'NV0003', 'L0028', NULL, 28, 28, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0029', TO_DATE('01/03/2024', 'DD-MM-YYYY'), 'PV9943283134220', N'Đã thanh toán', 'BN0054', 'NV0004', 'NV0002', 'L0029', NULL, 29, 29, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0030', TO_DATE('02/03/2024', 'DD-MM-YYYY'), 'KC2847946182469', N'Đã thanh toán', 'BN0055', 'NV0004', 'NV0002', 'L0030', NULL, 30, 30, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0031', TO_DATE('03/03/2024', 'DD-MM-YYYY'), 'HG7984425895441', N'Đã thanh toán', 'BN0056', 'NV0005', 'NV0003', 'L0031', NULL, 31, 31, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0032', TO_DATE('04/03/2024', 'DD-MM-YYYY'), 'KC1097113222541', N'Đã thanh toán', 'BN0057', 'NV0004', 'NV0002', 'L0032', NULL, 32, 32, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0033', TO_DATE('05/03/2024', 'DD-MM-YYYY'), 'PV5791425559345', N'Đã thanh toán', 'BN0058', 'NV0004', 'NV0002', 'L0033', NULL, 33, 33, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0034', TO_DATE('06/03/2024', 'DD-MM-YYYY'), 'GB3993740972371', N'Đã thanh toán', 'BN0059', 'NV0005', 'NV0003', 'L0034', NULL, 34, 34, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0035', TO_DATE('07/03/2024', 'DD-MM-YYYY'), 'TB4400778230205', N'Đã thanh toán', 'BN0060', 'NV0004', 'NV0002', 'L0035', NULL, 35, 35, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0036', TO_DATE('08/03/2024', 'DD-MM-YYYY'), 'CB2048818789854', N'Đã thanh toán', 'BN0061', 'NV0004', 'NV0002', 'L0036', NULL, 36, 36, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0037', TO_DATE('09/03/2024', 'DD-MM-YYYY'), 'CB2134498620675', N'Đã thanh toán', 'BN0062', 'NV0005', 'NV0003', 'L0037', NULL, 37, 37, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0038', TO_DATE('10/03/2024', 'DD-MM-YYYY'), 'CC2162708795405', N'Đã thanh toán', 'BN0063', 'NV0004', 'NV0002', 'L0038', NULL, 38, 38, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0039', TO_DATE('11/03/2024', 'DD-MM-YYYY'), 'CK2074770637499', N'Đã thanh toán', 'BN0064', 'NV0004', 'NV0002', 'L0039', NULL, 39, 39, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0040', TO_DATE('12/03/2024', 'DD-MM-YYYY'), 'CC2508709428284', N'Đã thanh toán', 'BN0065', 'NV0005', 'NV0003', 'L0040', NULL, 40, 40, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0041', TO_DATE('13/03/2024', 'DD-MM-YYYY'), 'CC2065639761421', N'Đã thanh toán', 'BN0066', 'NV0004', 'NV0002', 'L0041', NULL, 1, 1, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0042', TO_DATE('14/03/2024', 'DD-MM-YYYY'), 'LS9877299455756', N'Đã thanh toán', 'BN0067', 'NV0004', 'NV0002', 'L0042', NULL, 2, 2, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0043', TO_DATE('15/03/2024', 'DD-MM-YYYY'), 'CH7427959251924', N'Đã thanh toán', 'BN0068', 'NV0005', 'NV0003', 'L0043', NULL, 3, 3, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0044', TO_DATE('16/03/2024', 'DD-MM-YYYY'), 'SV4538154959101', N'Đã thanh toán', 'BN0069', 'NV0004', 'NV0002', 'L0044', NULL, 4, 4, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0045', TO_DATE('17/03/2024', 'DD-MM-YYYY'), 'SV8274052225662', N'Đã thanh toán', 'BN0284', 'NV0004', 'NV0002', 'L0045', NULL, 5, 5, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0046', TO_DATE('18/03/2024', 'DD-MM-YYYY'), 'HS9910354613676', N'Đã thanh toán', 'BN0285', 'NV0005', 'NV0003', 'L0046', NULL, 6, 6, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0047', TO_DATE('19/03/2024', 'DD-MM-YYYY'), 'SV5388945255720', N'Đã thanh toán', 'BN0286', 'NV0004', 'NV0002', 'L0047', NULL, 7, 7, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0048', TO_DATE('20/03/2024', 'DD-MM-YYYY'), 'TY1355331221815', N'Đã thanh toán', 'BN0287', 'NV0004', 'NV0002', 'L0048', NULL, 8, 8, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0049', TO_DATE('21/03/2024', 'DD-MM-YYYY'), 'CB0960129327384', N'Đã thanh toán', 'BN0288', 'NV0005', 'NV0003', 'L0049', NULL, 9, 9, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0050', TO_DATE('22/03/2024', 'DD-MM-YYYY'), 'SV7432391395118', N'Đã thanh toán', 'BN0289', 'NV0004', 'NV0002', 'L0050', NULL, 10, 10, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0051', TO_DATE('23/03/2024', 'DD-MM-YYYY'), 'CK2169997448391', N'Đã thanh toán', 'BN0290', 'NV0004', 'NV0002', 'L0051', NULL, 11, 11, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0052', TO_DATE('24/03/2024', 'DD-MM-YYYY'), 'NN6422109036507', N'Đã thanh toán', 'BN0291', 'NV0005', 'NV0003', 'L0052', NULL, 12, 12, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0053', TO_DATE('25/03/2024', 'DD-MM-YYYY'), 'TA7296839734079', N'Đã thanh toán', 'BN0292', 'NV0004', 'NV0002', 'L0053', NULL, 13, 13, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0054', TO_DATE('26/03/2024', 'DD-MM-YYYY'), 'CN9397840555049', N'Đã thanh toán', 'BN0293', 'NV0004', 'NV0002', 'L0054', NULL, 14, 14, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0055', TO_DATE('27/03/2024', 'DD-MM-YYYY'), 'XN4430872022294', N'Đã thanh toán', 'BN0294', 'NV0005', 'NV0003', 'L0055', NULL, 15, 15, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0056', TO_DATE('28/03/2024', 'DD-MM-YYYY'), 'HT1598184644107', N'Đã thanh toán', 'BN0295', 'NV0004', 'NV0002', 'L0056', NULL, 16, 16, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0057', TO_DATE('29/03/2024', 'DD-MM-YYYY'), 'GD0444407109594', N'Đã thanh toán', 'BN0296', 'NV0004', 'NV0002', 'L0057', NULL, 17, 17, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0058', TO_DATE('30/03/2024', 'DD-MM-YYYY'), 'GB2852049549715', N'Đã thanh toán', 'BN0297', 'NV0005', 'NV0003', 'L0058', NULL, 18, 18, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0059', TO_DATE('31/03/2024', 'DD-MM-YYYY'), 'CB7549789267164', N'Đã thanh toán', 'BN0298', 'NV0004', 'NV0002', 'L0059', NULL, 19, 19, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0060', TO_DATE('01/04/2024', 'DD-MM-YYYY'), 'XN1961102527314', N'Đã thanh toán', 'BN0299', 'NV0004', 'NV0002', 'L0060', NULL, 20, 20, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0061', TO_DATE('02/04/2024', 'DD-MM-YYYY'), 'HT9512473319447', N'Đã thanh toán', 'BN0300', 'NV0005', 'NV0003', 'L0061', NULL, 21, 21, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0062', TO_DATE('03/04/2024', 'DD-MM-YYYY'), 'HG4801336957945', N'Đã thanh toán', 'BN0301', 'NV0004', 'NV0002', 'L0062', NULL, 22, 22, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0063', TO_DATE('04/04/2024', 'DD-MM-YYYY'), 'TY0599913214253', N'Đã thanh toán', 'BN0302', 'NV0004', 'NV0002', 'L0063', NULL, 23, 23, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0064', TO_DATE('05/04/2024', 'DD-MM-YYYY'), 'HS4004101416205', N'Đã thanh toán', 'BN0303', 'NV0005', 'NV0003', 'L0064', NULL, 24, 24, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0065', TO_DATE('06/04/2024', 'DD-MM-YYYY'), 'SV3542868271357', N'Đã thanh toán', 'BN0304', 'NV0004', 'NV0002', 'L0065', NULL, 25, 25, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0066', TO_DATE('07/04/2024', 'DD-MM-YYYY'), 'CK2856780964169', N'Đã thanh toán', 'BN0305', 'NV0004', 'NV0002', 'L0066', NULL, 26, 26, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0067', TO_DATE('08/04/2024', 'DD-MM-YYYY'), 'TB2248119009443', N'Đã thanh toán', 'BN0306', 'NV0005', 'NV0003', 'L0067', NULL, 27, 27, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0068', TO_DATE('09/04/2024', 'DD-MM-YYYY'), 'HX2484091481214', N'Đã thanh toán', 'BN0307', 'NV0004', 'NV0002', 'L0068', NULL, 28, 28, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0069', TO_DATE('10/04/2024', 'DD-MM-YYYY'), 'KC2715091208463', N'Đã thanh toán', 'BN0308', 'NV0004', 'NV0002', 'L0069', NULL, 29, 29, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0070', TO_DATE('11/04/2024', 'DD-MM-YYYY'), 'HX7750565525124', N'Đã thanh toán', 'BN0309', 'NV0005', 'NV0003', 'L0070', NULL, 30, 30, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0071', TO_DATE('12/04/2024', 'DD-MM-YYYY'), 'CH4355731988872', N'Đã thanh toán', 'BN0310', 'NV0004', 'NV0002', 'L0071', NULL, 31, 31, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0072', TO_DATE('13/04/2024', 'DD-MM-YYYY'), 'HG2670455621298', N'Đã thanh toán', 'BN0311', 'NV0004', 'NV0002', 'L0072', NULL, 32, 32, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0073', TO_DATE('14/04/2024', 'DD-MM-YYYY'), 'HT9999894292542', N'Đã thanh toán', 'BN0312', 'NV0005', 'NV0003', 'L0073', NULL, 33, 33, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0074', TO_DATE('15/04/2024', 'DD-MM-YYYY'), 'TA2351781244727', N'Đã thanh toán', 'BN0313', 'NV0004', 'NV0002', 'L0074', NULL, 34, 34, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0075', TO_DATE('16/04/2024', 'DD-MM-YYYY'), 'HT6349910436364', N'Đã thanh toán', 'BN0314', 'NV0004', 'NV0002', 'L0075', NULL, 35, 35, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0076', TO_DATE('17/04/2024', 'DD-MM-YYYY'), 'CT0766425199584', N'Đã thanh toán', 'BN0315', 'NV0005', 'NV0003', 'L0076', NULL, 36, 36, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0077', TO_DATE('18/04/2024', 'DD-MM-YYYY'), 'TA1958289454516', N'Đã thanh toán', 'BN0316', 'NV0004', 'NV0002', 'L0077', NULL, 37, 37, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0078', TO_DATE('19/04/2024', 'DD-MM-YYYY'), 'HT4547644722770', N'Đã thanh toán', 'BN0317', 'NV0004', 'NV0002', 'L0078', NULL, 38, 38, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0079', TO_DATE('20/04/2024', 'DD-MM-YYYY'), 'CC1044337156239', N'Đã thanh toán', 'BN0318', 'NV0005', 'NV0003', 'L0079', NULL, 39, 39, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0080', TO_DATE('21/04/2024', 'DD-MM-YYYY'), 'TB9302621139773', N'Đã thanh toán', 'BN0319', 'NV0004', 'NV0002', 'L0080', NULL, 40, 40, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0081', TO_DATE('22/04/2024', 'DD-MM-YYYY'), 'CH6101508178914', N'Đã thanh toán', 'BN0320', 'NV0004', 'NV0002', 'L0081', NULL, 1, 1, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0082', TO_DATE('23/04/2024', 'DD-MM-YYYY'), 'GB8964570151885', N'Đã thanh toán', 'BN0321', 'NV0005', 'NV0003', 'L0082', NULL, 2, 2, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0083', TO_DATE('24/04/2024', 'DD-MM-YYYY'), 'XN4972854123278', N'Đã thanh toán', 'BN0454', 'NV0004', 'NV0002', 'L0083', NULL, 3, 3, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0084', TO_DATE('25/04/2024', 'DD-MM-YYYY'), 'CN1353036505028', N'Đã thanh toán', 'BN0455', 'NV0004', 'NV0002', 'L0084', NULL, 4, 4, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0085', TO_DATE('26/04/2024', 'DD-MM-YYYY'), 'SV1961805827955', N'Đã thanh toán', 'BN0456', 'NV0004', 'NV0002', 'L0085', NULL, 5, 5, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0086', TO_DATE('27/04/2024', 'DD-MM-YYYY'), 'CT7300867138907', N'Đã thanh toán', 'BN0457', 'NV0005', 'NV0003', 'L0086', NULL, 6, 6, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0087', TO_DATE('28/04/2024', 'DD-MM-YYYY'), 'HX1372696963443', N'Đã thanh toán', 'BN0458', 'NV0004', 'NV0002', 'L0087', NULL, 7, 7, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0088', TO_DATE('29/04/2024', 'DD-MM-YYYY'), 'LS9588483520968', N'Đã thanh toán', 'BN0459', 'NV0004', 'NV0002', 'L0088', NULL, 8, 8, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0089', TO_DATE('30/04/2024', 'DD-MM-YYYY'), 'PV9531101658569', N'Đã thanh toán', 'BN0460', 'NV0005', 'NV0003', 'L0089', NULL, 9, 9, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0090', TO_DATE('01/05/2024', 'DD-MM-YYYY'), 'XK5102007422175', N'Đã thanh toán', 'BN0461', 'NV0004', 'NV0002', 'L0090', NULL, 10, 10, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0091', TO_DATE('02/05/2024', 'DD-MM-YYYY'), 'XN9345445291932', N'Đã thanh toán', 'BN0462', 'NV0004', 'NV0002', 'L0091', NULL, 11, 11, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0092', TO_DATE('03/05/2024', 'DD-MM-YYYY'), 'TA4420441918695', N'Đã thanh toán', 'BN0463', 'NV0005', 'NV0003', 'L0092', NULL, 12, 12, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0093', TO_DATE('04/05/2024', 'DD-MM-YYYY'), 'HG9203541920697', N'Đã thanh toán', 'BN0464', 'NV0004', 'NV0002', 'L0093', NULL, 13, 13, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0094', TO_DATE('05/05/2024', 'DD-MM-YYYY'), 'CB7207873035357', N'Đã thanh toán', 'BN0465', 'NV0004', 'NV0002', 'L0094', NULL, 14, 14, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0095', TO_DATE('06/05/2024', 'DD-MM-YYYY'), 'HX5213566038970', N'Đã thanh toán', 'BN0466', 'NV0005', 'NV0003', 'L0095', NULL, 15, 15, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0096', TO_DATE('07/05/2024', 'DD-MM-YYYY'), 'HG0779868862974', N'Đã thanh toán', 'BN0467', 'NV0004', 'NV0002', 'L0096', NULL, 16, 16, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0097', TO_DATE('08/05/2024', 'DD-MM-YYYY'), 'HT2357947043576', N'Đã thanh toán', 'BN0468', 'NV0004', 'NV0002', 'L0097', NULL, 17, 17, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0098', TO_DATE('09/05/2024', 'DD-MM-YYYY'), 'CB1477541782427', N'Đã thanh toán', 'BN0469', 'NV0005', 'NV0003', 'L0098', NULL, 18, 18, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0099', TO_DATE('10/05/2024', 'DD-MM-YYYY'), 'GD1800102712012', N'Đã thanh toán', 'BN0470', 'NV0004', 'NV0002', 'L0099', NULL, 19, 19, N'Trực tiếp');
INSERT INTO PHIEUDANGKY VALUES ('PDK0100', TO_DATE('11/05/2024', 'DD-MM-YYYY'), 'NN8261372691401', N'Đã thanh toán', 'BN0471', 'NV0004', 'NV0002', 'L0100', NULL, 20, 20, N'Trực tiếp');

REM INSERTING into PHIEUKHAM
SET DEFINE OFF;
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0001',to_date('02-JAN-24','DD-MON-RR'),null,'PDK0001',48.5,156,101,80);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0002',to_date('02-FEB-24','DD-MON-RR'),null,'PDK0002',39.4,158,137,60);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0003',to_date('03-FEB-24','DD-MON-RR'),null,'PDK0003',50,160,110,46);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0004',to_date('04-MAR-24','DD-MON-RR'),null,'PDK0004',37.8,150,106,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0005',to_date('05-FEB-24','DD-MON-RR'),null,'PDK0005',58.2,149,100,64);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0006',to_date('06-MAR-24','DD-MON-RR'),null,'PDK0006',46.5,170,136,64);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0007',to_date('07-FEB-24','DD-MON-RR'),null,'PDK0007',55,172,107,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0008',to_date('08-FEB-24','DD-MON-RR'),null,'PDK0008',40.9,180,80,62);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0009',to_date('09-FEB-24','DD-MON-RR'),null,'PDK0009',44.1,160,123,58);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0010',to_date('10-FEB-24','DD-MON-RR'),null,'PDK0010',60,165,81,74);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0011',to_date('11-MAR-24','DD-MON-RR'),null,'PDK0011',44.2,155,134,50);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0012',to_date('12-FEB-24','DD-MON-RR'),null,'PDK0012',58.3,156,142,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0013',to_date('13-FEB-24','DD-MON-RR'),null,'PDK0013',41.6,182,144,72);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0014',to_date('14-FEB-24','DD-MON-RR'),null,'PDK0014',38.9,153,92,60);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0015',to_date('15-FEB-24','DD-MON-RR'),null,'PDK0015',39,153,71,76);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0016',to_date('16-FEB-24','DD-MON-RR'),null,'PDK0016',34.2,170,93,86);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0017',to_date('17-FEB-24','DD-MON-RR'),null,'PDK0017',57.7,177,122,66);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0018',to_date('18-FEB-24','DD-MON-RR'),null,'PDK0018',42.9,160,163,68);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0019',to_date('19-FEB-24','DD-MON-RR'),null,'PDK0019',37.6,168,151,86);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0020',to_date('20-FEB-24','DD-MON-RR'),null,'PDK0020',37.9,163,125,94);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0021',to_date('21-FEB-24','DD-MON-RR'),null,'PDK0021',33.7,153,81,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0022',to_date('22-FEB-24','DD-MON-RR'),null,'PDK0022',34.8,155,85,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0023',to_date('23-FEB-24','DD-MON-RR'),null,'PDK0023',32.5,153,126,84);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0024',to_date('24-FEB-24','DD-MON-RR'),null,'PDK0024',45439,160,96,88);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0025',to_date('25-FEB-24','DD-MON-RR'),null,'PDK0025',34,169,144,52);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0026',to_date('26-FEB-24','DD-MON-RR'),null,'PDK0026',45565,160,83,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0027',to_date('27-FEB-24','DD-MON-RR'),null,'PDK0027',33.6,150,95,86);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0028',to_date('28-FEB-24','DD-MON-RR'),null,'PDK0028',45407,155,171,88);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0029',to_date('01-MAR-24','DD-MON-RR'),null,'PDK0029',35.5,162,155,56);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0030',to_date('02-MAR-24','DD-MON-RR'),null,'PDK0030',57.3,150,89,75);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0031',to_date('03-MAR-24','DD-MON-RR'),null,'PDK0031',35.6,163,76,60);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0032',to_date('04-MAR-24','DD-MON-RR'),null,'PDK0032',45565,164,160,86);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0033',to_date('05-MAR-24','DD-MON-RR'),null,'PDK0033',45528,158,146,72);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0034',to_date('06-MAR-24','DD-MON-RR'),null,'PDK0034',35.3,157,124,60);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0035',to_date('07-MAR-24','DD-MON-RR'),null,'PDK0035',36,155,78,74);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0036',to_date('08-MAR-24','DD-MON-RR'),null,'PDK0036',45346,163,97,80);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0037',to_date('09-MAR-24','DD-MON-RR'),null,'PDK0037',45346,152,99,44);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0038',to_date('10-MAR-24','DD-MON-RR'),null,'PDK0038',49.6,158,162,58);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0039',to_date('11-MAR-24','DD-MON-RR'),null,'PDK0039',44.6,163,111,94);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0040',to_date('12-MAR-24','DD-MON-RR'),null,'PDK0040',32.3,159,107,88);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0041',to_date('13-MAR-24','DD-MON-RR'),null,'PDK0041',53.5,162,132,84);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0042',to_date('14-MAR-24','DD-MON-RR'),null,'PDK0042',33.2,161,113,94);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0043',to_date('15-MAR-24','DD-MON-RR'),null,'PDK0043',45314,156,88,74);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0044',to_date('16-MAR-24','DD-MON-RR'),null,'PDK0044',45379,158,120,70);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0045',to_date('17-MAR-24','DD-MON-RR'),null,'PDK0045',45315,160,118,62);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0046',to_date('18-MAR-24','DD-MON-RR'),null,'PDK0046',46.1,150,117,70);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0047',to_date('19-MAR-24','DD-MON-RR'),null,'PDK0047',45467,149,105,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0048',to_date('20-MAR-24','DD-MON-RR'),null,'PDK0048',42.3,170,173,62);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0049',to_date('21-MAR-24','DD-MON-RR'),null,'PDK0049',39.1,172,122,88);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0050',to_date('22-MAR-24','DD-MON-RR'),null,'PDK0050',38.5,180,170,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0051',to_date('23-MAR-24','DD-MON-RR'),null,'PDK0051',45435,160,84,88);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0052',to_date('24-MAR-24','DD-MON-RR'),null,'PDK0052',45412,165,96,90);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0053',to_date('25-MAR-24','DD-MON-RR'),null,'PDK0053',77,155,125,72);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0054',to_date('26-MAR-24','DD-MON-RR'),null,'PDK0054',39.1,156,100,76);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0055',to_date('27-MAR-24','DD-MON-RR'),null,'PDK0055',42.8,182,93,92);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0056',to_date('28-MAR-24','DD-MON-RR'),null,'PDK0056',39.4,153,129,58);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0057',to_date('29-MAR-24','DD-MON-RR'),null,'PDK0057',36.1,153,105,74);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0058',to_date('30-MAR-24','DD-MON-RR'),null,'PDK0058',55,170,128,62);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0059',to_date('31-MAR-24','DD-MON-RR'),null,'PDK0059',52.2,177,106,76);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0060',to_date('01-APR-24','DD-MON-RR'),null,'PDK0060',60.1,160,108,70);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0061',to_date('02-APR-24','DD-MON-RR'),null,'PDK0061',78.4,168,108,72);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0062',to_date('03-APR-24','DD-MON-RR'),null,'PDK0062',78.8,163,154,60);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0063',to_date('04-APR-24','DD-MON-RR'),null,'PDK0063',44.5,153,102,70);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0064',to_date('05-APR-24','DD-MON-RR'),null,'PDK0064',40.6,155,57,58);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0065',to_date('06-APR-24','DD-MON-RR'),null,'PDK0065',59.1,153,106,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0066',to_date('07-APR-24','DD-MON-RR'),null,'PDK0066',49.3,160,147,68);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0067',to_date('08-APR-24','DD-MON-RR'),null,'PDK0067',46.3,169,90,58);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0068',to_date('09-APR-24','DD-MON-RR'),null,'PDK0068',36,160,136,106);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0069',to_date('10-APR-24','DD-MON-RR'),null,'PDK0069',36.6,150,114,100);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0070',to_date('11-APR-24','DD-MON-RR'),null,'PDK0070',39.5,155,156,82);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0071',to_date('12-APR-24','DD-MON-RR'),null,'PDK0071',42.3,162,153,70);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0072',to_date('13-APR-24','DD-MON-RR'),null,'PDK0072',45534,150,128,86);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0073',to_date('14-APR-24','DD-MON-RR'),null,'PDK0073',78.5,163,152,60);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0074',to_date('15-APR-24','DD-MON-RR'),null,'PDK0074',60.2,164,99,52);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0075',to_date('16-APR-24','DD-MON-RR'),null,'PDK0075',35.5,158,109,58);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0076',to_date('17-APR-24','DD-MON-RR'),null,'PDK0076',35.6,157,88,56);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0077',to_date('18-APR-24','DD-MON-RR'),null,'PDK0077',60,155,103,76);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0078',to_date('19-APR-24','DD-MON-RR'),null,'PDK0078',38.1,163,151,64);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0079',to_date('20-APR-24','DD-MON-RR'),null,'PDK0079',77,152,102,80);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0080',to_date('21-APR-24','DD-MON-RR'),null,'PDK0080',39.1,158,114,82);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0081',to_date('22-APR-24','DD-MON-RR'),null,'PDK0081',42.8,163,100,74);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0082',to_date('23-APR-24','DD-MON-RR'),null,'PDK0082',39.4,159,131,64);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0083',to_date('24-APR-24','DD-MON-RR'),null,'PDK0083',36.1,162,104,50);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0084',to_date('25-APR-24','DD-MON-RR'),null,'PDK0084',55,161,148,74);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0085',to_date('26-APR-24','DD-MON-RR'),null,'PDK0085',52.2,156,120,82);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0086',to_date('27-APR-24','DD-MON-RR'),null,'PDK0086',60.1,158,110,80);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0087',to_date('28-APR-24','DD-MON-RR'),null,'PDK0087',78.4,160,111,114);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0088',to_date('29-APR-24','DD-MON-RR'),null,'PDK0088',78.8,150,102,70);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0089',to_date('30-APR-24','DD-MON-RR'),null,'PDK0089',44.5,149,134,68);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0090',to_date('01-MAY-24','DD-MON-RR'),null,'PDK0090',40.6,170,87,60);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0091',to_date('02-MAY-24','DD-MON-RR'),null,'PDK0091',59.1,172,79,90);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0092',to_date('03-MAY-24','DD-MON-RR'),null,'PDK0092',49.3,180,75,74);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0093',to_date('04-MAY-24','DD-MON-RR'),null,'PDK0093',46.3,160,179,90);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0094',to_date('05-MAY-24','DD-MON-RR'),null,'PDK0094',36,165,85,88);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0095',to_date('06-MAY-24','DD-MON-RR'),null,'PDK0095',36.6,155,129,70);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0096',to_date('07-MAY-24','DD-MON-RR'),null,'PDK0096',39.5,156,143,76);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0097',to_date('08-MAY-24','DD-MON-RR'),null,'PDK0097',42.3,182,130,78);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0098',to_date('09-MAY-24','DD-MON-RR'),null,'PDK0098',45534,153,87,88);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0099',to_date('10-JUN-24','DD-MON-RR'),null,'PDK0099',78.5,153,119,70);
Insert into PHIEUKHAM (MAPHIEUKHAM,NGAYLAP,LOIDAN,MAPHIEUDANGKY,CANNANG,CHIEUCAO,HUYETAPTAMTHU,HUYETAPTAMTRUONG) values ('PK0100',to_date('11-JUL-24','DD-MON-RR'),null,'PDK0100',60.2,170,120,76);
REM INSERTING into PHONG
SET DEFINE OFF;
INSERT INTO PHONG VALUES ('A31', N'Phòng khám chuyên khoa ký sinh trùng', N'Tầng 3 khu A');
INSERT INTO PHONG VALUES ('A42', N'Phòng khám hậu Covid-19', N'Tầng 4 khu A');
INSERT INTO PHONG VALUES ('B14', N'Phòng khám Bệnh truyền nhiễm đặc biệt', N'Tầng 3 khu B');
INSERT INTO PHONG VALUES ('F33', N'Phòng chống độc trẻ em và người lớn', N'Tầng 3 khu F');
INSERT INTO PHONG VALUES ('A14', N'Phòng hồi sức tích cực', N'Tầng 1 khu A');
INSERT INTO PHONG VALUES ('P24', N'Phòng tiêm chủng ngừa dịch vụ', N'Tầng 2 khu P');
INSERT INTO PHONG VALUES ('B32', N'Phòng khám và điều trị các bệnh nhiễm vi khuẩn', N'Tầng 3 khu B');
INSERT INTO PHONG VALUES ('A21', N'Phòng khám bệnh truyền nhiễm gan', N'Tầng 2 khu A');
INSERT INTO PHONG VALUES ('A34', N'Phòng xét nghiệm HIV', N'Tầng 3 khu A');
INSERT INTO PHONG VALUES ('B11', N'Phòng khám chuyên khoa nội - nhi - nhiễm', N'Tầng 1 khu B');
INSERT INTO PHONG VALUES ('B31', N'Phòng khám bệnh truyền nhiễm ngoài da', N'Tầng 3 khu B');
INSERT INTO PHONG VALUES ('C31', N'Phòng khám bệnh lậu - giang mai', N'Tầng 3 khu C');
INSERT INTO PHONG VALUES ('A11', N'Phòng khám bệnh lây nhiễm đường hô hấp', N'Tầng 1 khu A');
INSERT INTO PHONG VALUES ('B33', N'Phòng khám bệnh lây nhiễm do ký sinh trùng', N'Tầng 3 khu B');
INSERT INTO PHONG VALUES ('A22', N'Phòng số khám bệnh cấp độ 1', N'Tầng 2 khu A');
INSERT INTO PHONG VALUES ('P31', N'Phòng xét nghiệm tổng quát', N'Tầng 3 khu P');
INSERT INTO PHONG VALUES ('B34', N'Phòng kiểm tra định kỳ', N'Tầng 3 khu B');
INSERT INTO PHONG VALUES ('F31', N'Phòng khám bệnh sốt rét', N'Tầng 3 khu F');
INSERT INTO PHONG VALUES ('A35', N'Phòng khám bệnh viêm não', N'Tầng 3 khu A');
INSERT INTO PHONG VALUES ('A12', N'Phòng khám bệnh truyền nhiễm do vi rút', N'Tầng 1 khu A');
REM INSERTING into QUYEN
SET DEFINE OFF;
INSERT INTO QUYEN VALUES ('ADMIN', N'Quyền dành cho quản lý');
INSERT INTO QUYEN VALUES ('PATIENT', N'Quyền dành cho bệnh nhân');
INSERT INTO QUYEN VALUES ('CASHIER', N'Quyền dành cho nhân viên thu ngân');
INSERT INTO QUYEN VALUES ('RECEIVING', N'Quyền dành cho nhân viên Tiếp nhận');
INSERT INTO QUYEN VALUES ('DOCTOR', N'Quyền dành cho bác sĩ');
REM INSERTING into TAIKHOAN
SET DEFINE OFF;
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('quanly','admin');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nhuquynh','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thanhtruc','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ductruong','12345');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('baongan','12345');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttd1','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvh2','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nvn3','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtt5','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('httt6','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tko7','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdm8','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vttd9','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tnh11','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ntlh12','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttd13','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ndt14','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tttt15','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hvmm16','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ndh17','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ntc18','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dqh20','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lxn21','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nptl22','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nts23','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lth24','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tnt25','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cdn26','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nqc27','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tqa28','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tav29','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('htkq30','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nqn31','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtt32','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('htl33','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mmt34','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lqh35','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nvn36','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtd37','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttnl38','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdh39','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ctn40','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdh41','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltla42','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nvl43','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lvk44','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lnm45','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qtbt46','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptx47','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptpt48','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nqk49','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dcl50','123');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tttp1','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nqt2','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhnt3','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvbn4','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mqhm5','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tda6','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('gpq7','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pcd8','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvx9','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pttl10','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tmh11','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('phna12','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lhth13','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thv14','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vnq15','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('npb16','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('shn17','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vtk18','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('htl19','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cdp20','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdl21','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvk22','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('chmc23','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tqt24','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nht25','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thv26','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nnp27','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tpt28','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thtl29','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pnnl30','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vhv31','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('htv32','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtqn33','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltv34','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('gvv35','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dthm36','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vpth37','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('chnt38','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vtt39','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lht40','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dvnd41','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ndh42','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mvt43','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dab44','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tht45','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mvp46','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kta47','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('phna48','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ott49','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ndl50','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('khp51','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pvth52','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tch53','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dny54','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('damt55','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thh56','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lvl57','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hct58','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tth59','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mpl60','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvk61','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('chn62','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qvd63','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pdt64','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kqa65','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vhl66','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ktp67','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdht68','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ntt69','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('stk70','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bpq71','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thl72','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vvt73','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thp74','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('btp75','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lhtl76','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vny77','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kntt78','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vhnm79','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('khk80','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdm81','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dcnt82','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kqny83','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nph84','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ctl85','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ovl86','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nhnd87','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vtmp88','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ktd89','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mvny90','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ppnm91','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cagh92','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kht93','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtt94','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bmd95','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kcq96','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tth97','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('uhv98','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttb99','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdtl100','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pht101','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltt102','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bhnd103','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtht104','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ntt105','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvh106','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pttl107','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dmb108','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thq109','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kqa110','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bvv111','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('chl112','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vhd113','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bvp114','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttq115','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vtt116','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ctnm117','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dty118','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('btpa119','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dvtl120','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tqk121','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ktv122','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('chk123','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kvnm124','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('knt125','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tnt126','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hnm127','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bdl128','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttk129','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vttl130','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('knh131','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nnt132','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ndnd133','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhp134','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ddt135','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tmn136','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('htn137','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bvt138','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hb139','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dvt140','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tqt141','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dth142','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('gpgh143','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pdn144','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttt145','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mtt146','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mtt147','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vcq148','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtp149','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ddt150','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tth151','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thd152','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kvn153','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tnh154','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptnl155','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qqh156','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvc157','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vcp158','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vnt159','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thl160','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ctnd161','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bhn162','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('chl163','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hnt164','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tphl165','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('odv166','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pvqn167','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('khtt168','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tnp169','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtd170','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bhp171','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtq172','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tth173','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tttl174','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hhmt175','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dmt176','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thv177','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vnht178','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('latl179','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hpd180','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvq181','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhn182','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('htt183','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('chn184','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mph185','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vmt186','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lnd187','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hdnm188','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qvl189','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lcnd190','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tny191','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tpt192','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qttl193','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cnnl194','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ddt195','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tht196','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tmh197','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pdl198','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kdth199','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('npv200','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dnth201','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cqd202','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hnq203','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vhhm204','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhn205','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cqbn206','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hct207','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptt208','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cdq209','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('laht210','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtth211','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mvt212','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttv213','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tva214','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thm215','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ktt216','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vpt217','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttnl218','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dmk219','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhhm220','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qtny221','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bqmc222','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bmp223','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tqpa224','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cnbn225','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bvx226','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ddc227','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pvt228','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mdh229','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('htd230','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hnb231','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtb232','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mvh233','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hps234','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nvx235','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdt236','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bmk237','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtt238','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nht239','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptv240','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('htl241','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kvb242','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ntv243','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('gtt244','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mhm245','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thh246','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvp247','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lhn248','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('phn249','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dnb250','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ddtt251','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttm252','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cvnt253','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tqnm254','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lhk255','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tchl256','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kdc257','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vtm258','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tnd259','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttny260','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('htt261','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhn262','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vtgh263','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tnq264','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dvna265','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dcmt266','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('acy267','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cdt268','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pdb269','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptnd270','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bvq271','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtn272','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bva273','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hvq274','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cvht275','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thp276','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thv277','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ahn278','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lnp279','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pva280','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttl281','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pdtt282','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ldpa283','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vvh284','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vthm285','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dda286','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptk287','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('avt288','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lnqn289','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvh290','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hdq291','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pdb292','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dmbn293','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cvd294','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvh295','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thh296','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhh297','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dnh298','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('acp299','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvt300','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdh301','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdtt302','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lhk303','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptnt304','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tqa305','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ntc306','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cat307','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttht308','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdm309','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pcn310','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tttt311','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvh312','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhht313','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mnhl314','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nhn315','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('btp316','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lnh317','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cnt318','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tqa319','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nht320','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dvd321','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thhm322','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('snl323','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vhna324','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pth325','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hvp326','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vvmt327','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ntd328','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thh329','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('gct330','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hha331','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('btt332','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thl333','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qma334','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lhk335','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cnqa336','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lth337','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thht338','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptl339','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dmq340','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cmd341','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hvna342','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdt343','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cnl344','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bhc345','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ndh346','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qhq347','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bhk348','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hcm349','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhh350','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('capa351','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtk352','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('utp353','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ghh354','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ktp355','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('gtqa356','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptk357','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tha358','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tna359','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tct360','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nvl361','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vhq362','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ktt363','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptn364','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tta365','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ktd366','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('phn367','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lvt368','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ddl369','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('svh370','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dpth371','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('uvh372','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltn373','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tth374','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dvn375','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('khl376','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qdd377','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttmc378','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cctl379','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvp380','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttd381','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kcn382','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nhh383','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltq384','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('phk385','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dvt386','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kdh387','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lth388','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lvd389','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nvt390','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lcd391','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mth392','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hhhm393','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('shv394','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hhk395','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bnp396','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhmt397','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('sdp398','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdq399','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('phd400','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hdy401','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thh402','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vtq403','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nhht404','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vvq405','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhn406','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttgh407','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dnn408','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cmth409','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hhh410','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ktl411','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vpn412','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dhd413','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('chk414','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vnn415','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thb416','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pnk417','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tcq418','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tpgh419','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vtbn420','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dha421','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('opna422','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dts423','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ahv424','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dth425','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cnh426','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pdl427','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ktl428','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tpl429','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lhq430','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('khn431','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltnm432','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('gch433','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hhh434','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltnl435','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vtqn436','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hna437','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ptt438','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dvq439','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('bdk440','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mhq441','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dta442','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttt443','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtpa444','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttmp445','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ddv446','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pth447','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hhn448','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tmt449','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('phth450','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ctk451','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hvp452','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltt453','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('mts454','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dvny455','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thh456','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vhn457','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('val458','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('udh459','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pnd460','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vmhl461','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('btt462','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtt463','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dtl464','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('stq465','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qmd466','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dth467','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lmk468','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kdt469','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('vnd470','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ntn471','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cht472','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('hdnl473','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kva474','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dnm475','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('kdnm476','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ghv477','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('cvb478','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qch479','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('qvb480','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('dha481','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttl482','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tth483','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lhnd484','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lhht485','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pvs486','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('thq487','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tav488','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ttd489','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ndn490','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ndk491','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tdp492','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('sty493','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltn494','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('pcn495','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('lct496','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvq497','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ctnt498','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('nqt499','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('ltl500','666');
Insert into TAIKHOAN (TENTAIKHOAN,MATKHAU) values ('tvk501','666');
REM INSERTING into THUOC
SET DEFINE OFF;
INSERT INTO THUOC VALUES ('T0001', N'Acetylcystein', N'Vỉ 10 viên', N'Viên', 50000, 26);
INSERT INTO THUOC VALUES ('T0002', N'Avircrem', N'Hộp 1 tuýp 5g', N'Tuýp', 7000, 131);
INSERT INTO THUOC VALUES ('T0003', N'Salonpas pain relief patch', N'hộp 1 bao x 5 miếng', N'Hộp', 49000, 147);
INSERT INTO THUOC VALUES ('T0004', N'Dung dịch Natri clorid 0,9%', N'Chai 500ml', N'Chai', 25000, 46);
INSERT INTO THUOC VALUES ('T0005', N'Farzincol', N'Lọ 100 viên', N'Lọ', 11000, 255);
INSERT INTO THUOC VALUES ('T0006', N'Phosphalugel', N'Hộp 26 gói', N'Gói', 56000, 147);
INSERT INTO THUOC VALUES ('T0007', N'Eszopiclone', N'Hộp 3 vỉ x 10 viên', N'Vỉ', 120000, 89);
INSERT INTO THUOC VALUES ('T0008', N'5-Fluorouracil Ebewe', N'Hộp 1 lọ 5ml', N'Lọ', 21800, 96);
INSERT INTO THUOC VALUES ('T0009', N'Aecysmux', N'Chai 100 viên', N'Viên', 30000, 205);
INSERT INTO THUOC VALUES ('T0010', N'Isotretinoin', N'Hộp 3 vỉ x 10 viên', N'Viên', 12000, 194);
INSERT INTO THUOC VALUES ('T0011', N'Chymotrypsin', N'Hộp 2 vỉ x 10 viên', N'Viên', 158000, 33);
INSERT INTO THUOC VALUES ('T0012', N'Aradine', N'Hộp 1 lọ', N'Lọ', 12000, 84);
INSERT INTO THUOC VALUES ('T0013', N'Bactronil', N'Tuýp 5g', N'Tuýp', 1526000, 161);
INSERT INTO THUOC VALUES ('T0014', N'Beratan', N'Chai 100 viên', N'Viên', 12000, 38);
INSERT INTO THUOC VALUES ('T0015', N'Cadipiride', N'Hộp 10 vỉ x 10 viên', N'Viên', 150000, 264);
INSERT INTO THUOC VALUES ('T0016', N'Paracetamol', N'Hộp 20 gói x 15g', N'Gói', 599000, 261);
INSERT INTO THUOC VALUES ('T0017', N'AB-Intimus', N'Hộp 1 vỉ x 7 viên', N'Hộp', 811000, 137);
INSERT INTO THUOC VALUES ('T0018', N'Pravastatin Dwp', N'Vỉ 10 viên', N'Viên', 389000, 236);
INSERT INTO THUOC VALUES ('T0019', N'Perindopril Plus Dwp', N'Hộp 1 tuýp 5g', N'Tuýp', 369000, 205);
INSERT INTO THUOC VALUES ('T0020', N'Nebivolol Plus', N'hộp 1 bao x 5 miếng', N'Hộp', 189000, 200);
INSERT INTO THUOC VALUES ('T0021', N'Irbesartan Dwp', N'Chai 500ml', N'Chai', 789000, 243);
INSERT INTO THUOC VALUES ('T0022', N'Calcivin', N'Lọ 100 viên', N'Lọ', 559000, 441);
INSERT INTO THUOC VALUES ('T0023', N'Saxagliptin', N'Hộp 26 gói', N'Gói', 484000, 383);
INSERT INTO THUOC VALUES ('T0024', N'Mebizemib', N'Hộp 3 vỉ x 10 viên', N'Vỉ', 639000, 334);
INSERT INTO THUOC VALUES ('T0025', N'Toduet', N'Hộp 1 lọ 5ml', N'Lọ', 439000, 272);
INSERT INTO THUOC VALUES ('T0026', N'Methylprednisolon', N'Chai 100 viên', N'Viên', 490000, 21);
INSERT INTO THUOC VALUES ('T0027', N'Lazimidin', N'Hộp 3 vỉ x 10 viên', N'Viên', 239000, 19);
INSERT INTO THUOC VALUES ('T0028', N'Infloxin', N'Hộp 2 vỉ x 10 viên', N'Viên', 369000, 249);
INSERT INTO THUOC VALUES ('T0029', N'Glutathion', N'Hộp 1 lọ', N'Lọ', 169000, 3);
INSERT INTO THUOC VALUES ('T0030', N'Gliglutin', N'Tuýp 5g', N'Tuýp', 569000, 104);
INSERT INTO THUOC VALUES ('T0031', N'Colistimethate sodium', N'Chai 100 viên', N'Viên', 399000, 147);
INSERT INTO THUOC VALUES ('T0032', N'Bimesta', N'Hộp 10 vỉ x 10 viên', N'Viên', 169000, 46);
INSERT INTO THUOC VALUES ('T0033', N'Aciste', N'Hộp 20 gói x 15g', N'Gói', 16900, 255);
INSERT INTO THUOC VALUES ('T0034', N'Bfavits', N'Hộp 1 vỉ x 7 viên', N'Hộp', 169000, 147);
INSERT INTO THUOC VALUES ('T0035', N'Aciste 2 MIU', N'Hộp 1 cái', N'Que', 169000, 89);
INSERT INTO THUOC VALUES ('T0036', N'Methobam', N'Hộp 20 miếng', N'Hộp', 769000, 96);
INSERT INTO THUOC VALUES ('T0037', N'Sun Pharmaceutical Industries  ', N'Túi 25g', N'Túi', 169000, 205);
INSERT INTO THUOC VALUES ('T0038', N'Dr. Reddys Laboratories  ', N'Gói 5 cái', N'Gói', 869000, 194);
INSERT INTO THUOC VALUES ('T0039', N'Divis Laboratories  ', N'Hộp 20 ống x 10ml', N'Hộp', 1569000, 33);
INSERT INTO THUOC VALUES ('T0040', N'Cipla  ', N'Hộp 2 vỉ x 15 viên', N'Hộp', 899000, 84);
INSERT INTO THUOC VALUES ('T0041', N'Biocon  ', N'Hộp 60 viên', N'Hộp', 1629000, 161);
INSERT INTO THUOC VALUES ('T0042', N'Aurobindo Pharma  ', N'Hộp 60 viên', N'Viên', 169000, 38);
INSERT INTO THUOC VALUES ('T0043', N'Torrent Pharmaceuticals  ', N'Hộp 60 viên', N'Hộp', 499000, 264);
INSERT INTO THUOC VALUES ('T0044', N'Lupin  ', N'Hộp 1 máy', N'Máy', 279000, 261);
INSERT INTO THUOC VALUES ('T0045', N'Cadila Healthcare  ', N'Hộp 1 cái', N'Cái', 169000, 137);
INSERT INTO THUOC VALUES ('T0046', N'Abbott India  ', N'Hộp 100 chiếc', N'Cái', 99000, 236);
INSERT INTO THUOC VALUES ('T0047', N'Alkem Laboratories  ', N'Hộp 100 cái', N'Cái', 399000, 205);
INSERT INTO THUOC VALUES ('T0048', N'Glaxosmithkline Pharmaceuticals  ', N'Vỉ 10 viên', N'Viên', 830000, 200);
INSERT INTO THUOC VALUES ('T0049', N'Ipca Laboratories  ', N'Hộp 1 tuýp 5g', N'Tuýp', 222000, 243);
INSERT INTO THUOC VALUES ('T0050', N'Alembic Pharmaceuticals  ', N'hộp 1 bao x 5 miếng', N'Hộp', 569000, 441);
INSERT INTO THUOC VALUES ('T0051', N'Glenmark Pharmaceuticals  ', N'Chai 500ml', N'Chai', 769000, 383);
INSERT INTO THUOC VALUES ('T0052', N'JB Chemicals và Pharmaceuticals  ', N'Lọ 100 viên', N'Lọ', 869000, 334);
INSERT INTO THUOC VALUES ('T0053', N'Sun Pharmaceutical Industries  ', N'Hộp 26 gói', N'Gói', 129000, 272);
INSERT INTO THUOC VALUES ('T0054', N'Dr. Reddys Laboratories  ', N'Hộp 3 vỉ x 10 viên', N'Vỉ', 269000, 21);
INSERT INTO THUOC VALUES ('T0055', N'Divis Laboratories  ', N'Hộp 1 lọ 5ml', N'Lọ', 45000, 19);
INSERT INTO THUOC VALUES ('T0056', N'Cipla  ', N'Chai 100 viên', N'Viên', 669000, 249);
INSERT INTO THUOC VALUES ('T0057', N'Biocon  ', N'Hộp 3 vỉ x 10 viên', N'Viên', 559000, 3);
INSERT INTO THUOC VALUES ('T0058', N'Aurobindo Pharma  ', N'Hộp 2 vỉ x 10 viên', N'Viên', 369000, 104);
INSERT INTO THUOC VALUES ('T0059', N'Torrent Pharmaceuticals  ', N'Hộp 1 lọ', N'Lọ', 69000, 147);
INSERT INTO THUOC VALUES ('T0060', N'Lupin  ', N'Tuýp 5g', N'Tuýp', 1690000, 46);
INSERT INTO THUOC VALUES ('T0061', N'Cadila Healthcare  ', N'Chai 100 viên', N'Viên', 369000, 255);
INSERT INTO THUOC VALUES ('T0062', N'Abbott India  ', N'Hộp 10 vỉ x 10 viên', N'Viên', 269000, 147);
INSERT INTO THUOC VALUES ('T0063', N'Alkem Laboratories  ', N'Hộp 20 gói x 15g', N'Gói', 69000, 89);
INSERT INTO THUOC VALUES ('T0064', N'Glaxosmithkline Pharmaceuticals  ', N'Hộp 1 vỉ x 7 viên', N'Hộp', 169000, 96);
INSERT INTO THUOC VALUES ('T0065', N'Ipca Laboratories  ', N'Hộp 1 cái', N'Que', 169000, 205);
INSERT INTO THUOC VALUES ('T0066', N'Alembic Pharmaceuticals  ', N'Hộp 20 miếng', N'Hộp', 550000, 194);
INSERT INTO THUOC VALUES ('T0067', N'Glenmark Pharmaceuticals  ', N'Túi 25g', N'Túi', 750000, 33);
INSERT INTO THUOC VALUES ('T0068', N'JB Chemicals và Pharmaceuticals  ', N'Gói 5 cái', N'Gói', 300000, 84);
INSERT INTO THUOC VALUES ('T0069', N'Sun Pharmaceutical Industries  ', N'Hộp 20 ống x 10ml', N'Hộp', 299000, 161);
INSERT INTO THUOC VALUES ('T0070', N'Dr. Reddys Laboratories  ', N'Hộp 2 vỉ x 15 viên', N'Hộp', 140000, 38);
INSERT INTO THUOC VALUES ('T0071', N'Divis Laboratories  ', N'Hộp 60 viên', N'Hộp', 700000, 264);
INSERT INTO THUOC VALUES ('T0072', N'Cipla  ', N'Hộp 60 viên', N'Viên', 500000, 261);
INSERT INTO THUOC VALUES ('T0073', N'Biocon  ', N'Hộp 60 viên', N'Hộp', 404000, 137);
INSERT INTO THUOC VALUES ('T0074', N'Aurobindo Pharma  ', N'Hộp 1 máy', N'Máy', 600000, 236);
INSERT INTO THUOC VALUES ('T0075', N'Torrent Pharmaceuticals  ', N'Hộp 1 cái', N'Cái', 400000, 205);
INSERT INTO THUOC VALUES ('T0076', N'Lupin  ', N'Hộp 100 chiếc', N'Cái', 450000, 200);
INSERT INTO THUOC VALUES ('T0077', N'Cadila Healthcare  ', N'Hộp 100 cái', N'Cái', 200000, 243);
INSERT INTO THUOC VALUES ('T0078', N'Abbott India  ', N'Vỉ 10 viên', N'Viên', 360000, 441);
INSERT INTO THUOC VALUES ('T0079', N'Alkem Laboratories  ', N'Hộp 1 tuýp 5g', N'Tuýp', 160000, 383);
INSERT INTO THUOC VALUES ('T0080', N'Glaxosmithkline Pharmaceuticals  ', N'hộp 1 bao x 5 miếng', N'Hộp', 560000, 334);
INSERT INTO THUOC VALUES ('T0081', N'Ipca Laboratories  ', N'Chai 500ml', N'Chai', 389000, 272);
INSERT INTO THUOC VALUES ('T0082', N'Alembic Pharmaceuticals  ', N'Lọ 100 viên', N'Lọ', 160000, 21);
INSERT INTO THUOC VALUES ('T0083', N'Glenmark Pharmaceuticals  ', N'Hộp 26 gói', N'Gói', 15000, 19);
INSERT INTO THUOC VALUES ('T0084', N'JB Chemicals và Pharmaceuticals  ', N'Hộp 3 vỉ x 10 viên', N'Vỉ', 160000, 249);
INSERT INTO THUOC VALUES ('T0085', N'Sun Pharmaceutical Industries  ', N'Hộp 1 lọ 5ml', N'Lọ', 160000, 3);
INSERT INTO THUOC VALUES ('T0086', N'Dr. Reddys Laboratories  ', N'Chai 100 viên', N'Viên', 760000, 104);
INSERT INTO THUOC VALUES ('T0087', N'Divis Laboratories  ', N'Hộp 3 vỉ x 10 viên', N'Viên', 160000, 147);
INSERT INTO THUOC VALUES ('T0088', N'Cipla  ', N'Hộp 2 vỉ x 10 viên', N'Viên', 760000, 46);
INSERT INTO THUOC VALUES ('T0089', N'Biocon  ', N'Hộp 1 lọ', N'Lọ', 1460000, 255);
INSERT INTO THUOC VALUES ('T0090', N'Aurobindo Pharma  ', N'Tuýp 5g', N'Tuýp', 860000, 147);
INSERT INTO THUOC VALUES ('T0091', N'Torrent Pharmaceuticals  ', N'Chai 100 viên', N'Viên', 1600000, 89);
INSERT INTO THUOC VALUES ('T0092', N'Lupin  ', N'Hộp 10 vỉ x 10 viên', N'Viên', 160000, 96);
INSERT INTO THUOC VALUES ('T0093', N'Cadila Healthcare  ', N'Hộp 20 gói x 15g', N'Gói', 400000, 205);
INSERT INTO THUOC VALUES ('T0094', N'Abbott India  ', N'Hộp 1 vỉ x 7 viên', N'Hộp', 250000, 194);
INSERT INTO THUOC VALUES ('T0095', N'Alkem Laboratories  ', N'Hộp 1 cái', N'Que', 160000, 33);
INSERT INTO THUOC VALUES ('T0096', N'Glaxosmithkline Pharmaceuticals  ', N'Hộp 20 miếng', N'Hộp', 90000, 84);
INSERT INTO THUOC VALUES ('T0097', N'Ipca Laboratories  ', N'Túi 25g', N'Túi', 390000, 161);
INSERT INTO THUOC VALUES ('T0098', N'Alembic Pharmaceuticals  ', N'Gói 5 cái', N'Gói', 760000, 38);
INSERT INTO THUOC VALUES ('T0099', N'Glenmark Pharmaceuticals  ', N'Hộp 20 ống x 10ml', N'Hộp', 160000, 264);
INSERT INTO THUOC VALUES ('T0100', N'JB Chemicals và Pharmaceuticals  ', N'Hộp 2 vỉ x 15 viên', N'Hộp', 560000, 261);
INSERT INTO THUOC VALUES ('T0101', N'Sun Pharmaceutical Industries  ', N'Hộp 60 viên', N'Hộp', 760000, 137);
INSERT INTO THUOC VALUES ('T0102', N'Dr. Reddys Laboratories  ', N'Hộp 60 viên', N'Viên', 860000, 236);
INSERT INTO THUOC VALUES ('T0103', N'Divis Laboratories  ', N'Hộp 60 viên', N'Hộp', 120000, 205);
INSERT INTO THUOC VALUES ('T0104', N'Cipla  ', N'Hộp 1 máy', N'Máy', 260000, 200);
INSERT INTO THUOC VALUES ('T0105', N'Biocon  ', N'Hộp 1 cái', N'Cái', 30000, 243);
INSERT INTO THUOC VALUES ('T0106', N'Aurobindo Pharma  ', N'Hộp 100 chiếc', N'Cái', 650000, 441);
INSERT INTO THUOC VALUES ('T0107', N'Torrent Pharmaceuticals  ', N'Hộp 100 cái', N'Cái', 540000, 383);
INSERT INTO THUOC VALUES ('T0108', N'Sun Pharmaceutical Industries  ', N'Vỉ 10 viên', N'Viên', 360000, 334);
INSERT INTO THUOC VALUES ('T0109', N'Dr. Reddys Laboratories  ', N'Hộp 1 tuýp 5g', N'Tuýp', 60000, 272);
INSERT INTO THUOC VALUES ('T0110', N'Divis Laboratories  ', N'hộp 1 bao x 5 miếng', N'Hộp', 1600000, 21);
INSERT INTO THUOC VALUES ('T0111', N'Cipla  ', N'Chai 500ml', N'Chai', 360000, 19);
INSERT INTO THUOC VALUES ('T0112', N'Biocon  ', N'Lọ 100 viên', N'Lọ', 160000, 249);
INSERT INTO THUOC VALUES ('T0113', N'Aurobindo Pharma  ', N'Hộp 26 gói', N'Gói', 60000, 3);
INSERT INTO THUOC VALUES ('T0114', N'Torrent Pharmaceuticals  ', N'Hộp 3 vỉ x 10 viên', N'Vỉ', 160000, 104);
INSERT INTO THUOC VALUES ('T0115', N'Lupin  ', N'Hộp 1 lọ 5ml', N'Lọ', 160000, 147);
INSERT INTO THUOC VALUES ('T0116', N'Cadila Healthcare  ', N'Chai 100 viên', N'Viên', 499000, 46);
INSERT INTO THUOC VALUES ('T0117', N'Abbott India  ', N'Hộp 3 vỉ x 10 viên', N'Viên', 279000, 255);
INSERT INTO THUOC VALUES ('T0118', N'Alkem Laboratories  ', N'Hộp 2 vỉ x 10 viên', N'Viên', 169000, 147);
INSERT INTO THUOC VALUES ('T0119', N'Glaxosmithkline Pharmaceuticals  ', N'Hộp 1 lọ', N'Lọ', 99000, 89);
INSERT INTO THUOC VALUES ('T0120', N'Ipca Laboratories  ', N'Tuýp 5g', N'Tuýp', 399000, 96);
INSERT INTO THUOC VALUES ('T0121', N'Alembic Pharmaceuticals  ', N'Chai 100 viên', N'Viên', 830000, 205);
INSERT INTO THUOC VALUES ('T0122', N'Glenmark Pharmaceuticals  ', N'Hộp 10 vỉ x 10 viên', N'Viên', 222000, 194);
INSERT INTO THUOC VALUES ('T0123', N'JB Chemicals và Pharmaceuticals  ', N'Hộp 20 gói x 15g', N'Gói', 569000, 33);
INSERT INTO THUOC VALUES ('T0124', N'Sun Pharmaceutical Industries  ', N'Hộp 1 vỉ x 7 viên', N'Hộp', 769000, 84);
INSERT INTO THUOC VALUES ('T0125', N'Dr. Reddys Laboratories  ', N'Hộp 1 cái', N'Que', 50000, 161);
INSERT INTO THUOC VALUES ('T0126', N'Divis Laboratories  ', N'Hộp 20 miếng', N'Hộp', 7000, 38);
INSERT INTO THUOC VALUES ('T0127', N'Cipla  ', N'Túi 25g', N'Túi', 49000, 264);
INSERT INTO THUOC VALUES ('T0128', N'Biocon  ', N'Gói 5 cái', N'Gói', 25000, 261);
INSERT INTO THUOC VALUES ('T0129', N'Aurobindo Pharma  ', N'Hộp 20 ống x 10ml', N'Hộp', 11000, 137);
INSERT INTO THUOC VALUES ('T0130', N'Torrent Pharmaceuticals  ', N'Hộp 2 vỉ x 15 viên', N'Hộp', 56000, 236);
INSERT INTO THUOC VALUES ('T0131', N'Lupin  ', N'Hộp 60 viên', N'Hộp', 120000, 205);
INSERT INTO THUOC VALUES ('T0132', N'Cadila Healthcare  ', N'Hộp 60 viên', N'Viên', 21800, 200);
INSERT INTO THUOC VALUES ('T0133', N'Abbott India  ', N'Hộp 60 viên', N'Hộp', 30000, 243);
INSERT INTO THUOC VALUES ('T0134', N'Alkem Laboratories  ', N'Hộp 1 máy', N'Máy', 12000, 441);
INSERT INTO THUOC VALUES ('T0135', N'Glaxosmithkline Pharmaceuticals  ', N'Hộp 1 cái', N'Cái', 158000, 383);
INSERT INTO THUOC VALUES ('T0136', N'Ipca Laboratories  ', N'Hộp 100 chiếc', N'Cái', 12000, 334);
INSERT INTO THUOC VALUES ('T0137', N'Alembic Pharmaceuticals  ', N'Hộp 100 cái', N'Cái', 1526000, 272);
INSERT INTO THUOC VALUES ('T0138', N'Glenmark Pharmaceuticals  ', N'Vỉ 10 viên', N'Viên', 12000, 21);
INSERT INTO THUOC VALUES ('T0139', N'JB Chemicals và Pharmaceuticals  ', N'Hộp 1 tuýp 5g', N'Tuýp', 150000, 19);
INSERT INTO THUOC VALUES ('T0140', N'Sun Pharmaceutical Industries  ', N'hộp 1 bao x 5 miếng', N'Hộp', 599000, 249);
INSERT INTO THUOC VALUES ('T0141', N'Dr. Reddys Laboratories  ', N'Chai 500ml', N'Chai', 811000, 3);
INSERT INTO THUOC VALUES ('T0142', N'Divis Laboratories  ', N'Lọ 100 viên', N'Lọ', 389000, 104);
INSERT INTO THUOC VALUES ('T0143', N'Cipla  ', N'Hộp 26 gói', N'Gói', 369000, 147);
INSERT INTO THUOC VALUES ('T0144', N'Biocon  ', N'Hộp 3 vỉ x 10 viên', N'Vỉ', 189000, 46);
INSERT INTO THUOC VALUES ('T0145', N'Aurobindo Pharma  ', N'Hộp 1 lọ 5ml', N'Lọ', 789000, 255);
INSERT INTO THUOC VALUES ('T0146', N'Torrent Pharmaceuticals  ', N'Chai 100 viên', N'Viên', 559000, 147);
INSERT INTO THUOC VALUES ('T0147', N'Lupin  ', N'Hộp 3 vỉ x 10 viên', N'Viên', 484000, 89);
INSERT INTO THUOC VALUES ('T0148', N'Cadila Healthcare  ', N'Hộp 2 vỉ x 10 viên', N'Viên', 639000, 96);
INSERT INTO THUOC VALUES ('T0149', N'Abbott India  ', N'Hộp 1 lọ', N'Lọ', 439000, 205);
INSERT INTO THUOC VALUES ('T0150', N'Alkem Laboratories  ', N'Tuýp 5g', N'Tuýp', 490000, 194);
INSERT INTO THUOC VALUES ('T0151', N'Glaxosmithkline Pharmaceuticals  ', N'Chai 100 viên', N'Viên', 239000, 33);
INSERT INTO THUOC VALUES ('T0152', N'Ipca Laboratories  ', N'Hộp 10 vỉ x 10 viên', N'Viên', 369000, 84);
INSERT INTO THUOC VALUES ('T0153', N'Alembic Pharmaceuticals  ', N'Hộp 20 gói x 15g', N'Gói', 169000, 161);
INSERT INTO THUOC VALUES ('T0154', N'Glenmark Pharmaceuticals  ', N'Hộp 1 vỉ x 7 viên', N'Hộp', 569000, 38);
INSERT INTO THUOC VALUES ('T0155', N'JB Chemicals và Pharmaceuticals  ', N'Hộp 1 cái', N'Que', 399000, 264);
INSERT INTO THUOC VALUES ('T0156', N'Sun Pharmaceutical Industries  ', N'Hộp 20 miếng', N'Hộp', 169000, 261);
INSERT INTO THUOC VALUES ('T0157', N'Dr. Reddys Laboratories  ', N'Túi 25g', N'Túi', 16900, 137);
INSERT INTO THUOC VALUES ('T0158', N'Divis Laboratories  ', N'Gói 5 cái', N'Gói', 169000, 236);
INSERT INTO THUOC VALUES ('T0159', N'Cipla  ', N'Hộp 20 ống x 10ml', N'Hộp', 169000, 205);
INSERT INTO THUOC VALUES ('T0160', N'Biocon  ', N'Hộp 2 vỉ x 15 viên', N'Hộp', 769000, 200);
INSERT INTO THUOC VALUES ('T0161', N'Aurobindo Pharma  ', N'Hộp 60 viên', N'Hộp', 169000, 243);
INSERT INTO THUOC VALUES ('T0162', N'Torrent Pharmaceuticals  ', N'Hộp 60 viên', N'Viên', 869000, 441);
INSERT INTO THUOC VALUES ('T0163', N'Lupin  ', N'Hộp 60 viên', N'Hộp', 1569000, 383);
INSERT INTO THUOC VALUES ('T0164', N'Cadila Healthcare  ', N'Hộp 1 máy', N'Máy', 899000, 334);
INSERT INTO THUOC VALUES ('T0165', N'Abbott India  ', N'Hộp 1 cái', N'Cái', 1629000, 272);
INSERT INTO THUOC VALUES ('T0166', N'Alkem Laboratories  ', N'Hộp 100 chiếc', N'Cái', 169000, 21);
INSERT INTO THUOC VALUES ('T0167', N'Glaxosmithkline Pharmaceuticals  ', N'Hộp 100 cái', N'Cái', 499000, 19);
INSERT INTO THUOC VALUES ('T0168', N'Ipca Laboratories  ', N'Vỉ 10 viên', N'Viên', 279000, 249);
INSERT INTO THUOC VALUES ('T0169', N'Alembic Pharmaceuticals  ', N'Hộp 1 tuýp 5g', N'Tuýp', 169000, 3);
INSERT INTO THUOC VALUES ('T0170', N'Glenmark Pharmaceuticals  ', N'hộp 1 bao x 5 miếng', N'Hộp', 99000, 104);
INSERT INTO THUOC VALUES ('T0171', N'JB Chemicals và Pharmaceuticals  ', N'Chai 500ml', N'Chai', 399000, 147);
INSERT INTO THUOC VALUES ('T0172', N'Sun Pharmaceutical Industries  ', N'Lọ 100 viên', N'Lọ', 830000, 46);
INSERT INTO THUOC VALUES ('T0173', N'Dr. Reddys Laboratories  ', N'Hộp 26 gói', N'Gói', 222000, 255);
INSERT INTO THUOC VALUES ('T0174', N'Divis Laboratories  ', N'Hộp 3 vỉ x 10 viên', N'Vỉ', 569000, 147);
INSERT INTO THUOC VALUES ('T0175', N'Cipla  ', N'Hộp 1 lọ 5ml', N'Lọ', 769000, 89);
INSERT INTO THUOC VALUES ('T0176', N'Biocon  ', N'Chai 100 viên', N'Viên', 869000, 96);
INSERT INTO THUOC VALUES ('T0177', N'Aurobindo Pharma  ', N'Hộp 3 vỉ x 10 viên', N'Viên', 129000, 205);
INSERT INTO THUOC VALUES ('T0178', N'Torrent Pharmaceuticals  ', N'Hộp 2 vỉ x 10 viên', N'Viên', 269000, 194);
INSERT INTO THUOC VALUES ('T0179', N'Sun Pharmaceutical Industries  ', N'Hộp 1 lọ', N'Lọ', 45000, 33);
INSERT INTO THUOC VALUES ('T0180', N'Dr. Reddys Laboratories  ', N'Tuýp 5g', N'Tuýp', 669000, 84);
INSERT INTO THUOC VALUES ('T0181', N'Divis Laboratories  ', N'Chai 100 viên', N'Viên', 559000, 161);
INSERT INTO THUOC VALUES ('T0182', N'Cipla  ', N'Hộp 10 vỉ x 10 viên', N'Viên', 369000, 38);
INSERT INTO THUOC VALUES ('T0183', N'Biocon  ', N'Hộp 20 gói x 15g', N'Gói', 69000, 264);
INSERT INTO THUOC VALUES ('T0184', N'Aurobindo Pharma  ', N'Hộp 1 vỉ x 7 viên', N'Hộp', 1690000, 261);
INSERT INTO THUOC VALUES ('T0185', N'Torrent Pharmaceuticals  ', N'Hộp 1 cái', N'Que', 369000, 137);
INSERT INTO THUOC VALUES ('T0186', N'Lupin  ', N'Hộp 20 miếng', N'Hộp', 269000, 236);
INSERT INTO THUOC VALUES ('T0187', N'Cadila Healthcare  ', N'Túi 25g', N'Túi', 69000, 205);
INSERT INTO THUOC VALUES ('T0188', N'Abbott India  ', N'Gói 5 cái', N'Gói', 169000, 200);
INSERT INTO THUOC VALUES ('T0189', N'Alkem Laboratories  ', N'Hộp 20 ống x 10ml', N'Hộp', 169000, 243);
INSERT INTO THUOC VALUES ('T0190', N'Glaxosmithkline Pharmaceuticals  ', N'Hộp 2 vỉ x 15 viên', N'Hộp', 550000, 441);
INSERT INTO THUOC VALUES ('T0191', N'Ipca Laboratories  ', N'Hộp 60 viên', N'Hộp', 750000, 383);
INSERT INTO THUOC VALUES ('T0192', N'Alembic Pharmaceuticals  ', N'Hộp 60 viên', N'Viên', 300000, 334);
INSERT INTO THUOC VALUES ('T0193', N'Glenmark Pharmaceuticals  ', N'Hộp 60 viên', N'Hộp', 299000, 272);
INSERT INTO THUOC VALUES ('T0194', N'JB Chemicals và Pharmaceuticals  ', N'Hộp 1 máy', N'Máy', 140000, 21);
INSERT INTO THUOC VALUES ('T0195', N'Sun Pharmaceutical Industries  ', N'Hộp 1 cái', N'Cái', 700000, 19);
INSERT INTO THUOC VALUES ('T0196', N'Dr. Reddys Laboratories  ', N'Hộp 100 chiếc', N'Cái', 500000, 249);
INSERT INTO THUOC VALUES ('T0197', N'Divis Laboratories  ', N'Hộp 100 cái', N'Cái', 404000, 3);
INSERT INTO THUOC VALUES ('T0198', N'Cipla  ', N'Lọ 100 viên', N'Viên', 600000, 104);
INSERT INTO THUOC VALUES ('T0199', N'Biocon  ', N'Hộp 26 gói', N'Tuýp', 400000, 20);
INSERT INTO THUOC VALUES ('T0200', N'Aurobindo Pharma  ', N'Hộp 3 vỉ x 10 viên', N'Hộp', 450000, 15);
REM INSERTING into TOATHUOC
SET DEFINE OFF;
INSERT INTO TOATHUOC VALUES ('TT0001', 'PK0001', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0002', 'PK0002', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0003', 'PK0003', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0004', 'PK0004', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0005', 'PK0005', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0006', 'PK0006', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0007', 'PK0007', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0008', 'PK0008', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0009', 'PK0009', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0010', 'PK0010', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0011', 'PK0011', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0012', 'PK0012', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0013', 'PK0013', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0014', 'PK0014', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0015', 'PK0015', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0016', 'PK0016', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0017', 'PK0017', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0018', 'PK0018', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0019', 'PK0019', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0020', 'PK0020', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0021', 'PK0021', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0022', 'PK0022', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0023', 'PK0023', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0024', 'PK0024', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0025', 'PK0025', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0026', 'PK0026', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0027', 'PK0027', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0028', 'PK0028', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0029', 'PK0029', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0030', 'PK0030', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0031', 'PK0031', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0032', 'PK0032', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0033', 'PK0033', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0034', 'PK0034', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0035', 'PK0035', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0036', 'PK0036', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0037', 'PK0037', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0038', 'PK0038', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0039', 'PK0039', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0040', 'PK0040', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0041', 'PK0041', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0042', 'PK0042', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0043', 'PK0043', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0044', 'PK0044', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0045', 'PK0045', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0046', 'PK0046', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0047', 'PK0047', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0048', 'PK0048', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0049', 'PK0049', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0050', 'PK0050', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0051', 'PK0051', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0052', 'PK0052', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0053', 'PK0053', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0054', 'PK0054', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0055', 'PK0055', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0056', 'PK0056', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0057', 'PK0057', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0058', 'PK0058', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0059', 'PK0059', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0060', 'PK0060', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0061', 'PK0061', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0062', 'PK0062', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0063', 'PK0063', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0064', 'PK0064', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0065', 'PK0065', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0066', 'PK0066', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0067', 'PK0067', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0068', 'PK0068', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0069', 'PK0069', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0070', 'PK0070', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0071', 'PK0071', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0072', 'PK0072', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0073', 'PK0073', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0074', 'PK0074', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0075', 'PK0075', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0076', 'PK0076', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0077', 'PK0077', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0078', 'PK0078', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0079', 'PK0079', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0080', 'PK0080', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0081', 'PK0081', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0082', 'PK0082', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0083', 'PK0083', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0084', 'PK0084', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0085', 'PK0085', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0086', 'PK0086', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0087', 'PK0087', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0088', 'PK0088', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0089', 'PK0089', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0090', 'PK0090', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0091', 'PK0091', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0092', 'PK0092', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0093', 'PK0093', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0094', 'PK0094', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0095', 'PK0095', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0096', 'PK0096', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0097', 'PK0097', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0098', 'PK0098', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0099', 'PK0099', N'Đã thanh toán', NULL);
INSERT INTO TOATHUOC VALUES ('TT0100', 'PK0100', N'Đã thanh toán', NULL);
--------------------------------------------------------
--  DDL for Index P_BACSI
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_BACSI" ON "BACSI" ("MABACSI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_BENH
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_BENH" ON "BENH" ("MABENH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_BENHNHAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_BENHNHAN" ON "BENHNHAN" ("MABENHNHAN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_CHITIETCHANDOAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_CHITIETCHANDOAN" ON "CHITIETCHANDOAN" ("MAPHIEUKHAM", "MABENH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_CHITIETTOATHUOC
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_CHITIETTOATHUOC" ON "CHITIETTOATHUOC" ("MATOATHUOC", "MATHUOC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_CHUYENKHOA
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_CHUYENKHOA" ON "CHUYENKHOA" ("MACHUYENKHOA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_HOCVI
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_HOCVI" ON "HOCVI" ("MAHOCVI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_HV_BS
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_HV_BS" ON "HOCVIBACSI" ("MABACSI", "MAHOCVI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_LLV
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_LLV" ON "LICHLAMVIEC" ("MALICH") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_NHANVIEN
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_NHANVIEN" ON "NHANVIEN" ("MANHANVIEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_PHANQUYENTAIKHOAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_PHANQUYENTAIKHOAN" ON "PHANQUYENTAIKHOAN" ("TENTAIKHOAN", "MAQUYEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_PHIEUDANGKY
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_PHIEUDANGKY" ON "PHIEUDANGKY" ("MAPHIEUDANGKY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_PHIEUKHAM
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_PHIEUKHAM" ON "PHIEUKHAM" ("MAPHIEUKHAM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_PHONG
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_PHONG" ON "PHONG" ("MAPHONG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_QUYEN
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_QUYEN" ON "QUYEN" ("MAQUYEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_TAIKHOAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_TAIKHOAN" ON "TAIKHOAN" ("TENTAIKHOAN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_THUOC
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_THUOC" ON "THUOC" ("MATHUOC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index P_TOATHUOC
--------------------------------------------------------

  CREATE UNIQUE INDEX "P_TOATHUOC" ON "TOATHUOC" ("MATOATHUOC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BENH
--------------------------------------------------------

  ALTER TABLE "BENH" MODIFY ("MABENH" NOT NULL ENABLE);
  ALTER TABLE "BENH" ADD CONSTRAINT "P_BENH" PRIMARY KEY ("MABENH")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HOCVIBACSI
--------------------------------------------------------

  ALTER TABLE "HOCVIBACSI" MODIFY ("MABACSI" NOT NULL ENABLE);
  ALTER TABLE "HOCVIBACSI" MODIFY ("MAHOCVI" NOT NULL ENABLE);
  ALTER TABLE "HOCVIBACSI" ADD CONSTRAINT "P_HV_BS" PRIMARY KEY ("MABACSI", "MAHOCVI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TOATHUOC
--------------------------------------------------------

  ALTER TABLE "TOATHUOC" MODIFY ("MATOATHUOC" NOT NULL ENABLE);
  ALTER TABLE "TOATHUOC" ADD CONSTRAINT "P_TOATHUOC" PRIMARY KEY ("MATOATHUOC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHIEUKHAM
--------------------------------------------------------

  ALTER TABLE "PHIEUKHAM" MODIFY ("MAPHIEUKHAM" NOT NULL ENABLE);
  ALTER TABLE "PHIEUKHAM" ADD CONSTRAINT "P_PHIEUKHAM" PRIMARY KEY ("MAPHIEUKHAM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BACSI
--------------------------------------------------------

  ALTER TABLE "BACSI" MODIFY ("MABACSI" NOT NULL ENABLE);
  ALTER TABLE "BACSI" ADD CONSTRAINT "P_BACSI" PRIMARY KEY ("MABACSI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHITIETTOATHUOC
--------------------------------------------------------

  ALTER TABLE "CHITIETTOATHUOC" MODIFY ("MATOATHUOC" NOT NULL ENABLE);
  ALTER TABLE "CHITIETTOATHUOC" MODIFY ("MATHUOC" NOT NULL ENABLE);
  ALTER TABLE "CHITIETTOATHUOC" ADD CONSTRAINT "P_CHITIETTOATHUOC" PRIMARY KEY ("MATOATHUOC", "MATHUOC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAIKHOAN
--------------------------------------------------------

  ALTER TABLE "TAIKHOAN" MODIFY ("TENTAIKHOAN" NOT NULL ENABLE);
  ALTER TABLE "TAIKHOAN" MODIFY ("MATKHAU" NOT NULL ENABLE);
  ALTER TABLE "TAIKHOAN" ADD CONSTRAINT "P_TAIKHOAN" PRIMARY KEY ("TENTAIKHOAN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHUYENKHOA
--------------------------------------------------------

  ALTER TABLE "CHUYENKHOA" MODIFY ("MACHUYENKHOA" NOT NULL ENABLE);
  ALTER TABLE "CHUYENKHOA" ADD CONSTRAINT "P_CHUYENKHOA" PRIMARY KEY ("MACHUYENKHOA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHITIETCHANDOAN
--------------------------------------------------------

  ALTER TABLE "CHITIETCHANDOAN" MODIFY ("MAPHIEUKHAM" NOT NULL ENABLE);
  ALTER TABLE "CHITIETCHANDOAN" MODIFY ("MABENH" NOT NULL ENABLE);
  ALTER TABLE "CHITIETCHANDOAN" ADD CONSTRAINT "P_CHITIETCHANDOAN" PRIMARY KEY ("MAPHIEUKHAM", "MABENH")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LICHLAMVIEC
--------------------------------------------------------

  ALTER TABLE "LICHLAMVIEC" MODIFY ("MALICH" NOT NULL ENABLE);
  ALTER TABLE "LICHLAMVIEC" MODIFY ("MABACSI" NOT NULL ENABLE);
  ALTER TABLE "LICHLAMVIEC" MODIFY ("MAPHONG" NOT NULL ENABLE);
  ALTER TABLE "LICHLAMVIEC" MODIFY ("NGAYLAM" NOT NULL ENABLE);
  ALTER TABLE "LICHLAMVIEC" ADD CONSTRAINT "P_LLV" PRIMARY KEY ("MALICH")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table THUOC
--------------------------------------------------------

  ALTER TABLE "THUOC" MODIFY ("MATHUOC" NOT NULL ENABLE);
  ALTER TABLE "THUOC" ADD CONSTRAINT "P_THUOC" PRIMARY KEY ("MATHUOC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NHANVIEN
--------------------------------------------------------

  ALTER TABLE "NHANVIEN" MODIFY ("MANHANVIEN" NOT NULL ENABLE);
  ALTER TABLE "NHANVIEN" ADD CONSTRAINT "P_NHANVIEN" PRIMARY KEY ("MANHANVIEN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHONG
--------------------------------------------------------

  ALTER TABLE "PHONG" MODIFY ("MAPHONG" NOT NULL ENABLE);
  ALTER TABLE "PHONG" ADD CONSTRAINT "P_PHONG" PRIMARY KEY ("MAPHONG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHIEUDANGKY
--------------------------------------------------------

  ALTER TABLE "PHIEUDANGKY" MODIFY ("MAPHIEUDANGKY" NOT NULL ENABLE);
  ALTER TABLE "PHIEUDANGKY" ADD CONSTRAINT "P_PHIEUDANGKY" PRIMARY KEY ("MAPHIEUDANGKY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BENHNHAN
--------------------------------------------------------

  ALTER TABLE "BENHNHAN" MODIFY ("MABENHNHAN" NOT NULL ENABLE);
  ALTER TABLE "BENHNHAN" ADD CONSTRAINT "P_BENHNHAN" PRIMARY KEY ("MABENHNHAN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QUYEN
--------------------------------------------------------

  ALTER TABLE "QUYEN" MODIFY ("MAQUYEN" NOT NULL ENABLE);
  ALTER TABLE "QUYEN" MODIFY ("QUYEN" NOT NULL ENABLE);
  ALTER TABLE "QUYEN" ADD CONSTRAINT "P_QUYEN" PRIMARY KEY ("MAQUYEN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHANQUYENTAIKHOAN
--------------------------------------------------------

  ALTER TABLE "PHANQUYENTAIKHOAN" MODIFY ("TENTAIKHOAN" NOT NULL ENABLE);
  ALTER TABLE "PHANQUYENTAIKHOAN" MODIFY ("MAQUYEN" NOT NULL ENABLE);
  ALTER TABLE "PHANQUYENTAIKHOAN" ADD CONSTRAINT "P_PHANQUYENTAIKHOAN" PRIMARY KEY ("TENTAIKHOAN", "MAQUYEN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HOCVI
--------------------------------------------------------

  ALTER TABLE "HOCVI" MODIFY ("MAHOCVI" NOT NULL ENABLE);
  ALTER TABLE "HOCVI" ADD CONSTRAINT "P_HOCVI" PRIMARY KEY ("MAHOCVI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BACSI
--------------------------------------------------------

  ALTER TABLE "BACSI" ADD CONSTRAINT "F_BS_CK" FOREIGN KEY ("MACHUYENKHOA")
	  REFERENCES "CHUYENKHOA" ("MACHUYENKHOA") ENABLE;
  ALTER TABLE "BACSI" ADD CONSTRAINT "F_BS_TK" FOREIGN KEY ("TAIKHOAN")
	  REFERENCES "TAIKHOAN" ("TENTAIKHOAN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BENHNHAN
--------------------------------------------------------

  ALTER TABLE "BENHNHAN" ADD CONSTRAINT "F_BN_TK" FOREIGN KEY ("TAIKHOAN")
	  REFERENCES "TAIKHOAN" ("TENTAIKHOAN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHITIETCHANDOAN
--------------------------------------------------------

  ALTER TABLE "CHITIETCHANDOAN" ADD CONSTRAINT "F_CTCD_PK" FOREIGN KEY ("MAPHIEUKHAM")
	  REFERENCES "PHIEUKHAM" ("MAPHIEUKHAM") ENABLE;
  ALTER TABLE "CHITIETCHANDOAN" ADD CONSTRAINT "F_CTCD_B" FOREIGN KEY ("MABENH")
	  REFERENCES "BENH" ("MABENH") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHITIETTOATHUOC
--------------------------------------------------------

  ALTER TABLE "CHITIETTOATHUOC" ADD CONSTRAINT "F_CTTT_TT" FOREIGN KEY ("MATOATHUOC")
	  REFERENCES "TOATHUOC" ("MATOATHUOC") ENABLE;
  ALTER TABLE "CHITIETTOATHUOC" ADD CONSTRAINT "F_CTTT_T" FOREIGN KEY ("MATHUOC")
	  REFERENCES "THUOC" ("MATHUOC") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HOCVIBACSI
--------------------------------------------------------

  ALTER TABLE "HOCVIBACSI" ADD CONSTRAINT "F_BVBS_BS" FOREIGN KEY ("MABACSI")
	  REFERENCES "BACSI" ("MABACSI") ENABLE;
  ALTER TABLE "HOCVIBACSI" ADD CONSTRAINT "F_BVBS_HV" FOREIGN KEY ("MAHOCVI")
	  REFERENCES "HOCVI" ("MAHOCVI") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LICHLAMVIEC
--------------------------------------------------------

  ALTER TABLE "LICHLAMVIEC" ADD CONSTRAINT "F_LLV_BS" FOREIGN KEY ("MABACSI")
	  REFERENCES "BACSI" ("MABACSI") ENABLE;
  ALTER TABLE "LICHLAMVIEC" ADD CONSTRAINT "F_LLV_P" FOREIGN KEY ("MAPHONG")
	  REFERENCES "PHONG" ("MAPHONG") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NHANVIEN
--------------------------------------------------------

  ALTER TABLE "NHANVIEN" ADD CONSTRAINT "F_NV_TK" FOREIGN KEY ("TAIKHOAN")
	  REFERENCES "TAIKHOAN" ("TENTAIKHOAN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PHANQUYENTAIKHOAN
--------------------------------------------------------

  ALTER TABLE "PHANQUYENTAIKHOAN" ADD CONSTRAINT "F_PQTK_TK" FOREIGN KEY ("TENTAIKHOAN")
	  REFERENCES "TAIKHOAN" ("TENTAIKHOAN") ENABLE;
  ALTER TABLE "PHANQUYENTAIKHOAN" ADD CONSTRAINT "F_PQTK_Q" FOREIGN KEY ("MAQUYEN")
	  REFERENCES "QUYEN" ("MAQUYEN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PHIEUDANGKY
--------------------------------------------------------

  ALTER TABLE "PHIEUDANGKY" ADD CONSTRAINT "F_PDK_BN" FOREIGN KEY ("MABENHNHAN")
	  REFERENCES "BENHNHAN" ("MABENHNHAN") ENABLE;
  ALTER TABLE "PHIEUDANGKY" ADD CONSTRAINT "F_PDK_L" FOREIGN KEY ("LICHLAMVIEC")
	  REFERENCES "LICHLAMVIEC" ("MALICH") ENABLE;
  ALTER TABLE "PHIEUDANGKY" ADD CONSTRAINT "F_PDK_NV" FOREIGN KEY ("NVLAP")
	  REFERENCES "NHANVIEN" ("MANHANVIEN") ENABLE;
  ALTER TABLE "PHIEUDANGKY" ADD CONSTRAINT "F_PDK_NVTT" FOREIGN KEY ("NVTHANHTOAN")
	  REFERENCES "NHANVIEN" ("MANHANVIEN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PHIEUKHAM
--------------------------------------------------------

  ALTER TABLE "PHIEUKHAM" ADD CONSTRAINT "F_PK_PDK" FOREIGN KEY ("MAPHIEUDANGKY")
	  REFERENCES "PHIEUDANGKY" ("MAPHIEUDANGKY") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOATHUOC
--------------------------------------------------------

  ALTER TABLE "TOATHUOC" ADD CONSTRAINT "F_TT_PK" FOREIGN KEY ("MAPHIEUKHAM")
	  REFERENCES "PHIEUKHAM" ("MAPHIEUKHAM") ENABLE;
