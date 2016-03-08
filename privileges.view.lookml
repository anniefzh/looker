- view: privileges
  sql_table_name: public.privileges
  fields:

  - dimension: resourceid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.resourceid

  - dimension: roleid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.roleid

  - measure: count
    type: count
    drill_fields: [resources.resourceid, roles.roleid, roles.rolename]

