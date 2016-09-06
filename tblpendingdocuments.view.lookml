- view: tblpendingdocuments
  sql_table_name: labelerdb.tblpendingdocuments
  fields:

  - dimension: id
    primary_key: true
    type: number
    hidden: true
    sql: ${TABLE}.id

  - dimension_group: doc_claimed_at
    type: time
    hidden: true
    timeframes: [time, date, week, month]
    sql: ${TABLE}.doc_claimed_at

  - dimension_group: last_modified
    type: time
    hidden: true
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_modified

  - dimension: taskdocuments_id
    type: number
    hidden: true
    sql: ${TABLE}.taskdocuments_id

  - dimension: tasks_id
    type: number
    hidden: true
    sql: ${TABLE}.tasks_id

