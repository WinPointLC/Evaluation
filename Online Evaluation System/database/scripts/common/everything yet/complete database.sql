USE MASTER
GO
CREATE DATABASE OES_TESTING
GO
USE OES_TESTING
GO
CREATE TABLE CLIENT_CATEGORY(
	CLIENT_CATEGORY_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_CLIENT_CATEGORY_ID_PK PRIMARY KEY,
	CLIENT_CATEGORY_NAME VARCHAR(20),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE SECURITY_QUESTIONS(
	SECURITY_QUESTION_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_SECURITY_QUESTION_ID_PK PRIMARY KEY,
	SECURITY_QUESTION VARCHAR(50),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE USER_CATEGORY(
	USER_CATEGORY_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_USER_CATEGORY_ID_PK PRIMARY KEY,
	USER_CATEGORY_NAME VARCHAR(10),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)
CREATE TABLE EMPLOYEE_CATEGORY(
	EMPLOYEE_CATEGORY_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_EMPLOYEE_CATEGORY_ID_PK PRIMARY KEY,
	EMPLOYEE_CATEGORY_NAME VARCHAR(30),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE USER_PROFILE(
	USER_ID INT IDENTITY(1,1) CONSTRAINT OES_USER_ID_PK PRIMARY KEY,
	FIRST_NAME VARCHAR(20),
	LAST_NAME VARCHAR(20),
	EMAIL_ID VARCHAR(100),
	MOBILE_NUMBER VARCHAR(15),
	ADDRESS VARCHAR(200) CONSTRAINT OES_USER_PROFILE_ADDRESS_MAX_200_CHAR DEFAULT ' ',
	BIRTHDATE DATE,
	COLLEGE VARCHAR(50),
	DEGREE VARCHAR(10),
	BRANCH VARCHAR(50),
	YEAR_OF_GRADUATION DATE,
	PHOTO_LOCATION VARCHAR(500),
	PASSWORD VARCHAR(32) CONSTRAINT OES_USER_PROFILE_PASSWORD_MAX_32_CHAR NOT NULL,
	SECURITY_QUESTION_ID TINYINT FOREIGN KEY REFERENCES SECURITY_QUESTIONS(SECURITY_QUESTION_ID),
	SECURITY_ANSWER VARCHAR(20),
	USER_CATEGORY_ID TINYINT FOREIGN KEY REFERENCES USER_CATEGORY(USER_CATEGORY_ID),
	OCCUPATION VARCHAR(20),
	ORGANIZATION VARCHAR(100),
	DESIGNATION VARCHAR(20),
	DOMAIN VARCHAR(20),
	ROLE VARCHAR(20),
	EXPERIENCE TINYINT,
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE EVALUATION_TYPE(
	EVALUATION_TYPE_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_EVAL_TYPE_ID_PK PRIMARY KEY,
	EVALUATION_TYPE_NAME VARCHAR(100),
	OFFLINE_CHECK VARCHAR(3) CONSTRAINT OES_EVAL_TYPE_OFFLINE_CHECK_YESorNO CHECK (OFFLINE_CHECK IN('YES','NO')),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE STREAMS(
	STREAM_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_STREAM_ID_PK PRIMARY KEY,
	STREAM_NAME VARCHAR(20),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE COURSE_TYPE(
	COURSE_TYPE_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_COURSE_TYPE_PK PRIMARY KEY,
	COURSE_TYPE_NAME VARCHAR(10),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE DIFFICULTY_LEVEL(
	DIFFICULTY_LEVEL_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_DIFFICULTY_LEVEL_ID_PK PRIMARY KEY,
	DIFFICULTY_LEVEL_NAME VARCHAR(10),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE EMPLOYEE_DETAILS(
	USER_ID INT FOREIGN KEY REFERENCES USER_PROFILE(USER_ID),
	SALARY DECIMAL(8,2),
	DATE_OF_JOINING DATE,
	EMPLOYEE_CATEGORY_ID TINYINT FOREIGN KEY REFERENCES EMPLOYEE_CATEGORY(EMPLOYEE_CATEGORY_ID),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE FACULTY_SKILLS(
	USER_ID INT FOREIGN KEY REFERENCES USER_PROFILE(USER_ID),
	SKILL_SET VARCHAR(150),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE USER_STUDENT(
	USER_ID INT FOREIGN KEY REFERENCES USER_PROFILE(USER_ID),
	PARENT_NAME VARCHAR(20),
	PARENT_MOBILE VARCHAR(15),
	CLIENT_CATEGORY_ID TINYINT FOREIGN KEY REFERENCES CLIENT_CATEGORY(CLIENT_CATEGORY_ID),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE FEEDBACK_QUESTIONS(
	FEEDBACK_QUESTION_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_FEEDBACK_QUESTION_ID_PK PRIMARY KEY,
	FEEDBACK_QUESTION VARCHAR(200),
	FEEDBACK_QUESTION_TYPE VARCHAR(20),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE RULES(
	RULE_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_RULE_ID_PK PRIMARY KEY,
	RULE_DESCRIPTION VARCHAR(200),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE GRADING_SYSTEM(
	GRADE_ID VARCHAR(2) CONSTRAINT OES_GRADE_ID_PK PRIMARY KEY,
	LOWER_LIMIT SMALLINT,
	HIGHER_LIMIT SMALLINT,
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE TOOL_TIPS(
	TOOL_TIP_ID TINYINT IDENTITY(1,1) CONSTRAINT OES_TOOL_TIP_ID_PK PRIMARY KEY,
	COURSE_TYPE_ID TINYINT FOREIGN KEY REFERENCES COURSE_TYPE(COURSE_TYPE_ID),
	TOOL_TIP_DESCRIPTION VARCHAR(200),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE COURSES(
	COURSE_ID SMALLINT IDENTITY(1,1) CONSTRAINT OES_COURSE_ID_PK PRIMARY KEY,
	COURSE_NAME VARCHAR(20),
	DURATION SMALLINT,
	FEES DECIMAL(7,2),
	STREAM_ID TINYINT FOREIGN KEY REFERENCES STREAM(STREAM_ID),
	COURSE_TYPE_ID TINYINT FOREIGN KEY REFERENCES COURSE_TYPE(COURSE_TYPE_ID),
	COURSEWARE_EXIST VARCHAR(3) CONSTRAINT OES_COURSES_COURSEWARE_EXIST_YESorNO CHECK (COURSEWARE_EXIST IN('YES','NO')),
	EVALUATION_TYPE_ID TINYINT FOREIGN KEY REFERENCES EVALUATION_TYPE(EVALUATION_TYPE_ID),
	TOTAL_TESTS TINYINT,
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE TOPICS(
	TOPIC_ID SMALLINT IDENTITY(1,1) CONSTRAINT OES_TOPIC_ID_PK PRIMARY KEY,
	COURSE_ID SMALLINT FOREIGN KEY REFERENCES COURSES(COURSE_ID),
	TOPIC_NAME VARCHAR(50),
	MINIMUM_NUMBER_OF_QUESTIONS_FOR_TEST TINYINT,
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE TEST_DETAILS(
	TEST_DETAIL_ID INT IDENTITY(1,1) CONSTRAINT OES_TEST_DETAIL_ID_PK PRIMARY KEY,
	COURSE_ID SMALLINT FOREIGN KEY REFERENCES COURSES(COURSE_ID),
	TEST_NUMBER TINYINT,
	TOTAL_QUESTIONS TINYINT,
	TEST_FEES DECIMAL(6,2),
	NEGATIVE_MARKING VARCHAR(3),
	RULES VARCHAR(50),
	EVALUATION_TYPE_ID TINYINT FOREIGN KEY REFERENCES EVALUATION_TYPE(EVALUATION_TYPE_ID),
	CREATED_BY INT,
	CREATED_DATE DATETIME,
	UNIQUE(COURSE_ID,TEST_NUMBER)
)

CREATE TABLE USER_TEST_DETAILS(
	USER_TEST_ID INT IDENTITY(1,1) CONSTRAINT OES_USER_TEST_ID_PK PRIMARY KEY,
	USER_ID INT  FOREIGN KEY REFERENCES USER_PROFILE(USER_ID),
	TEST_DETAIL_ID INT FOREIGN KEY REFERENCES TEST_DETAILS(TEST_DETAIL_ID),
	MARKS_RECEIVED SMALLINT,
	TIME_TAKEN TIME,
	NUMBER_OF_REGISTRATION TINYINT,
	FEE_STATUS VARCHAR(10),
	CREATED_BY INT,
	CREATED_DATE DATETIME,
	UNIQUE(USER_ID,TEST_DETAIL_ID,NUMBER_OF_REGISTRATION)
)

CREATE TABLE BATCH_DETAILS(
	BATCH_ID INT IDENTITY(1,1) CONSTRAINT OES_BATCH_ID_PK PRIMARY KEY,
	COURSE_ID SMALLINT FOREIGN KEY REFERENCES COURSES(COURSE_ID),
	FACULTY INT FOREIGN KEY REFERENCES USER_PROFILE(USER_ID),
	BEGIN_DATE DATE,
	END_DATE DATE,
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE TEST_DIFFICULTY(
	TEST_DETAIL_ID INT FOREIGN KEY REFERENCES TEST_DETAILS(TEST_DETAIL_ID),
	TOPIC_ID SMALLINT FOREIGN KEY REFERENCES TOPICS,
	DIFFICULTY_LEVEL_ID TINYINT FOREIGN KEY REFERENCES DIFFICULTY_LEVEL(DIFFICULTY_LEVEL_ID),
	NUMBER_OF_QUESTIONS SMALLINT,
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE STUDENT_COURSE_DETAILS(
	USER_ID INT FOREIGN KEY REFERENCES USER_PROFILE,
	COURSE_ID SMALLINT FOREIGN KEY REFERENCES COURSES(COURSE_ID),
	BATCH_ID INT FOREIGN KEY REFERENCES BATCH_DETAILS(BATCH_ID),
	FEEDBACK_GIVEN VARCHAR(3),
	CERTIFICATE_GIVEN VARCHAR(3),
	COURSE_AGGR SMALLINT,
	GRADE_ID VARCHAR(2) FOREIGN KEY REFERENCES GRADING_SYSTEM(GRADE_ID),
	FEE_STATUS VARCHAR(10),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

CREATE TABLE COURSE_FEEDBACK(
	USER_ID INT FOREIGN KEY REFERENCES USER_PROFILE(USER_ID),
	COURSE_ID SMALLINT FOREIGN KEY REFERENCES COURSES(COURSE_ID),
	FEEDBACK_QUESTION_ID TINYINT FOREIGN KEY REFERENCES FEEDBACK_QUESTIONS(FEEDBACK_QUESTION_ID),
	RESPONSE VARCHAR(150),
	MARK_FOR_REVIEW VARCHAR(3),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)
 CREATE TABLE TEST_FEEDBACK(
	USER_TEST_ID INT FOREIGN KEY REFERENCES USER_TEST_DETAILS(USER_TEST_ID),
	FEEDBACK_QUESTION_ID TINYINT FOREIGN KEY REFERENCES FEEDBACK_QUESTIONS(FEEDBACK_QUESTION_ID),
	RESPONSE VARCHAR(100),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)

/*CREATE TABLE STUDENT_TEST_RESULT_C(
	USER_TEST_ID INT FOREIGN KEY REFERENCES USER_TEST_DETAILS(USER_TEST_ID),
	Q_NUMBER SMALLINT,
	TECH_Q_ID INT FOREIGN KEY REFERENCES TECHNICAL_QUESTION_BANK(TECH_Q_ID),
	STUDENT_RESPONSE VARCHAR(10),
	IS_CORRRECT VARCHAR(3),
	CREATED_BY INT,
	CREATED_DATE DATETIME
)*/

go

USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[client_category_checkident]    Script Date: 29/06/2019 11:49:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[client_category_checkident]
	on [dbo].[CLIENT_CATEGORY]
	after delete
	as
		begin
			declare @max_client_category_id tinyint
			select @max_client_category_id = isNull(max(client_category_id), 0)
			from client_category
			DBCC CHECKIDENT ('client_category', RESEED, @max_client_category_id)
		end
GO

ALTER TABLE [dbo].[CLIENT_CATEGORY] ENABLE TRIGGER [client_category_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[course_type_checkident]    Script Date: 29/06/2019 11:53:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--course_type
create trigger [dbo].[course_type_checkident]
	on [dbo].[COURSE_TYPE]
	after delete
	as
		begin
			declare @max_course_type_id tinyint
			select @max_course_type_id = isNull(max(course_type_id), 0)
			from course_type
			DBCC CHECKIDENT ('course_type', RESEED, @max_course_type_id)
		end
GO

ALTER TABLE [dbo].[COURSE_TYPE] ENABLE TRIGGER [course_type_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[courses_checkident]    Script Date: 29/06/2019 11:55:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[courses_checkident]
	on [dbo].[COURSES]
	after delete
	as
		begin
			declare @max_course_id tinyint
			select @max_course_id = isNull(max(course_id), 0)
			from courses
			DBCC CHECKIDENT ('courses', RESEED, @max_course_id)
		end
GO

ALTER TABLE [dbo].[COURSES] ENABLE TRIGGER [courses_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[difficulty_level_checkident]    Script Date: 29/06/2019 11:55:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[difficulty_level_checkident]
	on [dbo].[DIFFICULTY_LEVEL]
	after delete
	as
		begin
			declare @max_difficulty_level_id tinyint
			select @max_difficulty_level_id = isNull(max(difficulty_level_id), 0)
			from difficulty_level
			DBCC CHECKIDENT ('difficulty_level', RESEED, @max_difficulty_level_id)
		end
GO

ALTER TABLE [dbo].[DIFFICULTY_LEVEL] ENABLE TRIGGER [difficulty_level_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[employee_category_checkident]    Script Date: 29/06/2019 11:55:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[employee_category_checkident]
	on [dbo].[EMPLOYEE_CATEGORY]
	after delete
	as
		begin
			declare @max_employee_category_id tinyint
			select @max_employee_category_id = isNull(max(employee_category_id), 0)
			from employee_category
			DBCC CHECKIDENT ('employee_category', RESEED, @max_employee_category_id)
		end
GO

ALTER TABLE [dbo].[EMPLOYEE_CATEGORY] ENABLE TRIGGER [employee_category_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[evaluation_type_checkident]    Script Date: 29/06/2019 11:55:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[evaluation_type_checkident]
	on [dbo].[EVALUATION_TYPE]
	after delete
	as
		begin
			declare @max_evaluation_type_id tinyint
			select @max_evaluation_type_id = isNull(max(evaluation_type_id), 0)
			from evaluation_type
			DBCC CHECKIDENT ('evaluation_type', RESEED, @max_evaluation_type_id)
		end
GO

ALTER TABLE [dbo].[EVALUATION_TYPE] ENABLE TRIGGER [evaluation_type_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[feedback_questions_checkident]    Script Date: 29/06/2019 11:56:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[feedback_questions_checkident]
	on [dbo].[FEEDBACK_QUESTIONS]
	after delete
	as
		begin
			declare @max_fbq_id tinyint
			select @max_fbq_id = isNull(max(feedback_question_id), 0)
			from feedback_questions
			DBCC CHECKIDENT ('feedback_questions', RESEED, @max_fbq_id)
		end
GO

ALTER TABLE [dbo].[FEEDBACK_QUESTIONS] ENABLE TRIGGER [feedback_questions_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[rules_checkident]    Script Date: 29/06/2019 11:56:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[rules_checkident]
	on [dbo].[RULES]
	after delete
	as
		begin
			declare @max_rules_id tinyint
			select @max_rules_id = isNull(max(rule_id), 0)
			from rules
			DBCC CHECKIDENT ('rules', RESEED, @max_rules_id)
		end
GO

ALTER TABLE [dbo].[RULES] ENABLE TRIGGER [rules_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[security_questions_checkident]    Script Date: 29/06/2019 11:56:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[security_questions_checkident]
	on [dbo].[SECURITY_QUESTIONS]
	after delete
	as
		begin
			declare @max_security_question_id tinyint
			select @max_security_question_id = isNull(max(security_question_id), 0)
			from security_questions
			DBCC CHECKIDENT ('security_questions', RESEED, @max_security_question_id)
		end
GO

ALTER TABLE [dbo].[SECURITY_QUESTIONS] ENABLE TRIGGER [security_questions_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[stream_checkident]    Script Date: 29/06/2019 11:57:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[stream_checkident]
	on [dbo].[STREAM]
	after delete
	as
		begin
			declare @max_stream_id tinyint
			select @max_stream_id = isNull(max(stream_id), 0)
			from stream
			DBCC CHECKIDENT ('stream', RESEED, @max_stream_id)
		end
GO

ALTER TABLE [dbo].[STREAM] ENABLE TRIGGER [stream_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[tool_tips_checkident]    Script Date: 29/06/2019 11:57:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--tool_tips
create trigger [dbo].[tool_tips_checkident]
	on [dbo].[TOOL_TIPS]
	after delete
	as
		begin
			declare @max_tool_tip_id tinyint
			select @max_tool_tip_id = isNull(max(tool_tip_id), 0)
			from tool_tips
			DBCC CHECKIDENT ('tool_tips', RESEED, @max_tool_tip_id)
		end
GO

ALTER TABLE [dbo].[TOOL_TIPS] ENABLE TRIGGER [tool_tips_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[topics_checkident]    Script Date: 29/06/2019 11:58:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--topics
create trigger [dbo].[topics_checkident]
	on [dbo].[TOPICS]
	after delete
	as
		begin
			declare @max_topic_id tinyint
			select @max_topic_id = isNull(max(topic_id), 0)
			from topics
			DBCC CHECKIDENT ('topics', RESEED, @max_topic_id)
		end
GO

ALTER TABLE [dbo].[TOPICS] ENABLE TRIGGER [topics_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[user_category_checkident]    Script Date: 29/06/2019 11:58:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[user_category_checkident]
	on [dbo].[USER_CATEGORY]
	after delete
	as
		begin
			declare @max_user_category_id tinyint
			select @max_user_category_id = isNull(max(user_category_id), 0)
			from user_category
			DBCC CHECKIDENT ('user_category', RESEED, @max_user_category_id)
		end
GO

ALTER TABLE [dbo].[USER_CATEGORY] ENABLE TRIGGER [user_category_checkident]
GO


USE [OES_TESTING]
GO

/****** Object:  Trigger [dbo].[user_profile_checkident]    Script Date: 29/06/2019 11:58:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[user_profile_checkident]
	on [dbo].[USER_PROFILE]
	after delete
	as
		begin
			declare @max_USER_ID int
			select @max_USER_ID = isNull(max(USER_ID), 0)
			from user_profile
			DBCC CHECKIDENT ('user_profile', RESEED, @max_USER_ID)
		end
GO

ALTER TABLE [dbo].[USER_PROFILE] ENABLE TRIGGER [user_profile_checkident]
GO


USE OES_TESTING
GO

/****** Object:  Trigger [dbo].[user_test_details_checkident]    Script Date: 29/06/2019 11:58:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[user_test_details_checkident]
	on [dbo].[USER_TEST_DETAILS]
	after delete
	as
		begin
			declare @max_user_test_id int
			select @max_user_test_id = isNull(max(user_test_id), 0)
			from user_test_details
			DBCC CHECKIDENT ('user_test_details', RESEED, @max_user_test_id)
		end
GO

ALTER TABLE [dbo].[USER_TEST_DETAILS] ENABLE TRIGGER [user_test_details_checkident]
GO


USE OES_TESTING
GO
/*************/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[test_details_checkident]
	on [dbo].[TEST_DETAILS]
	after delete
	as
		begin
			declare @max_test_detail_id int
			select @max_test_detail_id = isNull(max(test_detail_id), 0)
			from test_details
			DBCC CHECKIDENT ('test_details', RESEED, @max_test_detail_id)
		end
GO

ALTER TABLE [dbo].[TEST_DETAILS] ENABLE TRIGGER [test_details_checkident]
GO


USE OES_TESTING
GO

/*************************/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[batch_details_checkident]
	on [dbo].[BATCH_DETAILS]
	after delete
	as
		begin
			declare @max_batch_id int
			select @max_batch_id = isNull(max(batch_id), 0)
			from batch_details
			DBCC CHECKIDENT ('batch_details', RESEED, @max_batch_id)
		end
GO

ALTER TABLE [dbo].[BATCH_DETAILS] ENABLE TRIGGER [batch_details_checkident]
GO


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
						DBCC CHECKIDENT ('+ UPPER(@table_name) +'_question_bank, RESEED, @max_'+@table_name+'_question_id)
					end'
					execute sp_executesql @sql

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

USE OES_TESTING
GO

--PROCEDURE FOR CREATING RESULT TABLE COURSE WISE

create procedure CREATE_RESULT_TABLE(@table_name varchar(50),@stream_name varchar(100))
	
	as 
	begin
		declare @sql nvarchar(max)
		set @sql = 'CREATE TABLE STUDENT_TEST_RESULT_'+UPPER(@table_name)+'(
					USER_TEST_ID INT FOREIGN KEY REFERENCES USER_TEST_DETAILS(USER_TEST_ID),
					Q_NUMBER SMALLINT,
					QUESTION_ID INT FOREIGN KEY REFERENCES '+UPPER(@stream_name)+'_QUESTION_BANK(QUESTION_ID),
					STUDENT_RESPONSE VARCHAR(10),
					IS_CORRRECT VARCHAR(3),
					CREATED_BY INT,
					CREATED_DATE DATETIME)'
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

			set @stream_name = (select STREAM_name from stream  
								join 
								courses 
								on stream.STREAM_ID = courses.STREAM_ID
								where courses.COURSE_ID = (select max(course_id) from COURSES))
			

			exec create_RESULT_TABLE @table_name ,@stream_name
		end
go















	

	