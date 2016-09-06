- view: tbltasks
  sql_table_name: labelerdb.tbltasks
  fields:

  - dimension: id
    primary_key: true
    type: number
    hidden: true
    sql: ${TABLE}.id

  - dimension: task_name
    type: string
    hidden: true
    sql: ${TABLE}.task_name
