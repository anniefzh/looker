- view: clients
  sql_table_name: public.clients
  fields:

  - dimension: qb_client_id
    primary_key: true
    type: string
    sql: ${TABLE}.qb_client_id

  - dimension: address1
    type: string
    sql: ${TABLE}.address1

  - dimension: address2
    type: string
    sql: ${TABLE}.address2

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: clientdescription
    type: string
    sql: ${TABLE}.clientdescription

  - dimension: clientid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.clientid

  - dimension: clientname
    type: string
    sql: ${TABLE}.clientname

  - dimension: createdby
    type: number
    sql: ${TABLE}.createdby

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

  - dimension: phone
    type: string
    sql: ${TABLE}.phone

  - dimension: templateid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.templateid

  - dimension: updatedby
    type: number
    sql: ${TABLE}.updatedby

  - dimension_group: updateddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updateddate

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - qb_client_id
    - clientname
    - clients.clientname
    - clients.qb_client_id
    - templates.templateid
    - templates.templatename
    - templates.displayname
    - clients.count
    - projects.count

