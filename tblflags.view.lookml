- view: tblflags
  sql_table_name: labelerdb.tblflags
  fields:

  - dimension: id
    primary_key: true
    type: number
    hidden: true
    sql: ${TABLE}.id

  - dimension: flag
    type: string
    hidden: true
    sql: ${TABLE}.flag



