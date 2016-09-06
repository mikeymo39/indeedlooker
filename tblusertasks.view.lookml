- view: tblusertasks
  sql_table_name: labelerdb.tblusertasks
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: access_type
    type: string
    sql: ${TABLE}.access_type

  - dimension: labelerusers_id
    type: number
    sql: ${TABLE}.labelerusers_id

  - dimension: local_priority
    type: number
    sql: ${TABLE}.local_priority

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: [id]

