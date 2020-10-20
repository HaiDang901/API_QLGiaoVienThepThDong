use DB_DoAn5
	go
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	/****** Object:  StoredProcedure [dbo].[Teacher_all]    Script Date: 9/21/2020 3:02:33 PM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO	
	create PROCEDURE [dbo].[Teacher_all]
	AS
		BEGIN
			SELECT		Teacher.ID_Teacher ,
						Teacher.ID_Subject,------Khóa ngoại Bộ Môn 
						Teacher.ID_Position ,---Khóa Ngoại Chức vụ 
						Teacher.ID_Ranks ,-----Khóa ngoại Ngạch công chức
						Teacher.ID_Wage,---Khóa ngoại Bậc Lương
						Teacher.First_Name ,
						Teacher.Last_Name ,
						Teacher.Name_Teacher  ,
						Teacher.Image_Teacher ,
						Teacher.Gende_Teacher ,--Giới tính
						Teacher.Phone__Teacher  ,
						Teacher.Email_Teacher ,
						Teacher.DateBirth_Teacher,
						Teacher.Address_Teacher ,
						Teacher.CurrentAddress_Teacher ,----Nơi ở hiện tại 
						Teacher.Nation_Teacher ,---Dân tộc
						Teacher.Religion_Teacher ,----Tôn giáp
						Teacher.Level_Teacher ,---Trình độ
						Teacher.Experience_Teacher ,---Kinh nghiệm nếu có
						Teacher.IdentityCard_Teacher ,----CHứng minh nhân dan 
						Teacher.DateRange_Teacher,------Ngày cấp
						Teacher.IssuedBy_Teacher ,----Cấp bởi
						Teacher.DayAdim_Teacher ,--------ngày kết nạp đảng,
						Teacher.AddressAdmin_Teacher,-----nơi kết nạp
						Teacher.status 
			FROM Teacher 
		END;
	GO
	exec [dbo].[Teacher_all]
	go
/****** Object:  StoredProcedure [dbo].[sp_item_create]    Script Date: 9/21/2020 3:02:33 PM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	Create proc [dbo].[Teacher_create](
		@ID_Teacher varchar(20) ,
		@ID_Subject int,------Khóa ngoại Bộ Môn 
		@ID_Position int ,---Khóa Ngoại Chức vụ 
		@ID_Ranks int,-----Khóa ngoại Ngạch công chức
		@ID_Wage int,---Khóa ngoại Bậc Lương
		@First_Name nvarchar(255),
		@Last_Name nvarchar(255),
		@Name_Teacher nvarchar(255) ,
		@Image_Teacher nvarchar(255) null,
		@Gende_Teacher bit,--Giới tính
		@Phone__Teacher varchar(20) null,
		@Email_Teacher nvarchar(255) null,
		@DateBirth_Teacher date null,
		@Address_Teacher nvarchar(255) null,
		@CurrentAddress_Teacher nvarchar(255) null,----Nơi ở hiện tại 
		@Nation_Teacher nvarchar(255),---Dân tộc
		@Religion_Teacher nvarchar(255) null,----Tôn giáp
		@Level_Teacher nvarchar(255) null,---Trình độ
		@Experience_Teacher text null,---Kinh nghiệm nếu có
		@IdentityCard_Teacher varchar(50) null,----CHứng minh nhân dan 
		@DateRange_Teacher date null,------Ngày cấp
		@IssuedBy_Teacher nvarchar(100) null,----Cấp bởi
		@DayAdim_Teacher date null,--------ngày kết nạp đảng,
		@AddressAdmin_Teacher nvarchar(255)  null,-----nơi kết nạp
		@status int null
	 )
	 AS
		BEGIN
		  INSERT INTO Teacher
					(
						ID_Teacher ,
						ID_Subject,------Khóa ngoại Bộ Môn 
						ID_Position ,---Khóa Ngoại Chức vụ 
						ID_Ranks ,-----Khóa ngoại Ngạch công chức
						ID_Wage,---Khóa ngoại Bậc Lương
						First_Name ,
						Last_Name ,
						Name_Teacher  ,
						Image_Teacher ,
						Gende_Teacher ,--Giới tính
						Phone__Teacher  ,
						Email_Teacher ,
						DateBirth_Teacher,
						Address_Teacher ,
						CurrentAddress_Teacher ,----Nơi ở hiện tại 
						Nation_Teacher ,---Dân tộc
						Religion_Teacher ,----Tôn giáp
						Level_Teacher ,---Trình độ
						Experience_Teacher ,---Kinh nghiệm nếu có
						IdentityCard_Teacher ,----CHứng minh nhân dan 
						DateRange_Teacher,------Ngày cấp
						IssuedBy_Teacher ,----Cấp bởi
						DayAdim_Teacher ,--------ngày kết nạp đảng,
						AddressAdmin_Teacher,-----nơi kết nạp
						status 
					)
					VALUES
					(@ID_Teacher ,
						@ID_Subject,------Khóa ngoại Bộ Môn 
						@ID_Position ,---Khóa Ngoại Chức vụ 
						@ID_Ranks ,-----Khóa ngoại Ngạch công chức
						@ID_Wage,---Khóa ngoại Bậc Lương
						@First_Name ,
						@Last_Name ,
						@Name_Teacher  ,
						@Image_Teacher ,
						@Gende_Teacher ,--Giới tính
						@Phone__Teacher  ,
						@Email_Teacher ,
						@DateBirth_Teacher,
						@Address_Teacher ,
						@CurrentAddress_Teacher ,----Nơi ở hiện tại 
						@Nation_Teacher ,---Dân tộc
						@Religion_Teacher ,----Tôn giáp
						@Level_Teacher ,---Trình độ
						@Experience_Teacher ,---Kinh nghiệm nếu có
						@IdentityCard_Teacher ,----CHứng minh nhân dan 
						@DateRange_Teacher,------Ngày cấp
						@IssuedBy_Teacher ,----Cấp bởi
						@DayAdim_Teacher ,--------ngày kết nạp đảng,
						@AddressAdmin_Teacher,-----nơi kết nạp
						@status 
					);
			SELECT '';
		END;
	GO
/****** Object:  StoredProcedure [dbo].[[Teacher_Faculty_create]    Script Date: 9/21/2020 3:02:33 PM ******/
	SET QUOTED_IDENTIFIER ON
	GO
	create PROCEDURE [dbo].[Teacher_delete]
	(@ID_Teacher              varchar(20) 
	)
	AS
		BEGIN
			delete from [Teacher] where ID_Teacher = @ID_Teacher;
			SELECT '';
		END;
	GO
/****** Object:  StoredProcedure [dbo].[sp_user_get_by_id]    Script Date: 10/14/2020 12:15:10 AM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO

	CREATE PROC [dbo].[Teacher_get_by_id](@ID_Teacher VARCHAR(20))
	AS
		BEGIN
			SELECT		Teacher.ID_Teacher,
						Teacher.ID_Subject,------Khóa ngoại Bộ Môn 
						Teacher.ID_Position ,---Khóa Ngoại Chức vụ 
						Teacher.ID_Ranks ,-----Khóa ngoại Ngạch công chức
						Teacher.ID_Wage,---Khóa ngoại Bậc Lương
						Teacher.Name_Teacher  ,
						Teacher.Image_Teacher ,
						Teacher.Gende_Teacher ,--Giới tính
						Teacher.Phone__Teacher  ,
						Teacher.Email_Teacher ,
						Teacher.Level_Teacher ,---Trình độ
						Teacher.status                         
			FROM Teacher
		  where  Teacher.ID_Teacher = @ID_Teacher;
		END;
	GO
	exec [dbo].[Teacher_get_by_id] 00000040
	go
	--create proc getTeacherById @id varchar(20) 
	--		as
	--			select*from Teacher tf 
	--			where tf.ID_Teacher= @id
	--go	
	--exec getTeacherById 00000040
	--go
/****** Object:  StoredProcedure [dbo].[sp_user_get_by_username_password]    Script Date: 10/14/2020 12:15:10 AM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[Teacher_get_by_gender](@Gende_Teacher bit )
	AS
		BEGIN
			SELECT      
							Teacher.ID_Teacher,
							Teacher.ID_Subject,------Khóa ngoại Bộ Môn 
							Teacher.ID_Position ,---Khóa Ngoại Chức vụ 
							Teacher.ID_Ranks ,-----Khóa ngoại Ngạch công chức
							Teacher.ID_Wage,---Khóa ngoại Bậc Lương
							Teacher.Name_Teacher  ,
							Teacher.Image_Teacher ,
							Teacher.Gende_Teacher ,--Giới tính
							Teacher.Phone__Teacher  ,
							Teacher.Email_Teacher ,
							Teacher.Level_Teacher ,---Trình độ
							Teacher.status  
			FROM [Teacher]
		  where  Gende_Teacher = @Gende_Teacher ;
		END;
	GO
	 EXEC [dbo].[Teacher_get_by_gender] 0;
	go
/****** Object:  StoredProcedure [dbo].[sp_user_search]    Script Date: 10/14/2020 12:15:10 AM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[Teacher_search] (@page_index  INT, @page_size   INT, @Name_Teacher nvarchar(255), @Nation_Teacher nvarchar(255)
										   )
	AS
		BEGIN
			DECLARE @RecordCount BIGINT;
			IF(@page_size <> 0)
				BEGIN
					SET NOCOUNT ON;
							SELECT(ROW_NUMBER() OVER(
								  ORDER BY gv.Name_Teacher ASC)) AS RowNumber, 
								gv.ID_Teacher ,
								gv.ID_Subject,
								gv.ID_Position ,
								gv.ID_Ranks ,
								gv.ID_Wage,
								gv.First_Name ,
								gv.Last_Name ,
								gv.Name_Teacher  ,
								gv.Image_Teacher ,
								gv.Gende_Teacher ,
								gv.Phone__Teacher  ,
								gv.Email_Teacher ,
								gv.DateBirth_Teacher,
								gv.Address_Teacher ,
								gv.CurrentAddress_Teacher , 
								gv.Nation_Teacher ,
								gv.Religion_Teacher ,
								gv.Level_Teacher ,
								gv.Experience_Teacher ,
								gv.IdentityCard_Teacher ,
								gv.DateRange_Teacher,
								gv.IssuedBy_Teacher ,
								gv.DayAdim_Teacher,
								gv.AddressAdmin_Teacher,
								gv.status
							INTO #Results1
							FROM [Teacher] AS gv
							WHERE (gv.Nation_Teacher <> 'Kinh') and ((@Name_Teacher = '') OR (gv.Name_Teacher LIKE '%' + @Name_Teacher + '%')) and  ((@Nation_Teacher = '') OR (gv.Nation_Teacher = @Nation_Teacher)) ;
							SELECT @RecordCount = COUNT(*)
							FROM #Results1;
							SELECT *, 
								   @RecordCount AS RecordCount
							FROM #Results1
							WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
								  OR @page_index = -1;
							DROP TABLE #Results1; 
				END;
				ELSE
				BEGIN
					SET NOCOUNT ON;
							 SELECT(ROW_NUMBER() OVER(
								  ORDER BY gv.Name_Teacher ASC)) AS RowNumber, 
								gv.ID_Teacher ,
								gv.ID_Subject,
								gv.ID_Position ,
								gv.ID_Ranks ,
								gv.ID_Wage,
								gv.First_Name ,
								gv.Last_Name ,
								gv.Name_Teacher  ,
								gv.Image_Teacher ,
								gv.Gende_Teacher ,
								gv.Phone__Teacher  ,
								gv.Email_Teacher ,
								gv.DateBirth_Teacher,
								gv.Address_Teacher ,
								gv.CurrentAddress_Teacher , 
								gv.Nation_Teacher ,
								gv.Religion_Teacher ,
								gv.Level_Teacher ,
								gv.Experience_Teacher ,
								gv.IdentityCard_Teacher ,
								gv.DateRange_Teacher,
								gv.IssuedBy_Teacher ,
								gv.DayAdim_Teacher,
								gv.AddressAdmin_Teacher,
								gv.status
							INTO #Results2
							FROM [Teacher] AS gv
							WHERE (gv.Nation_Teacher <> 'Kinh') and ((@Name_Teacher = '') OR (gv.Name_Teacher LIKE '%' + @Name_Teacher + '%')) and  ((@Nation_Teacher = '') OR (gv.Nation_Teacher = @Nation_Teacher)) ;
							SELECT @RecordCount = COUNT(*)
							FROM #Results2;
							SELECT *, 
								   @RecordCount AS RecordCount
							FROM #Results2;
							DROP TABLE #Results2;
			END;
		END;
	GO
/****** Object:  StoredProcedure [dbo].[sp_user_update]    Script Date: 10/14/2020 12:15:10 AM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO	
	CREATE PROCEDURE [dbo].[Teacher_update]
	(
		@ID_Teacher varchar(20) ,
		@First_Name nvarchar(255),
		@Last_Name nvarchar(255),
		@Name_Teacher nvarchar(255) ,
		@Image_Teacher nvarchar(255) null,
		@Phone__Teacher varchar(20) null,
		@Email_Teacher nvarchar(255) null,
		@DateBirth_Teacher date null,
		@Address_Teacher nvarchar(255) null,
		@Nation_Teacher nvarchar(255),
		@Level_Teacher nvarchar(255) null,
		@Experience_Teacher text null,
		@status int null
	)
	AS
		BEGIN
	   update [Teacher] set 
						First_Name = @First_Name ,
						Last_Name =@Last_Name ,
						Name_Teacher =@Name_Teacher ,
						Image_Teacher = @Image_Teacher,
						Phone__Teacher =@Phone__Teacher ,
						Email_Teacher =Email_Teacher,
						DateBirth_Teacher = @DateBirth_Teacher,
						Address_Teacher = @Address_Teacher,
						Nation_Teacher =@Nation_Teacher,---Dân tộc
						Level_Teacher =@Level_Teacher,---Trình độ
						Experience_Teacher = @Experience_Teacher ,---Kinh nghiệm nếu có
						status = @status
					where ID_Teacher = @ID_Teacher;
			 
			SELECT '';
		END;
	GO

	--create PROCEDURE [dbo].[Teacher_Faculty_create]
--(
--	@ID_Faculty int,
--	@Name_Faculty nvarchar(225),
--	@Address_Faculty nvarchar(225),
--	@Learder_Faculty nvarchar(255) null, 
--	@Website_Facuty varchar(225) null,  
--	@listjson_bomon NVARCHAR(MAX)
--)
--AS
--    BEGIN
--        INSERT INTO Teacher_Faculty
--                (ID_Faculty, 
--                 Name_Faculty,
--				 Address_Faculty,
--				 Learder_Faculty,
--				 Website_Facuty             
--                )
--                VALUES
--                (@ID_Faculty, 
--                 @Name_Faculty,
--				 @Address_Faculty,
--				 @Learder_Faculty,
--				 @Website_Facuty
--                );
--                IF(@listjson_bomon IS NOT NULL)
--                    BEGIN
--                        INSERT INTO Teacher_Subject
--                        (ID_Subject, 
--                         ID_Faculty, 
--                         Name_Subject,
--						 Address_Subject,
--						 Phone_Subject,
--						 Leader,
--						 Leader_Assis                      
--                        )
--                               SELECT JSON_VALUE(p.value, '$.ID_Subject'), 
--                                      @ID_Faculty, 
--                                      JSON_VALUE(p.value, '$.Name_Subject'), 
--                                      JSON_VALUE(p.value, '$.Address_Subject'),
--									  JSON_VALUE(p.value, '$.Phone_Subject'), 
--                                      JSON_VALUE(p.value, '$.Leader'),
--									  JSON_VALUE(p.value, '$.item_id'), 
--                                      JSON_VALUE(p.value, '$.Leader_Assis')
--                               FROM OPENJSON(@listjson_bomon) AS p;
--                END;
--        SELECT '';
--    END;
--	go

--	SET ANSI_NULLS ON
--GO
	go
	create proc getListFaculty 
		as 
		select* from Teacher_Faculty
		
		go
	exec getListFaculty
	go
	create proc getFacultyById @id int 
		as
			select*from Teacher_Faculty tf 
			where tf.ID_Faculty=@id
		go
	exec getFacultyById 1
	go
/****** Object:  StoredProcedure [dbo].[sp_user_create]    Script Date: 10/14/2020 12:15:10 AM ******/
	CREATE PROCEDURE [dbo].[user_create]
	(@user_id              varchar(50), 
	 @hoten          nvarchar(150) ,
	 @ngaysinh         date  ,
	 @diachi          nvarchar(250)  ,
	 @gioitinh         nvarchar(30)  ,
	 @email          varchar(150) ,
	 @taikhoan         varchar(30) ,
	 @matkhau         varchar(60)  ,
	 @role          varchar(30) ,
	 @image_url varchar(300) 
	)
	AS
		BEGIN
			Insert INTO user2
					(
				 		 [user_id]               , 
						 hoten           ,
						 ngaysinh          ,
						 diachi           ,
						 gioitinh           ,
						 email           ,
						 taikhoan         ,
						 matkhau           ,
						 role    ,
						 image_url
					)
					VALUES
					(
					 @user_id               , 
					 @hoten           ,
					 @ngaysinh          ,
					 @diachi           ,
					 @gioitinh           ,
					 @email           ,
					 @taikhoan         ,
					 @matkhau           ,
					 @role ,
					 @image_url
					);
			SELECT '';
		END;
	Go
/****** Object:  StoredProcedure [dbo].[sp_user_delete]    Script Date: 10/14/2020 12:15:10 AM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	create PROCEDURE [dbo].[user_delete]
	(@user_id              varchar(50) 
	)
	AS
		BEGIN
			delete from [user2] where user_id = @user_id;
			SELECT '';
		END;
	GO
/****** Object:  StoredProcedure [dbo].[sp_user_get_by_id]    Script Date: 10/14/2020 12:15:10 AM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[user_get_by_id](@user_id VARCHAR(50))
	AS
		BEGIN
			SELECT  [user_id]               , 
						 hoten           ,
						 ngaysinh          ,
						 diachi           ,
						 gioitinh           ,
						 email           ,
						 taikhoan         ,
						 matkhau           ,
						 role      ,
						 image_url  
			FROM [user2]
		  where  [user_id] = @user_id;
		END;
	GO
/****** Object:  StoredProcedure [dbo].[sp_user_get_by_username_password]    Script Date: 10/14/2020 12:15:10 AM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[user_get_by_username_password](@taikhoan varchar(30), @matkhau varchar(60))
	AS
    BEGIN
        SELECT  [user_id]               , 
					 hoten           ,
					 ngaysinh          ,
					 diachi           ,
					 gioitinh           ,
					 email           ,
					 taikhoan         ,
					 role      ,
					 image_url  
        FROM [user2]
      where  taikhoan = @taikhoan and matkhau = @matkhau ;
    END;
	GO
/****** Object:  StoredProcedure [dbo].[sp_user_search]    Script Date: 10/14/2020 12:15:10 AM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE PROCEDURE [dbo].[user_search] (@page_index  INT, 
										   @page_size   INT,
										   @hoten nvarchar(150),
										   @taikhoan varchar(30)
										   )
	AS
		BEGIN
			DECLARE @RecordCount BIGINT;
			IF(@page_size <> 0)
				BEGIN
					SET NOCOUNT ON;
							SELECT(ROW_NUMBER() OVER(
								  ORDER BY u.hoten ASC)) AS RowNumber, 
								 u.user_id              , 
								 u.hoten           ,
								 u.ngaysinh          ,
								 u.diachi           ,
								 u.gioitinh           ,
								 u.email           ,
								 u.taikhoan         ,
								 u.matkhau           ,
								 u.role  ,
								 u.image_url  
							INTO #Results1
							FROM [user2] AS u
							WHERE (u.taikhoan <> 'Admin') and ((@hoten = '') OR (u.hoten LIKE '%' + @hoten + '%')) and  ((@taikhoan = '') OR (u.taikhoan = @taikhoan));
							SELECT @RecordCount = COUNT(*)
							FROM #Results1;
							SELECT *, 
								   @RecordCount AS RecordCount
							FROM #Results1
							WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
								  OR @page_index = -1;
							DROP TABLE #Results1; 
				END;
				ELSE
				BEGIN
					SET NOCOUNT ON;
							 SELECT(ROW_NUMBER() OVER(
								  ORDER BY u.hoten ASC)) AS RowNumber, 
								 u.user_id              , 
								 u.hoten           ,
								 u.ngaysinh          ,
								 u.diachi           ,
								 u.gioitinh           ,
								 u.email           ,
								 u.taikhoan         ,
								 u.matkhau           ,
								 u.role     ,
								 u.image_url  
							INTO #Results2
							FROM [user2] AS u
							WHERE (u.taikhoan <> 'Admin') and ((@hoten = '') OR (u.hoten LIKE '%' + @hoten + '%')) and  ((@taikhoan = '') OR (u.taikhoan = @taikhoan));
							SELECT @RecordCount = COUNT(*)
							FROM #Results2;
							SELECT *, 
								   @RecordCount AS RecordCount
							FROM #Results2;
							DROP TABLE #Results2;
			END;
		END;
	GO
/****** Object:  StoredProcedure [dbo].[sp_user_update]    Script Date: 10/14/2020 12:15:10 AM ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO	
	CREATE PROCEDURE [dbo].[user_update]
	(@user_id              varchar(50), 
	 @hoten          nvarchar(150) ,
	 @ngaysinh         date  ,
	 @diachi          nvarchar(250)  ,
	 @gioitinh         nvarchar(30)  ,
	 @email          varchar(150) ,
	 @taikhoan         varchar(30) ,
	 @matkhau         varchar(60)  ,
	 @role          varchar(30),
	 @image_url         varchar(300)
	)
	AS
		BEGIN
	   update [user2] set 
					hoten= @hoten           ,
					ngaysinh= @ngaysinh          ,
					diachi= @diachi           ,
					gioitinh= @gioitinh           ,
					email= @email           ,
					matkhau = @matkhau           ,
					role= @role ,
					image_url = @image_url 
					where user_id = @user_id;
			 
			SELECT '';
		END;
	GO
	USE [master]
	GO
	ALTER DATABASE [DB_DoAn5] SET  READ_WRITE 
	GO
