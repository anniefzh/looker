- view: users
  sql_table_name: public.users
  fields:

  - dimension: userid
    primary_key: true
    type: number
    sql: ${TABLE}.userid

  - dimension: address
    type: string
    sql: ${TABLE}.address

  - dimension: aliasname
    type: string
    sql: ${TABLE}.aliasname

  - dimension: approverid
    type: number
    value_format_name: id
    sql: ${TABLE}.approverid

  - dimension: createdby
    type: number
    sql: ${TABLE}.createdby

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension: designation
    type: string
    sql: ${TABLE}.designation

  - dimension: email
    type: string
    sql: ${TABLE}.email

  - dimension_group: employeesince
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.employeesince

  - dimension: firstname
    type: string
    sql: ${TABLE}.firstname

  - dimension: gender
    type: string
    sql: ${TABLE}.gender

  - dimension: isactive
    type: string
    sql: ${TABLE}.isactive

  - dimension: lastname
    type: string
    sql: ${TABLE}.lastname

  - dimension: location
    type: string
    sql: ${TABLE}.location

  - dimension: maritalstatus
    type: string
    sql: ${TABLE}.maritalstatus

  - dimension: password
    type: string
    sql: ${TABLE}.password

  - dimension: profilepic
    type: string
    sql: ${TABLE}.profilepic

  - dimension: qb_employee_id
    type: string
    sql: ${TABLE}.qb_employee_id

  - dimension: roleid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.roleid

  - dimension: salutation
    type: string
    sql: ${TABLE}.salutation

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - dimension: updatedby
    type: number
    sql: ${TABLE}.updatedby

  - dimension_group: updateddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updateddate

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - userid
    - firstname
    - lastname
    - aliasname
    - roles.roleid
    - roles.rolename
    - comp_offs.count
    - rates.count
    - timesheets.count
    - user_log.count

