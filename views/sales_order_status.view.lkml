view: sales_order_status {
  sql_table_name: `alidbtogcp.costway_ca_db.sales_order_status`
    ;;

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
