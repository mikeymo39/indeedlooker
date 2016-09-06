- view: tbltaskgroup
  sql_table_name: labelerdb.tbltaskgroup
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: group_name
    type: string
    sql: ${TABLE}.group_name

  - dimension: priority
    type: number
    sql: ${TABLE}.priority

  - measure: count
    type: count
    drill_fields: [id, group_name]

