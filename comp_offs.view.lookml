- view: comp_offs
  sql_table_name: public.comp_offs
  fields:

  - dimension: adminapproved
    type: string
    sql: ${TABLE}.adminapproved

  - dimension: approverapproved
    type: string
    sql: ${TABLE}.approverapproved

  - dimension: compoffdescription
    type: string
    sql: ${TABLE}.compoffdescription

  - dimension: compoffid
    type: number
    value_format_name: id
    sql: ${TABLE}.compoffid

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
    drill_fields: [users.userid, users.firstname, users.lastname, users.aliasname]

