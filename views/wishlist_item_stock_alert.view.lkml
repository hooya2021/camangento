view: wishlist_item_stock_alert {
  sql_table_name: `alidbtogcp.costway_ca_db.wishlist_item_stock_alert`
    ;;
  drill_fields: [wishlist_item_stock_alert_id]

  dimension: wishlist_item_stock_alert_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.wishlist_item_stock_alert_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: wishlist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.wishlist_id ;;
  }

  measure: count {
    type: count
    drill_fields: [wishlist_item_stock_alert_id, wishlist.wishlist_id]
  }
}
