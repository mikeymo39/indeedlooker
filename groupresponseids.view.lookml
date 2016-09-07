- view: groupresponseids
  sql_table_name: labelerdb.tblgroupresponseids
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: groupresponses_id
    type: number
    sql: ${TABLE}.groupresponses_id

  - dimension: responses_id
    type: number
    sql: ${TABLE}.responses_id

  - measure: count
    type: count
    drill_fields: [id]