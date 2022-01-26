view: sales_order_status_state {
  sql_table_name: `alidbtogcp.costway_ca_db.sales_order_status_state`
    ;;

  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
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
