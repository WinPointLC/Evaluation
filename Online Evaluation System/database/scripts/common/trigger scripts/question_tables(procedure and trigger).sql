USE OES_TESTING
GO

--PROCEDURE FOR CREATING QUESTION BANK WITH DYNAMIC NAME

create procedure [dbo].[create_question_bank]
	@table_name varchar(50)
	as 
	begin
		declare @sql nvarchar(max)
		set @sql = 'create table '+UPPER(@table_name)+'_QUESTION_BANK(
					QUESTION_ID INT IDENTITY(1,1) CONSTRAINT '+@table_name+'_OES_QB_Q_ID_PK PRIMARY KEY,
					COURSE_ID SMALLINT FOREIGN KEY REFERENCES COURSES(COURSE_ID),
					TOPIC_ID SMALLINT FOREIGN KEY REFERENCES  TOPICS(TOPIC_ID),

					QUESTION VARCHAR(MAX), 
					OPTION_1 VARCHAR(200),
					OPTION_2 VARCHAR(200),
					OPTION_3 VARCHAR(200),
					OPTION_4 VARCHAR(200),
					CORRECT_OPTION VARCHAR(10),
					MARKS TINYINT,
					EXPLANATION VARCHAR(500),
					
					DIFFICULTY_LEVEL_ID TINYINT ,
					IN_CRT VARCHAR(3),
					CREATED_BY INT,
					CREATED_DATE DATETIME
					FOREIGN KEY (DIFFICULTY_LEVEL_ID) REFERENCES DIFFICULTY_LEVEL(DIFFICULTY_LEVEL_ID)
				)'
				execute sp_executesql @sql

	end
GO

--PROCEDURE FOR CREATING A TRIGGER ON DELETE FOR NEWLY CREATED QUESTIN BANK

create procedure question_bank_checkident
	@table_name varchar(50)
	as
	begin
		declare @sql nvarchar(max)
		set @sql = 'create trigger '+@table_name+'_question_bank_checkident
				on '+@table_name+'_question_bank
				after delete 
					as
					begin 
						declare @max_'+@table_name+'_question_id int
						select @max_'+@table_name+'_question_id = isNull(max(question_id), 0)
						from technical_question_bank
						DBCC CHECKIDENT ('+ UPPER(@table_name) +'_question_bank, RESEED, @max_technical_question_id)
					end'
	end




--TRIGGER ON STREAM TABLE TO CREATE QUESTION BANK 

go

create trigger question_bank
	on stream
	after insert
	as	
	
		begin
		declare @table_name nvarchar(100)
		set @table_name = (select stream_name from STREAM where STREAM_ID = (select MAX(STREAM_ID) from STREAM))
			exec create_question_bank @table_name 
			exec question_bank_checkident @table_name
		end
go

