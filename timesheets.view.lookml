- view: timesheets
  sql_table_name: public.timesheets
  fields:

  - dimension: qb_timesheet_id
    primary_key: true
    type: string
    sql: ${TABLE}.qb_timesheet_id

  - dimension: approvedby
    type: number
    sql: ${TABLE}.approvedby

  - dimension_group: approveddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.approveddate

  - dimension: approvedtasks
    type: string
    sql: ${TABLE}.approvedtasks

  - dimension: approvernote
    type: string
    sql: ${TABLE}.approvernote

  - dimension: createdby
    type: number
    sql: ${TABLE}.createdby

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension: isactive
    type: string
    sql: ${TABLE}.isactive

  - dimension: isapproved
    type: string
    sql: ${TABLE}.isapproved

  - dimension: isclientapproved
    type: string
    sql: ${TABLE}.isclientapproved

  - dimension: readyforapproval
    type: number
    sql: ${TABLE}.readyforapproval

  - dimension_group: startdate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.startdate

  - dimension: timesheetid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.timesheetid

  - dimension: updatedby
    type: number
    sql: ${TABLE}.updatedby

  - dimension_group: updateddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updateddate

  - dimension: userid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.userid

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - qb_timesheet_id
    - timesheets.qb_timesheet_id
    - users.userid
    - users.firstname
    - users.lastname
    - users.aliasname
    - tasks.count
    - timesheets.count

