- view: projects
  sql_table_name: public.projects
  fields:

  - dimension: projectid
    primary_key: true
    type: number
    sql: ${TABLE}.projectid

  - dimension: backend_hours
    type: string
    sql: ${TABLE}.backend_hours

  - dimension: budget_hours
    type: string
    sql: ${TABLE}.budget_hours

  - dimension: clientid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.clientid

  - dimension: createdby
    type: number
    sql: ${TABLE}.createdby

  - dimension_group: createddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.createddate

  - dimension_group: enddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.enddate

  - dimension: isactive
    type: string
    sql: ${TABLE}.isactive

  - dimension: managername
    type: string
    sql: ${TABLE}.managername

  - dimension: pm_hours
    type: string
    sql: ${TABLE}.pm_hours

  - dimension: projectdescription
    type: string
    sql: ${TABLE}.projectdescription

  - dimension: projectname
    type: string
    sql: ${TABLE}.projectname

  - dimension: projecttypeid
    type: number
    value_format_name: id
    sql: ${TABLE}.projecttypeid

  - dimension: qa_hours
    type: string
    sql: ${TABLE}.qa_hours

  - dimension_group: startdate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.startdate

  - dimension: technology_types
    type: string
    sql: ${TABLE}.technology_types

  - dimension: ui_hours
    type: string
    sql: ${TABLE}.ui_hours

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
    - projectid
    - projectname
    - managername
    - clients.clientname
    - clients.qb_client_id
    - project_res_mapping.count
    - tasks.count

