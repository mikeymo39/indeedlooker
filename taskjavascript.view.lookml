- view: taskjavascript
  sql_table_name: labelerdb.tbltaskjavascript
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: filename
    type: string
    sql: ${TABLE}.filename

  - dimension: javascript
    type: string
    sql: ${TABLE}.javascript

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: [id, filename]