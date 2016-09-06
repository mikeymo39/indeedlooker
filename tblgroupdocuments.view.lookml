- view: tblgroupdocuments
  sql_table_name: labelerdb.tblgroupdocuments
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: doc_key
    type: string
    sql: ${TABLE}.doc_key

  - dimension: parent_tasks_id
    type: number
    sql: ${TABLE}.parent_tasks_id

  - dimension: unanswered_count
    type: number
    sql: ${TABLE}.unanswered_count

  - measure: count
    type: count
    drill_fields: [id]

