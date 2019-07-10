USE OES_TESTING
GO

insert into CLIENT_CATEGORY(client_category_name) values('student')
insert into CLIENT_CATEGORY(client_category_name) values('working_professional')
go

insert into COURSE_TYPE(course_type_name) values('modular')
insert into COURSE_TYPE(course_type_name) values('tbc')
insert into COURSE_TYPE(course_type_name) values('crt')
go

insert into stream(STREAM_NAME) values('technical')
insert into stream(STREAM_NAME) values('soft_skills')
insert into stream(STREAM_NAME) values('general_aptitude')
go

insert into DIFFICULTY_LEVEL(DIFFICULTY_LEVEL_NAME) values('easy')
insert into DIFFICULTY_LEVEL(DIFFICULTY_LEVEL_NAME) values('medium')
insert into DIFFICULTY_LEVEL(DIFFICULTY_LEVEL_NAME) values('hard')
go

insert into EMPLOYEE_CATEGORY(EMPLOYEE_CATEGORY_NAME) values('admin')
insert into EMPLOYEE_CATEGORY(EMPLOYEE_CATEGORY_NAME) values('faculty')
go

insert into EVALUATION_TYPE(EVALUATION_TYPE_NAME, OFFLINE_CHECK) values('mcq', 'yes')
insert into EVALUATION_TYPE(EVALUATION_TYPE_NAME, OFFLINE_CHECK) values('project', 'yes')
insert into EVALUATION_TYPE(EVALUATION_TYPE_NAME, OFFLINE_CHECK) values('coding + project', 'yes')
go

insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('a', 91, 100)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('b', 81, 90)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('c', 71, 80)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('d', 61, 70)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('e', 50, 60)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('f', 0, 49)
go
insert into USER_CATEGORY(USER_CATEGORY_NAME) values('client')
insert into USER_CATEGORY(USER_CATEGORY_NAME) values('employee')
go
insert into TOOL_TIPS(COURSE_TYPE_ID, TOOL_TIP_DESCRIPTION) values(1, 'modular')
insert into TOOL_TIPS(COURSE_TYPE_ID, TOOL_TIP_DESCRIPTION) values(2, 'tbc')
insert into TOOL_TIPS(COURSE_TYPE_ID, TOOL_TIP_DESCRIPTION) values(3, 'crt')
go
insert into rules(RULE_DESCRIPTION) values('complete the test within the time limit')
insert into rules(RULE_DESCRIPTION) values('do not change tabs')
insert into rules(RULE_DESCRIPTION) values('do not copy')
go
insert into SECURITY_QUESTIONS(SECURITY_QUESTION) values('what is your first pet''s name')
insert into SECURITY_QUESTIONS(SECURITY_QUESTION) values('what is your mother''s name')
go
insert into user_profile(FIRST_NAME, LAST_NAME, EMAIL, MOBILE_NUMBER, ADDRESS, 
birthdate, college, degree, branch, YEAR_OF_GRADUATION, password, SECURITY_QUESTION_ID, SECURITY_ANSWER, USER_CATEGORY_ID) 
values('dhara', 'advani', 'dharaadvani@gmail.com', '9130983338', 'pune camp', '15-March-1999', 'VIT Pune', 'B.Tech',
'comp', '20-May-2021', '72951835', 1, 'bubbles', 1)
insert into user_profile(FIRST_NAME, LAST_NAME, EMAIL, MOBILE_NUMBER, ADDRESS, 
birthdate, college, degree, branch, YEAR_OF_GRADUATION, password, SECURITY_QUESTION_ID, SECURITY_ANSWER, USER_CATEGORY_ID) 
values('rishabh', 'chaudhary', 'rishabh.rpc@gmail.com', '8847799087', 'nibm', '27-May-1999', 'VIT Pune', 'B.Tech',
'IT', '20-May-2021', 'rishpro27', 1, 'tuffy', 1)
insert into user_profile(FIRST_NAME, LAST_NAME, EMAIL, MOBILE_NUMBER, ADDRESS, 
birthdate, college, degree, branch, YEAR_OF_GRADUATION, password, SECURITY_QUESTION_ID, SECURITY_ANSWER, USER_CATEGORY_ID) 
values('anjali', 'parkhi', 'anjaliparkhi@gmail.com', '9552501273', 'saharkar nagar', '9-August-1973', 'VIT Pune', 'B.Tech',
'elex', '20-May-1985', '12345', 2, 'mom', 2)
go

insert into courses(COURSE_NAME, duration, fees, STREAM_ID, COURSE_TYPE_ID, COURSEWARE_EXIST, EVALUATION_TYPE_ID, TOTAL_TESTS)
values('c', 60, 4000, 1, 1, 'yes', 1, 2)
insert into courses(COURSE_NAME, duration, fees, STREAM_ID, COURSE_TYPE_ID, COURSEWARE_EXIST, EVALUATION_TYPE_ID, TOTAL_TESTS)
values('cpp', 60, 4000, 1, 1, 'yes', 2, 2)
insert into courses(COURSE_NAME, duration, fees, STREAM_ID, COURSE_TYPE_ID, COURSEWARE_EXIST, EVALUATION_TYPE_ID, TOTAL_TESTS)
values('java', 80, 12000, 1, 1, 'yes', 2, 3)
go

insert into topics(course_id, topic_name, MIN_NO_OF_QUESTIONS_FOR_TEST) values(1, 'operators', 2)
insert into topics(course_id, topic_name, MIN_NO_OF_QUESTIONS_FOR_TEST) values(1, 'functions', 5)
insert into topics(course_id, topic_name, MIN_NO_OF_QUESTIONS_FOR_TEST) values(1, 'pointers', 8)
insert into topics(course_id, topic_name, MIN_NO_OF_QUESTIONS_FOR_TEST) values(1, 'structures', 4)
insert into topics(course_id, topic_name, MIN_NO_OF_QUESTIONS_FOR_TEST) values(1, 'files', 5)
go

insert into user_student(userid, parent_name, parent_mob, CLIENT_CATEGORY_ID) values(1, 'haresh advani', '9881711465', 1)
insert into user_student(userid, parent_name, parent_mob, CLIENT_CATEGORY_ID) values(2, 'jignyasa chaudhary', '9403149112', 1)
go

insert into USER_TEST_DETAILS
(userid, TEST_DETAIL_ID, MARKS_RECEIVED, NO_OF_REGISTRATION, FEE_STATUS)
values(1, 1, 21, 1, 'PAID')
insert into USER_TEST_DETAILS
(userid, TEST_DETAIL_ID, MARKS_RECEIVED, NO_OF_REGISTRATION, FEE_STATUS)
values(2, 1, 20, 1, 'PAID')
go

insert into USER_TEST_DETAILS
(userid, TEST_DETAIL_ID, NO_OF_REGISTRATION, FEE_STATUS)
values(2, 1, 2, 'PAID')
go

insert into TEST_DIFFICULTY
(TEST_DETAIL_ID, TOPIC_ID, DIFFICULTY_LEVEL_ID, NO_OF_QUESTIONS)
values(1, 1, 1, 2) 
go

insert into TEST_DETAILS(COURSE_ID, TEST_NO, TOTAL_QUESTIONS, EVALUATION_TYPE_ID)
values(2, 1, 30, 1)
go

