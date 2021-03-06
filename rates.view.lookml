- view: rates
  sql_table_name: public.rates
  fields:

  - dimension: billrate
    type: number
    sql: ${TABLE}.billrate
    value_format: '00000.00'

  - dimension: cost
    type: number
    sql: ${TABLE}.cost
    value_format: '00000.00'

  - dimension: userid
    type: number
    value_format_name: id
    # hidden: true
    sql: ${TABLE}.userid

  - measure: count
    type: count
    drill_fields: [users.userid, users.firstname, users.lastname, users.aliasname]
  
  - measure: sum_cost
    type: sum
    sql: ${TABLE}.cost
    drill_fields: [rates.userid, rates.cost]
    
  - measure: sum_billrate
    type: sum
    sql: ${TABLE}.billrate
    drill_fields: [rates.userid, rates.billrate]

  
    
