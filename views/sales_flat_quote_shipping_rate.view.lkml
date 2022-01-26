view: sales_flat_quote_shipping_rate {
  sql_table_name: `alidbtogcp.costway_ca_db.sales_flat_quote_shipping_rate`
    ;;

  dimension: address_id {
    type: number
    sql: ${TABLE}.address_id ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension: carrier_title {
    type: string
    sql: ${TABLE}.carrier_title ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: method_description {
    type: string
    sql: ${TABLE}.method_description ;;
  }

  dimension: method_title {
    type: string
    sql: ${TABLE}.method_title ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: rate_id {
    type: number
    sql: ${TABLE}.rate_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
