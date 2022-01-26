view: cataloginventory_stock_status_idx {
  sql_table_name: `alidbtogcp.costway_ca_db.cataloginventory_stock_status_idx`
    ;;

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: stock_id {
    type: number
    sql: ${TABLE}.stock_id ;;
  }

  dimension: stock_status {
    type: number
    sql: ${TABLE}.stock_status ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
