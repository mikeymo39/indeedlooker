- view: tblresponses
  sql_table_name: labelerdb.tblresponses
  fields:

  - dimension: id
    primary_key: true
    type: number
    hidden: true
    sql: ${TABLE}.id

  - dimension: answer
    type: string
    hidden: true
    sql: ${TABLE}.answer

  - dimension: dynamic_content_snapshot
    type: string
    hidden: true
    sql: ${TABLE}.dynamic_content_snapshot

  - dimension: labelerusers_id
    type: number
    hidden: true
    sql: ${TABLE}.labelerusers_id

  - dimension: reason
    type: string
    hidden: true
    sql: ${TABLE}.reason

  - dimension: response_json
    type: string
    hidden: true
    sql: ${TABLE}.response_json

  - dimension: taskdocuments_id
    type: number
    hidden: true
    sql: ${TABLE}.taskdocuments_id

  - dimension: tasks_id
    type: number
    hidden: true
    sql: ${TABLE}.tasks_id

  - dimension_group: answered_at
    type: time
    hidden: true
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ts


