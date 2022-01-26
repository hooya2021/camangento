view: wishlist {
  sql_table_name: `alidbtogcp.costway_ca_db.wishlist`
    ;;
  drill_fields: [wishlist_id]

  dimension: wishlist_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.wishlist_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: shared {
    type: number
    sql: ${TABLE}.shared ;;
  }

  dimension: sharing_code {
    type: string
    sql: ${TABLE}.sharing_code ;;
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
    drill_fields: [wishlist_id, wishlist_item_stock_alert.count, wishlist_item.count]
  }
}
