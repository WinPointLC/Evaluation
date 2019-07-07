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
			select @max_fbq_id = isNull(max(fbq_id), 0)
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
			declare @max_userid int
			select @max_userid = isNull(max(userid), 0)
			from user_profile
			DBCC CHECKIDENT ('user_profile', RESEED, @max_userid)
		end
GO

ALTER TABLE [dbo].[USER_PROFILE] ENABLE TRIGGER [user_profile_checkident]
GO










