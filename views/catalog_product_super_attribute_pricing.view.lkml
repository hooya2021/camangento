view: catalog_product_super_attribute_pricing {
  sql_table_name: `alidbtogcp.costway_ca_db.catalog_product_super_attribute_pricing`
    ;;

  dimension: is_percent {
    type: number
    sql: ${TABLE}.is_percent ;;
  }

  dimension: pricing_value {
    type: number
    sql: ${TABLE}.pricing_value ;;
  }

  dimension: product_super_attribute_id {
    type: number
    sql: ${TABLE}.product_super_attribute_id ;;
  }

  dimension: value_id {
    type: number
    sql: ${TABLE}.value_id ;;
  }

  dimension: value_index {
    type: string
    sql: ${TABLE}.value_index ;;
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
