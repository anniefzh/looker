- connection: redshift_tymx

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: acl
  joins:
    - join: resources
      type: left_outer 
      sql_on: ${acl.resourceid} = ${resources.resourceid}
      relationship: many_to_one

    - join: roles
      type: left_outer 
      sql_on: ${acl.roleid} = ${roles.roleid}
      relationship: many_to_one


- explore: clients
  joins:
    - join: templates
      type: left_outer 
      sql_on: ${clients.templateid} = ${templates.templateid}
      relationship: many_to_one


- explore: comp_offs
  joins:
    - join: users
      type: left_outer 
      sql_on: ${comp_offs.userid} = ${users.userid}
      relationship: many_to_one

    - join: roles
      type: left_outer 
      sql_on: ${users.roleid} = ${roles.roleid}
      relationship: many_to_one


- explore: connection_reg_r3

- explore: forgotpassword

- explore: holidays

- explore: privileges
  joins:
    - join: resources
      type: left_outer 
      sql_on: ${privileges.resourceid} = ${resources.resourceid}
      relationship: many_to_one

    - join: roles
      type: left_outer 
      sql_on: ${privileges.roleid} = ${roles.roleid}
      relationship: many_to_one


- explore: project_res_mapping
  joins:
    - join: projects
      type: left_outer 
      sql_on: ${project_res_mapping.projectid} = ${projects.projectid}
      relationship: many_to_one

    - join: resources
      type: left_outer 
      sql_on: ${project_res_mapping.resourceid} = ${resources.resourceid}
      relationship: many_to_one

    - join: clients
      type: left_outer 
      sql_on: ${projects.clientid} = ${clients.qb_client_id}
      relationship: many_to_one

    - join: templates
      type: left_outer 
      sql_on: ${clients.templateid} = ${templates.templateid}
      relationship: many_to_one


- explore: project_types

- explore: projects
  joins:
    - join: clients
      type: left_outer 
      sql_on: ${projects.clientid} = ${clients.qb_client_id}
      relationship: many_to_one

    - join: templates
      type: left_outer 
      sql_on: ${clients.templateid} = ${templates.templateid}
      relationship: many_to_one


- explore: rates
  joins:
    - join: users
      type: left_outer 
      sql_on: ${rates.userid} = ${users.userid}
      relationship: many_to_one

    - join: roles
      type: left_outer 
      sql_on: ${users.roleid} = ${roles.roleid}
      relationship: many_to_one


- explore: resources

- explore: roles

- explore: sessions

- explore: tasks
  joins:
    - join: timesheets
      type: left_outer 
      sql_on: ${tasks.timesheetid} = ${timesheets.timesheetid}
      relationship: many_to_one

    - join: projects
      type: left_outer 
      sql_on: ${tasks.projectid} = ${projects.projectid}
      relationship: many_to_one

    - join: users
      type: left_outer 
      sql_on: ${timesheets.userid} = ${users.userid}
      relationship: many_to_one
      
    - join: rates
      type: left_outer
      sql_on: ${timesheets.userid} = ${rates.userid}
      relationship: many_to_one

    - join: roles
      type: left_outer 
      sql_on: ${users.roleid} = ${roles.roleid}
      relationship: many_to_one

    - join: clients
      type: left_outer 
      sql_on: ${projects.clientid} = ${clients.clientid}
      relationship: many_to_one

    - join: templates
      type: left_outer 
      sql_on: ${clients.templateid} = ${templates.templateid}
      relationship: many_to_one


- explore: technologies

- explore: templates

- explore: timesheets
  joins:
    - join: users
      type: left_outer 
      sql_on: ${timesheets.userid} = ${users.userid}
      relationship: many_to_one

    - join: roles
      type: left_outer 
      sql_on: ${users.roleid} = ${roles.roleid}
      relationship: many_to_one


- explore: user_log
  joins:
    - join: users
      type: left_outer 
      sql_on: ${user_log.userid} = ${users.userid}
      relationship: many_to_one

    - join: roles
      type: left_outer 
      sql_on: ${users.roleid} = ${roles.roleid}
      relationship: many_to_one


- explore: users
  joins:
    - join: roles
      type: left_outer 
      sql_on: ${users.roleid} = ${roles.roleid}
      relationship: many_to_one

- explore: Client_Profits_View

- explore: Projects_Profits_View

