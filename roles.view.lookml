- view: roles
  sql_table_name: public.roles
  fields:

  - dimension: roleid
    primary_key: true
    type: number
    sql: ${TABLE}.roleid

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

  - dimension: roledescription
    type: string
    sql: ${TABLE}.roledescription

  - dimension: rolename
    type: string
    sql: ${TABLE}.rolename

  - dimension: updatedby
    type: number
    sql: ${TABLE}.updatedby

  - dimension_group: updateddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updateddate

  - dimension: weight
    type: number
    sql: ${TABLE}.weight

  - measure: count
    type: count
    drill_fields: [roleid, rolename, acl.count, privileges.count, users.count]

