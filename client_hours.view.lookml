- view: Client_Profits_View

# # Specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.client_hours
#
# # Or, you could make this view a derived table, like this:
  derived_table:
    sql: |
    
      SELECT 
        a.clientid as clientid,
        a.clientname as clientname,
        a.date_month as month,
        sum(r.cost * a.sum_hours) as Cost, 
        sum(r.billrate * a.sum_hours) as Revenue

      from (
        SELECT 
          clients.clientid AS "clientid",
          clients.clientname AS "clientname",
          timesheets.userid AS "userid",
          TO_CHAR(CONVERT_TIMEZONE('UTC', 'America/Los_Angeles', tasks.date), 'YYYY-MM') AS "date_month",
          COALESCE(SUM(tasks.hours),0) AS "sum_hours"
  
       FROM 
          public.tasks AS tasks
       LEFT JOIN 
          public.timesheets AS timesheets ON tasks.timesheetid = timesheets.timesheetid
       LEFT JOIN 
          public.projects AS projects ON tasks.projectid = projects.projectid
       LEFT JOIN 
          public.clients AS clients ON projects.clientid = clients.clientid

       GROUP BY 
          1,2,3,4
        ) AS a
        
        LEFT JOIN 
          public.rates AS r ON a.userid = r.userid
        group by 
          1,2,3
        order by 
          1,2,3

  fields:
# #     Define your dimensions and measures here, like this:
    - dimension: clientid
      type: number
      sql: ${TABLE}.clientid
    
    - dimension: clientname
      type: string
      sql: ${TABLE}.clientname
      
    - dimension: date_month
      type: string
      sql: ${TABLE}.month
    
    - measure: Cost
      type: sum
      sql: ${TABLE}.Cost
      
    - measure: Revenue
      type: sum
      sql: ${TABLE}.Revenue