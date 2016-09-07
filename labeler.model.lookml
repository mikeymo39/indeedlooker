- connection: labeler

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: labeler_documents
  label: DerivedDocuments

- explore: documents
  label: documents
  sql_always_where: ${tasks.id} in (1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083,2084,2307,9,1087,1085,1088,1086,1089,1586,1565,2343,2483,2313,214,210,213,211,1562,1563,212) AND ${documents.created_date} > '2015-01-01'
  always_join: [responses,labelerusers,pendingdocuments,responseflags,flags]
  joins:
    - join: tasks
      sql_on: ${documents.tasks_id} = ${tasks.id}
      relationship: many_to_one
      type: inner
    
    - join: pendingdocuments
      sql_on: ${documents.id} = ${pendingdocuments.taskdocuments_id}
      relationship: many_to_one
      type: left_outer
      
    - join: responses
      sql_on: ${documents.id} = ${responses.taskdocuments_id}
      relationship: many_to_one
      type: left_outer
    
    - join: labelerusers
      sql_on: ${responses.labelerusers_id} = ${labelerusers.id}
      relationship: many_to_one
      type: inner
      
    - join: responseflags
      sql_on: ${responses.id} = ${responseflags.responses_id}
      relationship: many_to_one
      type: left_outer
      
    - join: flags
      sql_on: ${responseflags.flags_id} = ${flags.id}
      relationship: many_to_one
      type: left_outer
      
- explore: taskdocuments
  label: Documents Faster
  joins:
    - join: tasks
      sql_on: ${taskdocuments.tasks_id} = ${tasks.id}
      relationship: many_to_one
      type: inner
    
    - join: pendingdocuments
      sql_on: ${taskdocuments.id} = ${pendingdocuments.taskdocuments_id}
      relationship: many_to_one
      type: left_outer
      
    - join: responses
      sql_on: ${taskdocuments.id} = ${responses.taskdocuments_id}
      relationship: many_to_one
      type: left_outer
    
    - join: labelerusers
      sql_on: ${responses.labelerusers_id} = ${labelerusers.id}
      relationship: many_to_one
      type: inner
      
    - join: responseflags
      sql_on: ${responses.id} = ${responseflags.responses_id}
      relationship: many_to_one
      type: left_outer
      
    - join: flags
      sql_on: ${responseflags.flags_id} = ${flags.id}
      relationship: many_to_one
      type: left_outer