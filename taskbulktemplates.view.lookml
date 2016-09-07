- view: taskbulktemplates
  sql_table_name: labelerdb.tbltaskbulktemplates
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: css
    type: string
    sql: ${TABLE}.css

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - dimension: template
    type: string
    sql: ${TABLE}.template

  - dimension: template_name
    type: string
    sql: ${TABLE}.template_name

  - measure: count
    type: count
    drill_fields: [id, template_name]