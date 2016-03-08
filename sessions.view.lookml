- view: sessions
  sql_table_name: public.sessions
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: createdat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createdat

  - dimension: ip
    type: string
    sql: ${TABLE}.ip

  - dimension: sessionkey
    type: string
    sql: ${TABLE}.sessionkey

  - measure: count
    type: count
    drill_fields: [id]

