select question from TECHNICAL_QUESTION_BANK
go

select 
	question_id, 
	question, 
	OPTION_1, 
	OPTION_2, 
	OPTION_3, 
	OPTION_4,  
	marks,
	td.TOPIC_ID
from TECHNICAL_QUESTION_BANK tqb JOIN TEST_DIFFICULTY td
on tqb.TOPIC_ID = td.TOPIC_ID

