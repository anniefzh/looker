- view: project_types
  sql_table_name: public.project_types
  fields:

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

  - dimension: projecttypeid
    type: number
    value_format_name: id
    sql: ${TABLE}.projecttypeid

  - dimension: projecttypename
    type: string
    sql: ${TABLE}.projecttypename

  - dimension: updatedby
    type: number
    sql: ${TABLE}.updatedby

  - dimension_group: updateddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updateddate

  - measure: count
    type: count
    drill_fields: [projecttypename]

