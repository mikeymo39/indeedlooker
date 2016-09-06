- view: tbllabelerusers
  sql_table_name: labelerdb.tbllabelerusers
  fields:

  - dimension: id
    primary_key: true
    type: number
    hidden: true
    sql: ${TABLE}.id

  - dimension: access
    type: string
    hidden: true
    sql: ${TABLE}.access

  - dimension: api_key
    type: string
    hidden: true
    sql: ${TABLE}.api_key

  - dimension: username
    type: string
    hidden: true
    sql: ${TABLE}.username
