Create database DB_DoAn5
use DB_DoAn5
go

---------------Tạo bảng Khoa--------------------
create table Teacher_Faculty(
	ID_Faculty int IDENTITY(1,1),
	Name_Faculty nvarchar(225),
	Address_Faculty nvarchar(225),
	Learder_Faculty nvarchar(255) null, 
	Website_Facuty varchar(225) null,
	Primary key(ID_Faculty)
)
---------------Tạo bảng Bộ Môn------------------
create table Teacher_Subject(
	ID_Subject int IDENTITY(1,1),
	Primary key(ID_Subject),
	ID_Faculty int FOREIGN KEY(ID_Faculty) REFERENCES dbo.Teacher_Faculty(ID_Faculty),-----ID KHoa
	Name_Subject nvarchar(225),
	Address_Subject nvarchar(225) null,
	Phone_Subject varchar(20) null,
	Leader nvarchar(255) null,
	Leader_Assis nvarchar(255) null,
)
---------------Tạo bảng Chức vụ-----------------
create table Teacher_Position(
	ID_Position int IDENTITY(1,1),----ID CHức vụ 
	Primary key(ID_Position),
	ID_Faculty int FOREIGN KEY(ID_Faculty) REFERENCES dbo.Teacher_Faculty(ID_Faculty),-----ID KHoa
	Name_Position nvarchar(255),
	Cent_Position int null,-------Phần trăm giảm 
	Note_Position nvarchar(255) null,-----Ghi chú
 )
 ALTER TABLE Teacher_Position
 ADD Respon_Position nvarchar(255) null  ------đảm nhiệm thêm chức vụ 
---------------Tạo bảng Ngạch Công chức---------
create table Teacher_RanksOfficer(
	ID_Ranks int IDENTITY(1,1),
	Code_Ranks varchar(100),----Mã số ngạch
	Name_Ranks nvarchar(255)null, 
	Descript_Ranks text null,------Mô tả 
	status int null, 
	Primary key(ID_Ranks),
	[DP1] [text] NULL,
	[DP2] [text] NULL,
)
ALTER TABLE Teacher_RanksOfficer
ALTER COLUMN Descript_Ranks nvarchar(255) null
ALTER TABLE Teacher_RanksOfficer
ADD Note_Ranks ntext null

-----------------Tạo bảng Bậc Lượng ------------
create table Teacher_Wage(
	ID_Wage int IDENTITY(1,1),
	Name_Wage nvarchar(255),
	Coeff_Wage int null, ------Hệ số Bặc lương
	Primary key(ID_Wage),
	status int , 
)
ALTER TABLE Teacher_Wage
ALTER COLUMN Coeff_Wage float null
ALTER TABLE Teacher_Wage
ADD Group_Wage ntext null
---------------Tạo bảng Giáo Viên --------------
create table Teacher(
	ID_Teacher varchar(20) ,
	Primary key(ID_Teacher),
	ID_Subject int FOREIGN KEY(ID_Subject) REFERENCES dbo.Teacher_Subject(ID_Subject),------Khóa ngoại Bộ Môn 
	ID_Position int FOREIGN KEY(ID_Position) REFERENCES dbo.Teacher_Position(ID_Position),---Khóa Ngoại Chức vụ 
	ID_Ranks int FOREIGN KEY(ID_Ranks) REFERENCES dbo.Teacher_RanksOfficer(ID_Ranks),-----Khóa ngoại Ngạch công chức
	ID_Wage int FOREIGN KEY(ID_Wage) REFERENCES dbo.Teacher_Wage(ID_Wage),---Khóa ngoại Bậc Lương
	First_Name nvarchar(255),
	Last_Name nvarchar(255),
	Name_Teacher nvarchar(255) ,
	Image_Teacher nvarchar(255) null,
	Gende_Teacher bit,--Giới tính
	Phone__Teacher varchar(20) null,
	Email_Teacher nvarchar(255) null,
	DateBirth_Teacher date null,
	Address_Teacher nvarchar(255) null,
	CurrentAddress_Teacher nvarchar(255) null,----Nơi ở hiện tại 
	Nation_Teacher nvarchar(255),---Dân tộc
	Religion_Teacher nvarchar(255) null,----Tôn giáp
	Level_Teacher nvarchar(255) null,---Trình độ
	Experience_Teacher text null,---Kinh nghiệm nếu có
	IdentityCard_Teacher varchar(50) null,----CHứng minh nhân dan 
	DateRange_Teacher date null,------Ngày cấp
	IssuedBy_Teacher nvarchar(100) null,----Cấp bởi
	DayAdim_Teacher date null,--------ngày kết nạp đảng,
	AddressAdmin_Teacher nvarchar(255)  null,-----nơi kết nạp
	status int null,
	[DP1] [text] NULL,
	[DP2] [text] NULL,
)
---------------Tạo bảng Trình độ học vấn -------
create table Teacher_Academic(
	ID_Academic int IDENTITY(1,1),
	ID_Teacher varchar(20) FOREIGN KEY(ID_Teacher) REFERENCES dbo.Teacher(ID_Teacher),
	Name_Academic nvarchar(255),
	YearGredu_Academic date null,----Năm tốt nghiệp
	Certificate_Academic nvarchar(255),----Chứng chỉ sư phạm
	Specialy__Academic nvarchar(255),----- Chuyên ngành đào tạo
	UnitWork_Academic nvarchar(255) null,---ĐƠn vị công tác
	LevelIT_Academic nvarchar(255) null,---Trình độ tin học 
	LevelLag_Academic nvarchar(255) null,-----Trình độ ngoại ngữ
	YeasTeaching_Academic varchar(10) null,---Số năm tham gia giảng dạy 
	Primary key(ID_Academic),
	status int null, 
	[DP1] [text] NULL,
	[DP2] [text] NULL,
)
---------------Tạo bảng Hợp Đồng Lao Động-------
create table Teacher_Contract(
	ID_Contract  int IDENTITY(1,1),
	Primary key(ID_Contract),
	ID_Teacher varchar(20) FOREIGN KEY(ID_Teacher) REFERENCES dbo.Teacher(ID_Teacher),
	Type_Contract nvarchar(255),--------Loại hợp đồng
	Since_Contract date null, --------tỪ ngày
	Come_Contract date  null,----------Đến ngày 
	Note_Contract ntext null, 
	status int null, 
	[DP1] [text] NULL,
	[DP2] [text] NULL,
)
-----------------Tạo bảng Lương-----------------
create table Teacher_Salary(
	ID_Salary int IDENTITY(1,1), 
	Primary key(ID_Salary),
	ID_Wage int FOREIGN KEY(ID_Wage) REFERENCES dbo.Teacher_Wage(ID_Wage),
	Wage_Salary int null, -------Mức Lương
	Basic_Salary int, ------Lương CƠ Bản
	Sub_Salary int null, ------Lượng Phụ Cấp
	---------Body_Insurance varchar(255) null,----Bảo hiểm y tế
	---------Health_Insurance varchar(255) null,----Bảo hiểm sức khỏe
	Date_Salary date null, ------Ngày hưởng lương
	DateIcre_Salary date null, ------Ngày tăng lương
	status int null, 
	[DP1] [text] NULL,
)
ALTER TABLE Teacher_Salary
ALTER COLUMN Date_Salary nvarchar(255)  null

-----------------Tạo bảng Khen thưởng kỷ luật---
create table Teacher_DiscipRewards(
	ID_DisRewards int IDENTITY(1,1),
	Primary key(ID_DisRewards),
	ID_Teacher varchar(20) FOREIGN KEY(ID_Teacher) REFERENCES dbo.Teacher(ID_Teacher),
	Name_DisRewards nvarchar(255) null,-----Tên khen thưởng hoạc kỉ luật 
	Reason_DisRewards ntext null,---Lý do 
	Day_DisRewards date null,------Ngày bắt đầu khen thưởng hoạc kỉ luật 
	Form_DisRewards nvarchar(255) null,-------Hình Thức 
	Note_DisRewards ntext null, 
	status int null,
	[DP1] [text] NULL,
)
-----------------Tạo bảng Nâng Lương ( hs lương cũ, hệ số lương mới , hệ số lương, ngày hạn lương--------
create table Teacher_SalaryRaise(
	ID_Raise int IDENTITY(1,1),
	Primary key(ID_Raise),
	ID_Salary int FOREIGN KEY(ID_Salary) REFERENCES dbo.Teacher_Salary(ID_Salary),
	ID_Wage int FOREIGN KEY(ID_Wage) REFERENCES dbo.Teacher_Wage(ID_Wage),
	CoeffOld_Raise int null ,-------Hệ số lương cũ
	CoeffNew_Raise int null,-------Hệ số lương mới
)
ALTER TABLE Teacher_SalaryRaise
ALTER COLUMN CoeffOld_Raise float null
ALTER TABLE Teacher_SalaryRaise
ALTER COLUMN CoeffNew_Raise float null
-----------------Tạo bảng Môn học--------
create table Teacher_SubLession(
	ID_Sub int IDENTITY(1,1),
	Primary key(ID_Sub),
	----ID_Subjec int FOREIGN KEY(ID_Subjec) REFERENCES dbo.Teacher_Subject(ID_Subject),------Khóa ngoại Bộ Môn
	Name_Sub  nvarchar(255) null,-----Tên môn học 
	Type_Sub nvarchar(255) null, --------------Loại môn học( thực hành hay lý thuyết)
	Number_credits_Sub int null,------------Số tin chỉ 
	status int null,
	[DP1] [text] NULL,
)
-----------------------Tạo bảng đăng kí giảng dạy( mã gv, mã môn học, ngày đăng kí, giờ đăng kí, TRạng thái----
create table Teacher_SignUp(
	ID_SignUp int IDENTITY(1,1), 
	Primary key(ID_SignUp),
	ID_Teacher varchar(20) FOREIGN KEY(ID_Teacher) REFERENCES dbo.Teacher(ID_Teacher),
	ID_Sub int FOREIGN KEY(ID_Sub) REFERENCES dbo.Teacher_SubLession(ID_Sub),------Khóa ngoại Môn Học
	Date_SignUp datetime null,----Ngày đăng kí 
	Note_SignUp ntext null, ---------Ghi chú
	status int null, ---------Trạng thái 
	[DP1] [text] NULL,
	[DP2] [text] NULL,
)
-----------------------Tạo bảng Lý lịch khoa học ------- -----
create table Teacher_Scientist(
	ID_Scientist int IDENTITY(1,1), 
	Primary key(ID_Scientist),
	ID_Teacher varchar(20) FOREIGN KEY(ID_Teacher) REFERENCES dbo.Teacher(ID_Teacher),
	Name_Scientist nvarchar(255) null, -----Tên lý lịch khoa học 
	Type_Scientist ntext null, ----------Loại 
	Link_Scientist nvarchar(255) NULL, --- link đến các bài báo 
	Note_Scientist ntext null, --------CHú thích
	status int null, 
	[DP1] [text] NULL,
	[DP2] [text] NULL,
)


 CREATE TABLE user2(
	[user_id] [varchar](50) NOT NULL,
	[hoten] [nvarchar](150) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](250) NULL,
	[gioitinh] [nvarchar](30) NULL,
	[email] [varchar](150) NULL,
	[taikhoan] [varchar](30) NULL,
	[matkhau] [varchar](60) NULL,
	[role] [varchar](30) NULL,
	[image_url] [varchar](300) NULL,
 CONSTRAINT [PK_user2] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[user2] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'14ff5489-9b84-4bd4-801d-55374bdbe15b', N'nguyễn minh khôi', CAST(N'2020-10-12' AS Date), N'hưngyene', N'Nam', N'khoi@gmail.com', N'khoi', N'123@123', N'Admin', N'assets/images/Screenshot (4).png')
INSERT [dbo].[user2] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'3d5111a9-6ff0-45c7-89c6-cbc68c7f8744', N'Trần Thị Hoa66668888', CAST(N'2020-10-10' AS Date), N'Hà Nội888', N'Nam', N'hoa@gmail.com', N'hoa', N'hoa@123', N'Admin', NULL)
INSERT [dbo].[user2] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'531ecaad-c81d-4407-ae8f-e01efb36d2b5', N'nguyễn thanh huệ', CAST(N'2020-10-13' AS Date), N'hưng yên', N'Nam', N'hue@gmail.com', N'huentt', N'123@123', N'User', NULL)
INSERT [dbo].[user2] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'82bd035e-2772-4f96-aab9-3ddb050817eb', N'Nguyễn Hữu Đông', CAST(N'1969-12-30' AS Date), N'Hưng yên', N'Nữ', N'dong@gmail.com', N'dongnh', N'123@123', N'User', N'assets/images/Screenshot (8).png')
INSERT [dbo].[user2] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'885f03ad-46dc-442a-be3a-29f264496409', N'Nguyễn Hữu Hùng', CAST(N'2020-10-11' AS Date), N'Hà Nội', N'Nam', N'hung@gamil.com', N'hung', N'123@123', N'Admin', NULL)
INSERT [dbo].[user2] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'c5799c78-3f78-4e40-b2fc-23ec8073ddfd', N'Nguyễn Thị Mai', CAST(N'2020-10-13' AS Date), N'Hải Phòng', N'Nam', N'mai@gmail.com', N'mai', N'mai@123', N'Admin', N'assets/images/Screenshot (4).png')
INSERT [dbo].[user2] ([user_id], [hoten], [ngaysinh], [diachi], [gioitinh], [email], [taikhoan], [matkhau], [role], [image_url]) VALUES (N'cc49bfa6-ebde-484b-abad-5ae180a64567', N'Admin', CAST(N'1977-01-08' AS Date), N'Hưng Yên', N'Nam', N'admin@gmail.com', N'admin', N'admin', N'Admin', NULL)
GO