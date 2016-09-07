- view: taskgroupassociation
  sql_table_name: labelerdb.tbltaskgroupassociation
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: group_id
    type: number
    sql: ${TABLE}.group_id

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: [id]