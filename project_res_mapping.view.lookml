- view: project_res_mapping
  sql_table_name: public.project_res_mapping
  fields:

  - dimension: nonbillableres
    type: number
    sql: ${TABLE}.nonbillableres

  - dimension: prjresmapid
    type: number
    value_format_name: id
    sql: ${TABLE}.prjresmapid

  - dimension: projectid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.projectid

  - dimension: resource_role_id
    type: number
    sql: ${TABLE}.resource_role_id

  - dimension: resourcedesignation
    type: string
    sql: ${TABLE}.resourcedesignation

  - dimension: resourceid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.resourceid

  - dimension: resourcerate
    type: number
    sql: ${TABLE}.resourcerate

  - dimension: servicecode
    type: number
    sql: ${TABLE}.servicecode

  - dimension: usealias
    type: number
    sql: ${TABLE}.usealias

  - dimension: useraliasname
    type: string
    sql: ${TABLE}.useraliasname

  - measure: count
    type: count
    drill_fields: [useraliasname, projects.projectid, projects.projectname, projects.managername, resources.resourceid]

