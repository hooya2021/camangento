view: sales_order_aggregated_updated {
  sql_table_name: `alidbtogcp.costway_ca_db.sales_order_aggregated_updated`
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

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: total_canceled_amount {
    type: number
    sql: ${TABLE}.total_canceled_amount ;;
  }

  dimension: total_discount_amount {
    type: number
    sql: ${TABLE}.total_discount_amount ;;
  }

  dimension: total_discount_amount_actual {
    type: number
    sql: ${TABLE}.total_discount_amount_actual ;;
  }

  dimension: total_income_amount {
    type: number
    sql: ${TABLE}.total_income_amount ;;
  }

  dimension: total_invoiced_amount {
    type: number
    sql: ${TABLE}.total_invoiced_amount ;;
  }

  dimension: total_paid_amount {
    type: number
    sql: ${TABLE}.total_paid_amount ;;
  }

  dimension: total_profit_amount {
    type: number
    sql: ${TABLE}.total_profit_amount ;;
  }

  dimension: total_qty_invoiced {
    type: number
    sql: ${TABLE}.total_qty_invoiced ;;
  }

  dimension: total_qty_ordered {
    type: number
    sql: ${TABLE}.total_qty_ordered ;;
  }

  dimension: total_refunded_amount {
    type: number
    sql: ${TABLE}.total_refunded_amount ;;
  }

  dimension: total_revenue_amount {
    type: number
    sql: ${TABLE}.total_revenue_amount ;;
  }

  dimension: total_shipping_amount {
    type: number
    sql: ${TABLE}.total_shipping_amount ;;
  }

  dimension: total_shipping_amount_actual {
    type: number
    sql: ${TABLE}.total_shipping_amount_actual ;;
  }

  dimension: total_tax_amount {
    type: number
    sql: ${TABLE}.total_tax_amount ;;
  }

  dimension: total_tax_amount_actual {
    type: number
    sql: ${TABLE}.total_tax_amount_actual ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
