view: catalog_product_super_attribute {
  sql_table_name: `alidbtogcp.costway_ca_db.catalog_product_super_attribute`
    ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_super_attribute_id {
    type: number
    sql: ${TABLE}.product_super_attribute_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
