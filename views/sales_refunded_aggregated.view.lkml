view: sales_refunded_aggregated {
  sql_table_name: `alidbtogcp.costway_ca_db.sales_refunded_aggregated`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: offline_refunded {
    type: number
    sql: ${TABLE}.offline_refunded ;;
  }

  dimension: online_refunded {
    type: number
    sql: ${TABLE}.online_refunded ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
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

  dimension: refunded {
    type: number
    sql: ${TABLE}.refunded ;;
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
