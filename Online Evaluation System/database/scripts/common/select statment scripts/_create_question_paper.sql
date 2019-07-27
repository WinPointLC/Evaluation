use oes_testing
go

declare @test_detail_id int
set @test_detail_id = 1


select 
		top (select sum(NUMBER_OF_QUESTIONS) from TEST_DIFFICULTY where TEST_DETAIL_ID = 1) QUESTION_ID,
		QUESTION, 
		OPTION_1, 
		OPTION_2, 
		OPTION_3, 
		OPTION_4, 
		MARKS,
		COURSE_NAME,
		TOPIC_NAME,
		DIFFICULTY_LEVEL_NAME
	from TECHNICAL_QUESTION_BANK tqb JOIN COURSES crs
	ON tqb.COURSE_ID = crs.COURSE_ID
		JOIN TOPICS tp
		ON tqb.TOPIC_ID = tp.TOPIC_ID
			JOIN DIFFICULTY_LEVEL dl
			ON tqb.DIFFICULTY_LEVEL_ID = dl.DIFFICULTY_LEVEL_ID
				JOIN TEST_DIFFICULTY td
				ON tqb.topic_id = td.topic_id

order by newid()