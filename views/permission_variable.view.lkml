view: permission_variable {
  sql_table_name: `alidbtogcp.costway_ca_db.permission_variable`
    ;;

  dimension: is_allowed {
    type: number
    sql: ${TABLE}.is_allowed ;;
  }

  dimension: variable_id {
    type: number
    sql: ${TABLE}.variable_id ;;
  }

  dimension: variable_name {
    type: string
    sql: ${TABLE}.variable_name ;;
  }

  measure: count {
    type: count
    drill_fields: [variable_name]
  }
}
