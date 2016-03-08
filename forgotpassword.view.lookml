- view: forgotpassword
  sql_table_name: public.forgotpassword
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension: isactive
    type: string
    sql: ${TABLE}.isactive

  - dimension: key
    type: string
    sql: ${TABLE}.key

  - dimension_group: updateddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updateddate

  - measure: count
    type: count
    drill_fields: [id]

