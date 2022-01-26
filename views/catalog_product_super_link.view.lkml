view: catalog_product_super_link {
  sql_table_name: `alidbtogcp.costway_ca_db.catalog_product_super_link`
    ;;

  dimension: link_id {
    type: number
    sql: ${TABLE}.link_id ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
