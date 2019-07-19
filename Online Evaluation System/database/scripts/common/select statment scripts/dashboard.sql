declare @userid int
select	
		COURSES.COURSE_NAME,
		case 
			when exists (select userid, COURSE_ID from STUDENT_COURSE_DETAILS 
			where userid = @userid and course_id = test_details.COURSE_ID )
			then 'yes'
			else 'no'
			end as 'IS_MODULAR',
		TEST_DETAILS.TEST_NO,
		USER_TEST_DETAILS.NO_OF_REGISTRATION,
		USER_TEST_DETAILS.MARKS_RECEIVED,
		case 
			when USER_TEST_DETAILS.MARKS_RECEIVED >=0
			then 'yes'
			ELSE 'no'
			END AS 'ATTEMPT'
	FROM USER_TEST_DETAILS
	JOIN TEST_DETAILS
	ON USER_TEST_DETAILS.TEST_DETAIL_ID = TEST_DETAILS.TEST_DETAIL_ID
		JOIN COURSES
		ON TEST_DETAILS.COURSE_ID = COURSES.COURSE_ID
WHERE USER_TEST_DETAILS.USERID = @userid
