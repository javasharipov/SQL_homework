select * from TestMultipleZero
where A != 0 or  B != 0 or C != 0 or D != 0

select * from section1
Where id %2 = 1

select distinct case when col1 < col2 then col1 else col2 end , case when col1 < col2 then col1 else col1 end from InputTbl

select * from ProductCodes
where Code like '%[_]%'
