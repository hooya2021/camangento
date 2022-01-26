view: sales_shipping_aggregated_order {
  sql_table_name: `alidbtogcp.costway_ca_db.sales_shipping_aggregated_order`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: shipping_description {
    type: string
    sql: ${TABLE}.shipping_description ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: total_shipping {
    type: number
    sql: ${TABLE}.total_shipping ;;
  }

  dimension: total_shipping_actual {
    type: number
    sql: ${TABLE}.total_shipping_actual ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
