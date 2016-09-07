- view: finalresponses
  sql_table_name: labelerdb.tblfinalresponses
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: last_response_id
    type: number
    sql: ${TABLE}.last_response_id

  - dimension: taskdocuments_id
    type: number
    sql: ${TABLE}.taskdocuments_id

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: [id]