
- view:  labeler_documents
  derived_table:
    sql: |
      SELECT doc.doc_key, 
        task.task_name, 
        doc.created_at, 
        pending.doc_claimed_at, 
        pending.last_modified, 
        resp.ts AS 'answered_at', 
        resp.answer, 
        usr.username, 
        resp.reason, 
        resp.response_json, 
        flags.flag,
        (CASE WHEN doc.doc_key LIKE '%SIFTALERT%' THEN 'SIFTALERT' ELSE NULL END) AS 'sift_trigger', 
        (CASE WHEN doc.doc_key LIKE '%NOWHERE%' THEN 'NOWHERE' ELSE NULL END) AS 'nowhere_trigger'
      FROM tbltaskdocuments doc
      JOIN tbltasks task ON task.id = doc.tasks_id
      LEFT JOIN tblpendingdocuments pending ON pending.taskdocuments_id = doc.id
      LEFT JOIN tblresponses resp ON resp.taskdocuments_id = doc.id
      LEFT JOIN tblresponseflags respflags ON respflags.responses_id = resp.id
      LEFT JOIN tblflags flags ON flags.id = respflags.flags_id
      JOIN tbllabelerusers usr ON usr.id = resp.labelerusers_id
      WHERE doc.created_at > '2015-01-01'
      AND task.id in (1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034,2035,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066,2067,2068,2069,2070,2071,2072,2073,2074,2075,2076,2077,2078,2079,2080,2081,2082,2083,2084,2307,9,1087,1085,1088,1086,1089,1586,1565,2343,2483,2313,214,210,213,211,1562,1563,212);
    sql_trigger_value: SELECT CURDATE()
    indexes: [doc_key, created_at, answered_at, task_name, username]
  fields:
  - measure: count
    type: count
    drill_fields: detail*
  
  - measure: avg_turn_around_time
    type: average
    sql: TIMESTAMPDIFF(HOUR,${TABLE}.created_at,${TABLE}.answered_at)
    drill_fields: detail*

  - dimension: doc_key
    type: string
    sql: ${TABLE}.doc_key
    html: |
      <a href="https://squall.indeed.com/labeler/label/{{ task_name }}?doc-key={{ value }}" target="_new">{{ value }}</a>
      
  - dimension: task_name
    type: string
    sql: ${TABLE}.task_name

  - dimension_group: created_at
    type: time
    sql: ${TABLE}.created_at

  - dimension_group: doc_claimed_at
    type: time
    sql: ${TABLE}.doc_claimed_at

  - dimension_group: last_modified
    type: time
    sql: ${TABLE}.last_modified

  - dimension_group: answered_at
    type: time
    sql: ${TABLE}.answered_at

  - dimension: answer
    type: string
    sql: ${TABLE}.answer

  - dimension: username
    type: string
    sql: ${TABLE}.username

  - dimension: reason
    type: string
    sql: ${TABLE}.reason

  - dimension: response_json
    type: string
    sql: ${TABLE}.response_json

  - dimension: flag
    type: string
    sql: ${TABLE}.flag

  - dimension: sift_trigger
    type: string
    sql: ${TABLE}.sift_trigger

  - dimension: nowhere_trigger
    type: string
    sql: ${TABLE}.nowhere_trigger

  sets:
    detail:
      - doc_key
      - task_name
      - created_at_time
      - doc_claimed_at_time
      - last_modified_time
      - answered_at_time
      - answer
      - username
      - reason
      - response_json
      - flag
      - sift_trigger
      - nowhere_trigger