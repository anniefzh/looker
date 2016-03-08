- view: acl
  sql_table_name: public.acl
  fields:

  - dimension: aclid
    primary_key: true
    type: number
    sql: ${TABLE}.aclid

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
    drill_fields: [aclid, resources.resourceid, roles.roleid, roles.rolename]

