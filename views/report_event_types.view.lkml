view: report_event_types {
  sql_table_name: `alidbtogcp.costway_ca_db.report_event_types`
    ;;

  dimension: customer_login {
    type: number
    sql: ${TABLE}.customer_login ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_type_id {
    type: number
    sql: ${TABLE}.event_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name]
  }
}
