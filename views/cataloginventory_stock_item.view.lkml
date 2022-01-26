view: cataloginventory_stock_item {
  sql_table_name: `alidbtogcp.costway_ca_db.cataloginventory_stock_item`
    ;;

  dimension: backorders {
    type: number
    sql: ${TABLE}.backorders ;;
  }

  dimension: enable_qty_increments {
    type: number
    sql: ${TABLE}.enable_qty_increments ;;
  }

  dimension: is_decimal_divided {
    type: number
    sql: ${TABLE}.is_decimal_divided ;;
  }

  dimension: is_in_stock {
    type: number
    sql: ${TABLE}.is_in_stock ;;
  }

  dimension: is_qty_decimal {
    type: number
    sql: ${TABLE}.is_qty_decimal ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.item_id ;;
  }

  dimension_group: low_stock {
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
    sql: ${TABLE}.low_stock_date ;;
  }

  dimension: manage_stock {
    type: number
    sql: ${TABLE}.manage_stock ;;
  }

  dimension: max_sale_qty {
    type: number
    sql: ${TABLE}.max_sale_qty ;;
  }

  dimension: min_qty {
    type: number
    sql: ${TABLE}.min_qty ;;
  }

  dimension: min_sale_qty {
    type: number
    sql: ${TABLE}.min_sale_qty ;;
  }

  dimension: notify_stock_qty {
    type: number
    sql: ${TABLE}.notify_stock_qty ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: qty_increments {
    type: number
    sql: ${TABLE}.qty_increments ;;
  }

  dimension: stock_id {
    type: number
    sql: ${TABLE}.stock_id ;;
  }

  dimension: stock_status_changed_auto {
    type: number
    sql: ${TABLE}.stock_status_changed_auto ;;
  }

  dimension: use_config_backorders {
    type: number
    sql: ${TABLE}.use_config_backorders ;;
  }

  dimension: use_config_enable_qty_inc {
    type: number
    sql: ${TABLE}.use_config_enable_qty_inc ;;
  }

  dimension: use_config_manage_stock {
    type: number
    sql: ${TABLE}.use_config_manage_stock ;;
  }

  dimension: use_config_max_sale_qty {
    type: number
    sql: ${TABLE}.use_config_max_sale_qty ;;
  }

  dimension: use_config_min_qty {
    type: number
    sql: ${TABLE}.use_config_min_qty ;;
  }

  dimension: use_config_min_sale_qty {
    type: number
    sql: ${TABLE}.use_config_min_sale_qty ;;
  }

  dimension: use_config_notify_stock_qty {
    type: number
    sql: ${TABLE}.use_config_notify_stock_qty ;;
  }

  dimension: use_config_qty_increments {
    type: number
    sql: ${TABLE}.use_config_qty_increments ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
