CREATE FUNCTION `new_function` (ClassNo varchar(25),Type varchar(25),Days varchar(25),ClassAt09 varchar(25),ClassAt10 varchar(25),ClassAt11 varchar(25),ClassAt12 varchar(25),ClassAt13 varchar(25),ClassAt14 varchar(25),ClassAt15 varchar(25),ClassAt16 varchar(25),ClassAt17 varchar(25))
RETURNS varchar(25)
BEGIN
declare a varchar(25);
set a = 'ICT16';
SELECT ClassNo,Type,Days,
  CASE WHEN ClassAt09 IN (a) THEN ClassAt09
  ELSE ''
  END as 'ClassAt09',
  CASE WHEN ClassAt10 IN  (a) THEN ClassAt10
  ELSE ''
  END as 'ClassAt10',
  CASE WHEN ClassAt11 IN  (a) THEN ClassAt11
  ELSE ''
  END as 'ClassAt11',
  CASE WHEN ClassAt12 IN  (a) THEN ClassAt12
  ELSE ''
  END as 'ClassAt12',
  CASE WHEN ClassAt13 IN  (a) THEN ClassAt13
  ELSE ''
  END as 'ClassAt13',
  CASE WHEN ClassAt14 IN  (a) THEN ClassAt14
  ELSE ''
  END as 'ClassAt14',
  CASE WHEN ClassAt15 IN  (a) THEN ClassAt15
  ELSE ''
  END as 'ClassAt15',
  CASE WHEN ClassAt16 IN  (a) THEN ClassAt16
  ELSE ''
  END as 'ClassAt16',
  CASE WHEN ClassAt17 IN  (a) THEN ClassAt17
  ELSE ''
  END as 'ClassAt17'
  from classTable
  where ClassAt09=a or ClassAt10=a or ClassAt11=a or ClassAt12=a or ClassAt13=a or ClassAt14=a or ClassAt15=a or ClassAt16=a or ClassAt17=a;

RETURN 1;
END
