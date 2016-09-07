- view: taskflags
  sql_table_name: labelerdb.tbltaskflags
  fields:

  - dimension: disabled
    type: yesno
    sql: ${TABLE}.disabled

  - dimension: flags_group_id
    type: number
    sql: ${TABLE}.flags_group_id

  - dimension: flags_id
    type: number
    sql: ${TABLE}.flags_id

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_updated_at

  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: []