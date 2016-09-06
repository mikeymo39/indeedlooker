- view: tblpendingregrades
  sql_table_name: labelerdb.tblpendingregrades
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: doc_claimed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.doc_claimed_at

  - dimension_group: last_modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_modified

  - dimension: responses_id
    type: number
    sql: ${TABLE}.responses_id

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: [id]

