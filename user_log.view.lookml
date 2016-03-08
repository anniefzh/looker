- view: user_log
  sql_table_name: public.user_log
  fields:

  - dimension: logid
    type: number
    value_format_name: id
    sql: ${TABLE}.logid

  - dimension_group: logintime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.logintime

  - dimension_group: logouttime
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.logouttime

  - dimension: sessionkey
    type: string
    sql: ${TABLE}.sessionkey

  - dimension: userid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.userid

  - measure: count
    type: count
    drill_fields: [users.userid, users.firstname, users.lastname, users.aliasname]

