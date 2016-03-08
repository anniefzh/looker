- view: resources
  sql_table_name: public.resources
  fields:

  - dimension: resourceid
    primary_key: true
    type: number
    sql: ${TABLE}.resourceid

  - dimension: action
    type: string
    sql: ${TABLE}.action

  - dimension: controller
    type: string
    sql: ${TABLE}.controller

  - dimension: isajax
    type: number
    sql: ${TABLE}.isajax

  - dimension: label
    type: string
    sql: ${TABLE}.label

  - dimension: menuitem
    type: number
    sql: ${TABLE}.menuitem

  - dimension: parentid
    type: number
    value_format_name: id
    sql: ${TABLE}.parentid

  - dimension: sort_order
    type: number
    sql: ${TABLE}.sort_order

  - measure: count
    type: count
    drill_fields: [resourceid, acl.count, privileges.count, project_res_mapping.count]

