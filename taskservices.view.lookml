- view: taskservices
  sql_table_name: labelerdb.tbltaskservices
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: approved
    type: yesno
    sql: ${TABLE}.approved

  - dimension: service_url
    type: string
    sql: ${TABLE}.service_url

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: [id]