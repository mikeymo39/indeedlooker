- view: taskhotkeys
  sql_table_name: labelerdb.tbltaskhotkeys
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: flags_id
    type: number
    sql: ${TABLE}.flags_id

  - dimension: hotkey
    type: string
    sql: ${TABLE}.hotkey

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: [id]