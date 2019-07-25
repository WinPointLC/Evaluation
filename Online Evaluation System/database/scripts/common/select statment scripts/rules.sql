USE OES_TESTING
GO

declare @test_detail_id int
set @test_detail_id = 2

select  RULE_DESCRIPTION from TEST_DETAILS as TD
outer apply string_split(TD.[RULES], ',') s
JOIN dbo.RULES as R
on R.RULE_ID = s.value
where TEST_DETAIL_ID = @test_detail_id

