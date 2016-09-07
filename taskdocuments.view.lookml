- view: taskdocuments
  sql_table_name: labelerdb.tbltaskdocuments
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id
    
  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: deleted
    type: yesno
    sql: ${TABLE}.deleted

  - dimension: doc_key
    type: string
    sql: ${TABLE}.doc_key

  - dimension: document
    type: string
    sql: ${TABLE}.document

  - dimension: tasks_id
#     hidden: true
    type: number
    sql: ${TABLE}.tasks_id
    
  - dimension: is_useful_task
    view_label: tasks
    type: yesno
    sql: |
      ${tasks_id} in 
      (1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,
      1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,
      2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,
      2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,
      2075,2076,2077,2078,2079,2080,2081,2082,2083,2084,2307,9,1087,1085,1088,1086,1089,1586,1565,2343,2483,2313,214,210,213,211,1562,1563,212)

  - measure: count
    type: count
    drill_fields: [id]
    
  - measure: avg_turn_around_time
    type: average
    sql: TIMESTAMPDIFF(HOUR,${created_time},${responses.answered_at_time})
    drill_fields: detail*
    
    