- view: tbltaskflaggroup
  sql_table_name: labelerdb.tbltaskflaggroup
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: group_name
    type: string
    sql: ${TABLE}.group_name

  - dimension: group_type
    type: string
    sql: ${TABLE}.group_type

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: [id, group_name]

