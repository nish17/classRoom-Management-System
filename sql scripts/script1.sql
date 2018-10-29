-- use newClassRoom;
-- select * from  classTable 
-- where ClassNo="E101" and (Days="Wednesday" or Days="Friday") 
-- ----------------------------------
-- Find free classes in E Block on wednesday at 9am
-- select classTable.ClassNo,Days,ClassAt09,BLockNo 
-- from classTable Natural join classStructure 
-- where ClassAt09="$FREE$" and BlockNo="E";
-- -----------------------------------
-- 
-- Find free Labs in E Block on wednesday and friday at 9-11 am
-- select BlockNo,Days,LabTable.LabName,LabStruct.Floor,LabAt09,LabAt10
-- from LabTable Natural join LabStruct
-- where (Days="Wednesday" or Days="Friday") and (LabAt09="$FREE$" and LabAt10="$FREE$" and BlockNo="E");
-- 
-- Find total number of students and Branches in each school
-- select  sum(No_of_Students),BlockNo,SchoolName,NoOfBranches
-- from Departments natural join School   	
-- group by SchoolName;


-- select ClassNo,ClassAt09,ClassAt10 from classTable where ClassAt09="$FREE$" 
-- union
-- select ClassNo,ClassAt10 from classTable where ClassAt10="$FREE$"
-- union 
-- select ClassNo,ClassAt12 from classTable where ClassAt12="$FREE$" 

-- use newClassRoom;
-- create VIEW timetable as 
-- select REPLACE('ICT16','ICT16','') classNo,Type,Days,ClassAt09,ClassAt10,ClassAt11 from classTable 
-- select ClassNo,ClassAt09, ClassAt10, ClassAt11, 
-- replace (ClassAt09,'ICT17' , 'abcd') from classTable
-- drop view timetable;
-- where ClassAt09="ICT16" or ClassAt10="ICT16" or ClassAt11="ICT16" or ClassAt12="ICT16" or ClassAt13="ICT16" or ClassAt14="ICT16" or ClassAt15="ICT16" or ClassAt16="ICT16" or ClassAt17="ICT16";
-- select * from classTable; 
use newClassRoom;
-- SELECT ClassNo,Type,Days,
--   CASE WHEN ClassAt09 IN ('$FREE$', 'ICT16') THEN ClassAt09
--   ELSE ''
--   END as 'ClassAt09',
--   CASE WHEN ClassAt10 IN  ('$FREE$', 'ICT16') THEN ClassAt10
--   ELSE ''
--   END as 'ClassAt10',
--   CASE WHEN ClassAt11 IN  ('$FREE$', 'ICT16') THEN ClassAt11
--   ELSE ''
--   END as 'ClassAt11',
--   CASE WHEN ClassAt12 IN  ('$FREE$', 'ICT16') THEN ClassAt12
--   ELSE ''
--   END as 'ClassAt12',
--   CASE WHEN ClassAt13 IN  ('$FREE$', 'ICT16') THEN ClassAt13
--   ELSE ''
--   END as 'ClassAt13',
--   CASE WHEN ClassAt14 IN  ('$FREE$', 'ICT16') THEN ClassAt14
--   ELSE ''
--   END as 'ClassAt14',
--   CASE WHEN ClassAt15 IN  ('$FREE$', 'ICT16') THEN ClassAt15
--   ELSE ''
--   END as 'ClassAt15',
--   CASE WHEN ClassAt16 IN  ('$FREE$', 'ICT16') THEN ClassAt16
--   ELSE ''
--   END as 'ClassAt16',
--   CASE WHEN ClassAt17 IN  ('$FREE$', 'ICT16') THEN ClassAt17
--   ELSE ''
--   END as 'ClassAt17'
--   from classTable
--   where ClassAt09="ICT16" or ClassAt10="ICT16" or ClassAt11="ICT16" or ClassAt12="ICT16" or ClassAt13="ICT16" or ClassAt14="ICT16" or ClassAt15="ICT16" or ClassAt16="ICT16" or ClassAt17="ICT16";

SELECT ClassNo,Type,Days,
  CASE WHEN ClassAt09 IN ('ICT16') THEN ClassAt09
  ELSE ''
  END as 'ClassAt09',
  CASE WHEN ClassAt10 IN  ('ICT16') THEN ClassAt10
  ELSE ''
  END as 'ClassAt10',
  CASE WHEN ClassAt11 IN  ('ICT16') THEN ClassAt11
  ELSE ''
  END as 'ClassAt11',
  CASE WHEN ClassAt12 IN  ('ICT16') THEN ClassAt12
  ELSE ''
  END as 'ClassAt12',
  CASE WHEN ClassAt13 IN  ('ICT16') THEN ClassAt13
  ELSE ''
  END as 'ClassAt13',
  CASE WHEN ClassAt14 IN  ('ICT16') THEN ClassAt14
  ELSE ''
  END as 'ClassAt14',
  CASE WHEN ClassAt15 IN  ('ICT16') THEN ClassAt15
  ELSE ''
  END as 'ClassAt15',
  CASE WHEN ClassAt16 IN  ('ICT16') THEN ClassAt16
  ELSE ''
  END as 'ClassAt16',
  CASE WHEN ClassAt17 IN  ('ICT16') THEN ClassAt17
  ELSE ''
  END as 'ClassAt17'
  from classTable
  where ClassAt09="ICT16" or ClassAt10="ICT16" or ClassAt11="ICT16" or ClassAt12="ICT16" or ClassAt13="ICT16" or ClassAt14="ICT16" or ClassAt15="ICT16" or ClassAt16="ICT16" or ClassAt17="ICT16";