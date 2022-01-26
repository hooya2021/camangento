view: catalog_product_super_attribute_label {
  sql_table_name: `alidbtogcp.costway_ca_db.catalog_product_super_attribute_label`
    ;;

  dimension: product_super_attribute_id {
    type: number
    sql: ${TABLE}.product_super_attribute_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: use_default {
    type: number
    sql: ${TABLE}.use_default ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: value_id {
    type: number
    sql: ${TABLE}.value_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
