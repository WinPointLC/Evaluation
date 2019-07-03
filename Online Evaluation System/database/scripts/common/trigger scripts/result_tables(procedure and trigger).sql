USE OES_TESTING
GO

--PROCEDURE FOR CREATING RESULT TABLE COURSE WISE

create procedure [dbo].[CREATE_RESULT_TABLE]
	@table_name varchar(50),
	@stream_name varchar(50)
	as 
	begin
		declare @sql nvarchar(max)
		set @sql = 'CREATE TABLE STUDENT_TEST_RESULT_'+UPPER(@table_name)+'(
					USER_TEST_ID INT FOREIGN KEY REFERENCES USER_TEST_DETAILS(USER_TEST_ID),
					Q_NO SMALLINT,
					QUESTION_ID INT FOREIGN KEY REFERENCES '+UPPER(@stream_name)+'_QUESTION_BANK(QUESTION_ID),
					STUDENT_RESPONSE VARCHAR(10),
					IS_CORRRECT VARCHAR(3),
					CREATED_BY INT,
					CREATED_DATE DATETIME'
				execute sp_executesql @sql

	end
GO


--TRIGGER ON STREAM TABLE TO CREATE RESULT TABLE 

go

create trigger COURSE_RESULT
	on COURSES
	after insert
	as	
	
		begin 
			declare @table_name varchar(50),@stream_name varchar(50)
			set @table_name = (select course_name from COURSES where COURSE_ID = (select max(course_id) from COURSES))
			set @stream_name = (select STREAM_ID from COURSES where COURSE_ID = (select max(course_id) from COURSES))

			exec create_RESULT_TABLE @table_name ,@stream_name
		end
go

