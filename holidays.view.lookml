- view: holidays
  sql_table_name: public.holidays
  fields:

  - dimension: holidayid
    primary_key: true
    type: number
    sql: ${TABLE}.holidayid

  - dimension: createdby
    type: number
    sql: ${TABLE}.createdby

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.date

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: holidayname
    type: string
    sql: ${TABLE}.holidayname

  - dimension: isactive
    type: string
    sql: ${TABLE}.isactive

  - dimension: isusholiday
    type: number
    sql: ${TABLE}.isusholiday

  - dimension: updatedby
    type: number
    sql: ${TABLE}.updatedby

  - dimension_group: updateddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updateddate

  - measure: count
    type: count
    drill_fields: [holidayid, holidayname]

