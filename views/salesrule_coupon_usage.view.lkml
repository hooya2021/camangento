view: salesrule_coupon_usage {
  sql_table_name: `alidbtogcp.costway_ca_db.salesrule_coupon_usage`
    ;;

  dimension: coupon_id {
    type: number
    sql: ${TABLE}.coupon_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: times_used {
    type: number
    sql: ${TABLE}.times_used ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
