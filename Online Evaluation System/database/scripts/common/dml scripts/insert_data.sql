USE OES_TESTING
GO

insert into CLIENT_CATEGORY(client_category_name) values('student')
insert into CLIENT_CATEGORY(client_category_name) values('working professional')
go

insert into COURSE_TYPE(course_type_name) values('Modular')
insert into COURSE_TYPE(course_type_name) values('TBC')
insert into COURSE_TYPE(course_type_name) values('CRT')
go

insert into stream(STREAM_NAME) values('Technical')
insert into stream(STREAM_NAME) values('Soft Skills')
insert into stream(STREAM_NAME) values('General Aptitude')
go

insert into DIFFICULTY_LEVEL(DIFFICULTY_LEVEL_NAME) values('easy')
insert into DIFFICULTY_LEVEL(DIFFICULTY_LEVEL_NAME) values('medium')
insert into DIFFICULTY_LEVEL(DIFFICULTY_LEVEL_NAME) values('hard')
go

insert into EMPLOYEE_CATEGORY(EMPLOYEE_CATEGORY_NAME) values('admin')
insert into EMPLOYEE_CATEGORY(EMPLOYEE_CATEGORY_NAME) values('faculty')
go

insert into EVALUATION_TYPE(EVALUATION_TYPE_NAME, OFFLINE_CHECK) values('MCQ', 'yes')
insert into EVALUATION_TYPE(EVALUATION_TYPE_NAME, OFFLINE_CHECK) values('Project', 'yes')
insert into EVALUATION_TYPE(EVALUATION_TYPE_NAME, OFFLINE_CHECK) values('Coding', 'yes')
insert into EVALUATION_TYPE(EVALUATION_TYPE_NAME, OFFLINE_CHECK) values('Descriptive', 'yes')
go

insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('A+', 91, 100)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('B', 81, 90)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('B+', 71, 80)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('C+', 61, 70)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('C', 50, 60)
insert into GRADING_SYSTEM(GRADE_ID, LOWER_LIMIT, HIGHER_LIMIT) values('F', 0, 49)
go
insert into USER_CATEGORY(USER_CATEGORY_NAME) values('client')
insert into USER_CATEGORY(USER_CATEGORY_NAME) values('employee')
go
insert into TOOL_TIPS(COURSE_TYPE_ID, TOOL_TIP_DESCRIPTION) values(1, 'Modular')
insert into TOOL_TIPS(COURSE_TYPE_ID, TOOL_TIP_DESCRIPTION) values(2, 'TBC')
insert into TOOL_TIPS(COURSE_TYPE_ID, TOOL_TIP_DESCRIPTION) values(3, 'CRT')
go
insert into rules(RULE_DESCRIPTION) values('Complete the test within time limit.')
insert into rules(RULE_DESCRIPTION) values('Do not change tabs.')
insert into rules(RULE_DESCRIPTION) values('Do not copy.')
insert into rules(RULE_DESCRIPTION) values('Follow the color coding given below:')
insert into rules(RULE_DESCRIPTION) values('Read the marking scheme carefully:')
go
insert into SECURITY_QUESTIONS(SECURITY_QUESTION) values('What is your pet''s name?')
insert into SECURITY_QUESTIONS(SECURITY_QUESTION) values('What is your mother''s name?')
go
insert into user_profile(FIRST_NAME, LAST_NAME, EMAIL_ID, MOBILE_NUMBER, ADDRESS, 
birthdate, college, degree, branch, YEAR_OF_GRADUATION, password, SECURITY_QUESTION_ID, SECURITY_ANSWER, USER_CATEGORY_ID) 
values('dhara', 'advani', 'dharaadvani@gmail.com', '9130983338', 'pune camp', '15-March-1999', 'VIT Pune', 'B.Tech',
'comp', '20-May-2021', '72951835', 1, 'bubbles', 1)
insert into user_profile(FIRST_NAME, LAST_NAME, EMAIL_ID, MOBILE_NUMBER, ADDRESS, 
birthdate, college, degree, branch, YEAR_OF_GRADUATION, password, SECURITY_QUESTION_ID, SECURITY_ANSWER, USER_CATEGORY_ID) 
values('rishabh', 'chaudhary', 'rishabh.rpc@gmail.com', '8847799087', 'nibm', '27-May-1999', 'VIT Pune', 'B.Tech',
'IT', '20-May-2021', 'rishpro27', 1, 'tuffy', 1)
insert into user_profile(FIRST_NAME, LAST_NAME, EMAIL_ID, MOBILE_NUMBER, ADDRESS, 
birthdate, college, degree, branch, YEAR_OF_GRADUATION, password, SECURITY_QUESTION_ID, SECURITY_ANSWER, USER_CATEGORY_ID) 
values('anjali', 'parkhi', 'anjaliparkhi@gmail.com', '9552501273', 'saharkar nagar', '9-August-1973', 'VIT Pune', 'B.Tech',
'elex', '20-May-1985', '12345', 2, 'mom', 2)
go

insert into courses(COURSE_NAME, duration, fees, STREAM_ID, COURSE_TYPE_ID, COURSEWARE_EXIST, EVALUATION_TYPE_ID, TOTAL_TESTS)
values('C', 60, 4000, 1, 1, 'yes', 1, 2)
insert into courses(COURSE_NAME, duration, fees, STREAM_ID, COURSE_TYPE_ID, COURSEWARE_EXIST, EVALUATION_TYPE_ID, TOTAL_TESTS)
values('C++', 60, 4000, 1, 1, 'yes', 2, 2)
insert into courses(COURSE_NAME, duration, fees, STREAM_ID, COURSE_TYPE_ID, COURSEWARE_EXIST, EVALUATION_TYPE_ID, TOTAL_TESTS)
values('Java', 80, 12000, 1, 1, 'yes', 2, 3)
insert into courses(COURSE_NAME, STREAM_ID, COURSE_TYPE_ID) values('English Language Skills', 2, 1)
insert into courses(COURSE_NAME, STREAM_ID, COURSE_TYPE_ID) values('Writing Skills', 2, 1)
insert into courses(COURSE_NAME, STREAM_ID, COURSE_TYPE_ID) values('Oral Communication', 2, 1)
insert into courses(COURSE_NAME, STREAM_ID, COURSE_TYPE_ID) values('Logical Reasoning', 3, 3)
insert into courses(COURSE_NAME, STREAM_ID, COURSE_TYPE_ID) values('Verbal Reasoning', 3, 3)

go

insert into BATCH_DETAILS(course_id, faculty, BEGIN_DATE, END_DATE) values(1, 3,  '1-Jan-2019', '31-Jan-2019')
insert into BATCH_DETAILS(course_id, faculty, BEGIN_DATE, END_DATE) values(2,3, '20-oct-2018','28-dec-2018')
insert into BATCH_DETAILS(course_id, faculty, BEGIN_DATE) values(3,3,'8-jul-2019')
go

insert into topics(course_id, topic_name, MINIMUM_NUMBER_OF_QUESTIONS_FOR_TEST) values(1, 'operators', 2)
insert into topics(course_id, topic_name, MINIMUM_NUMBER_OF_QUESTIONS_FOR_TEST) values(1, 'functions', 5)
insert into topics(course_id, topic_name, MINIMUM_NUMBER_OF_QUESTIONS_FOR_TEST) values(1, 'pointers', 8)
insert into topics(course_id, topic_name, MINIMUM_NUMBER_OF_QUESTIONS_FOR_TEST) values(1, 'structures', 4)
insert into topics(course_id, topic_name, MINIMUM_NUMBER_OF_QUESTIONS_FOR_TEST) values(1, 'files', 5)
go

insert into user_student(USER_ID, parent_name, parent_mobile, CLIENT_CATEGORY_ID) values(1, 'haresh advani', '9881711465', 1)
insert into user_student(USER_ID, parent_name, parent_mobile, CLIENT_CATEGORY_ID) values(2, 'jignyasa chaudhary', '9403149112', 1)
go

insert into STUDENT_COURSE_DETAILS(USER_ID,COURSE_ID,BATCH_ID,FEEDBACK_GIVEN,CERTIFICATE_GIVEN,COURSE_AGGR,GRADE_ID,FEE_STATUS) values(1,1,1,'YES','YES',21,'D','PAID')
insert into STUDENT_COURSE_DETAILS(USER_ID,COURSE_ID,BATCH_ID,FEE_STATUS) values(1,2,2,'PAID')
insert into STUDENT_COURSE_DETAILS(USER_ID,COURSE_ID,BATCH_ID,FEE_STATUS) values(2,2,2,'PAID')



insert into TEST_DETAILS(COURSE_ID, TEST_NUMBER, TOTAL_QUESTIONS, EVALUATION_TYPE_ID)
values(1, 1, 30, 1)
insert into TEST_DETAILS(COURSE_ID, TEST_NUMBER, TOTAL_QUESTIONS, EVALUATION_TYPE_ID)
values(2, 1, 30, 1)
go

insert into TEST_DIFFICULTY
(TEST_DETAIL_ID, TOPIC_ID, DIFFICULTY_LEVEL_ID, NUMBER_OF_QUESTIONS)
values(1, 1, 1, 2) 
go


insert into USER_TEST_DETAILS
(USER_ID, TEST_DETAIL_ID, MARKS_RECEIVED, NUMBER_OF_REGISTRATION, FEE_STATUS)
values(1, 1, 21, 1, 'PAID')
insert into USER_TEST_DETAILS
(USER_ID, TEST_DETAIL_ID, MARKS_RECEIVED, NUMBER_OF_REGISTRATION, FEE_STATUS)
values(2, 1, 20, 1, 'PAID')
go
insert into USER_TEST_DETAILS
(USER_ID, TEST_DETAIL_ID, NUMBER_OF_REGISTRATION, FEE_STATUS)
values(2, 1, 2, 'PAID')
go



