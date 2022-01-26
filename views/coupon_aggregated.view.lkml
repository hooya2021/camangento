view: coupon_aggregated {
  sql_table_name: `alidbtogcp.costway_ca_db.coupon_aggregated`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: coupon_code {
    type: string
    sql: ${TABLE}.coupon_code ;;
  }

  dimension: coupon_uses {
    type: number
    sql: ${TABLE}.coupon_uses ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_amount_actual {
    type: number
    sql: ${TABLE}.discount_amount_actual ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
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

  dimension: rule_name {
    type: string
    sql: ${TABLE}.rule_name ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: subtotal_amount {
    type: number
    sql: ${TABLE}.subtotal_amount ;;
  }

  dimension: subtotal_amount_actual {
    type: number
    sql: ${TABLE}.subtotal_amount_actual ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension: total_amount_actual {
    type: number
    sql: ${TABLE}.total_amount_actual ;;
  }

  measure: count {
    type: count
    drill_fields: [id, rule_name]
  }
}
