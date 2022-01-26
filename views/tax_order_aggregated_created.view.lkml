view: tax_order_aggregated_created {
  sql_table_name: `alidbtogcp.costway_ca_db.tax_order_aggregated_created`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.order_status ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
  }

  dimension: percent {
    type: string
    sql: ${TABLE}.percent ;;
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

  dimension: tax_base_amount_sum {
    type: string
    sql: ${TABLE}.tax_base_amount_sum ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
