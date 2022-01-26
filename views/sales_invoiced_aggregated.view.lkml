view: sales_invoiced_aggregated {
  sql_table_name: `alidbtogcp.costway_ca_db.sales_invoiced_aggregated`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: invoiced {
    type: number
    sql: ${TABLE}.invoiced ;;
  }

  dimension: invoiced_captured {
    type: number
    sql: ${TABLE}.invoiced_captured ;;
  }

  dimension: invoiced_not_captured {
    type: number
    sql: ${TABLE}.invoiced_not_captured ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
  }

  dimension: orders_invoiced {
    type: number
    sql: ${TABLE}.orders_invoiced ;;
  }

  dimension_group: period {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.period ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
