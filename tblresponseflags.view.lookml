- view: tblresponseflags
  sql_table_name: labelerdb.tblresponseflags
  fields:

  - dimension: id
    primary_key: true
    type: number
    hidden: true
    sql: ${TABLE}.id

  - dimension: flags_id
    type: number
    hidden: true
    sql: ${TABLE}.flags_id

  - dimension: responses_id
    type: number
    hidden: true
    sql: ${TABLE}.responses_id
