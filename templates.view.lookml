- view: templates
  sql_table_name: public.templates
  fields:

  - dimension: templateid
    primary_key: true
    type: number
    sql: ${TABLE}.templateid

  - dimension: displayname
    type: string
    sql: ${TABLE}.displayname

  - dimension: isactive
    type: number
    sql: ${TABLE}.isactive

  - dimension: templatename
    type: string
    sql: ${TABLE}.templatename

  - measure: count
    type: count
    drill_fields: [templateid, templatename, displayname, clients.count]

