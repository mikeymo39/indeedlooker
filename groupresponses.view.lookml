- view: groupresponses
  sql_table_name: labelerdb.tblgroupresponses
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: groupdocuments_id
    type: number
    sql: ${TABLE}.groupdocuments_id

  - dimension: parent_tasks_id
    type: number
    sql: ${TABLE}.parent_tasks_id

  - measure: count
    type: count
    drill_fields: [id]