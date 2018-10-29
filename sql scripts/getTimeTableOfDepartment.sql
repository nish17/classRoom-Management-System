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
