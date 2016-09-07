- view: documents
  sql_table_name: labelerdb.tbltaskdocuments
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id
    
  - dimension: tasks_id
    type: number
    sql: ${TABLE}.tasks_id

  - measure: count
    type: count
    drill_fields: detail*

  - dimension: doc_key
    type: string
    sql: ${TABLE}.doc_key
    html: |
      <a href="https://squall.indeed.com/labeler/label/{{tasks.task_name }}?doc-key={{ value }}" target="_new">{{ value }}</a>

  - dimension: task_name
    type: string
    sql: ${tasks.task_name}

  - dimension_group: created
    type: time
    sql: ${TABLE}.created_at

  - dimension_group: doc_claimed_at
    type: time
    sql: tblpendingdocuments.doc_claimed_at

  - dimension_group: last_modified
    type: time
    sql: tblpendingdocuments.last_modified

  - dimension_group: answered_at
    type: time
    sql: tblresponses.ts

  - dimension: answer
    type: string
    sql: tblresponses.answer

  - dimension: username
    type: string
    sql: tbllabelerusers.username

  - dimension: reason
    type: string
    sql: tblresponses.reason

  - dimension: response_json
    type: string
    sql: tblresponses.response_json

  - dimension: flag
    type: string
    sql: tblflags.flag

  - dimension: sift_trigger
    type: string
    sql: (CASE WHEN ${TABLE}.doc_key LIKE '%SIFTALERT%' THEN 'SIFTALERT' ELSE NULL END)

  - dimension: nowhere_trigger
    type: string
    sql: (CASE WHEN ${TABLE}.doc_key LIKE '%NOWHERE%' THEN 'NOWHERE' ELSE NULL END)
  
  - measure: avg_turn_around_time
    type: average
    sql: TIMESTAMPDIFF(HOUR,${TABLE}.created_at,tblresponses.ts)
    drill_fields: detail*

  sets:
    detail:
      - doc_key
      - task_name
      - created_time
      - doc_claimed_at_time
      - last_modified_time
      - answered_at_time
      - answer
      - username
      - reason
      - response_json
      - flag
      - sift_trigger
      - nowhere_trigger
      - avg_turn_around_time