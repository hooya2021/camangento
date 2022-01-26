view: wishlist_item {
  sql_table_name: `alidbtogcp.costway_ca_db.wishlist_item`
    ;;
  drill_fields: [wishlist_item_id]

  dimension: wishlist_item_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.wishlist_item_id ;;
  }

  dimension_group: added {
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
    sql: ${TABLE}.added_at ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: wishlist_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.wishlist_id ;;
  }

  measure: count {
    type: count
    drill_fields: [wishlist_item_id, wishlist.wishlist_id, wishlist_item_option.count]
  }
}
