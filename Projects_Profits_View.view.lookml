- view: Projects_Profits_View

# # Specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.project_hours
#
# # Or, you could make this view a derived table, like this:
  derived_table:
    sql: |
    
      SELECT 
        a.projectid as projectid,
        a.projectname as projectname,
        a.date_month as month,
        sum(r.cost * a.sum_hours) as Cost, 
        sum(r.billrate * a.sum_hours) as Revenue

      from (
        SELECT 
          projects.projectid AS "projectid",
          projects.projectname AS "projectname",
          timesheets.userid AS "userid",
          TO_CHAR(CONVERT_TIMEZONE('UTC', 'America/Los_Angeles', tasks.date), 'YYYY-MM') AS "date_month",
          COALESCE(SUM(tasks.hours),0) AS "sum_hours"
  
       FROM 
          public.tasks AS tasks
       LEFT JOIN 
          public.timesheets AS timesheets ON tasks.timesheetid = timesheets.timesheetid
       LEFT JOIN 
          public.projects AS projects ON tasks.projectid = projects.projectid

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
    - dimension: projectid
      type: number
      sql: ${TABLE}.projectid
    
    - dimension: projectname
      type: string
      sql: ${TABLE}.projectname
      
    - dimension: date_month
      type: string
      sql: ${TABLE}.month
    
    - measure: Cost
      type: sum
      sql: ${TABLE}.Cost
      value_format: '$#,##0.00'
      
    - measure: Revenue
      type: sum
      sql: ${TABLE}.Revenue
      value_format: '$#,##0.00'
