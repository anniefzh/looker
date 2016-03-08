- view: profit

# # Specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.profit
#
# # Or, you could make this view a derived table, like this:
  derived_table:
    sql: |
      SELECT
        projects.projectid AS "projectid",
        projects.projectname AS "projectname",
        rates.userid AS "userid",
        rates.billrate * COALESCE(SUM(tasks.hours),0) AS "billrate_sum",
        rates.cost * COALESCE(SUM(tasks.hours),0) AS "cost_sum",
        TO_CHAR(CONVERT_TIMEZONE('UTC', 'America/Los_Angeles', tasks.date), 'YYYY-MM') AS "tasks.date_month",
       COALESCE(SUM(tasks.hours),0) AS "tasks.sum_hours"
      FROM
        public.tasks
      LEFT JOIN 
        public.timesheets AS timesheets ON tasks.timesheetid = timesheets.timesheetid
      LEFT JOIN 
        public.projects AS projects ON tasks.projectid = projects.projectid
      LEFT JOIN 
        public.rates AS rates ON timesheets.userid = rates.userid
      GROUP BY
        1,2
      ORDER BY
        1

  fields:
# #     Define your dimensions and measures here, like this:
  - dimension: projectid
    type: number
    sql: ${TABLE}.projectid

  - dimension: projectname
    type: string
    sql: ${TABLE}.projectname
  
  - dimension: userid
    type: number
    sql: ${TABLE}.userid
  
