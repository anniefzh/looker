- view: tasks
  sql_table_name: public.tasks
  fields:

  - dimension: taskid
    primary_key: true
    type: number
    sql: ${TABLE}.taskid

  - dimension: comments
    type: string
    sql: ${TABLE}.comments

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

  - dimension: hours
    type: number
    sql: ${TABLE}.hours

  - dimension: isactive
    type: string
    sql: ${TABLE}.isactive

  - dimension: isbillable
    type: string
    sql: ${TABLE}.isbillable

  - dimension: isbugfix
    type: string
    sql: ${TABLE}.isbugfix

  - dimension: isnewworkunit
    type: string
    sql: ${TABLE}.isnewworkunit

  - dimension: isoff
    type: string
    sql: ${TABLE}.isoff

  - dimension: istaskapproved
    type: number
    sql: ${TABLE}.istaskapproved

  - dimension: presalessearch
    type: string
    sql: ${TABLE}.presalessearch

  - dimension: projectid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.projectid

  - dimension: sendforapproval
    type: number
    sql: ${TABLE}.sendforapproval

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

  - measure: count
    type: count
    drill_fields: [taskid, timesheets.qb_timesheet_id, projects.projectid, projects.projectname, projects.managername]
 
  - measure: Total_hours
    type: sum
    sql: ${TABLE}.hours
