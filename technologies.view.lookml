- view: technologies
  sql_table_name: public.technologies
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

  - dimension: technologyname
    type: string
    sql: ${TABLE}.technologyname

  - dimension: techonlogyid
    type: number
    value_format_name: id
    sql: ${TABLE}.techonlogyid

  - dimension: updatedby
    type: number
    sql: ${TABLE}.updatedby

  - dimension_group: updateddate
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updateddate

  - measure: count
    type: count
    drill_fields: [technologyname]

