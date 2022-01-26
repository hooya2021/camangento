view: wishlist_item_option {
  sql_table_name: `alidbtogcp.costway_ca_db.wishlist_item_option`
    ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: wishlist_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.wishlist_item_id ;;
  }

  measure: count {
    type: count
    drill_fields: [wishlist_item.wishlist_item_id]
  }
}
