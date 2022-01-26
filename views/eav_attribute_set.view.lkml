view: eav_attribute_set {
  sql_table_name: `alidbtogcp.costway_ca_db.eav_attribute_set`
    ;;

  dimension: attribute_set_id {
    type: number
    sql: ${TABLE}.attribute_set_id ;;
  }

  dimension: attribute_set_name {
    type: string
    sql: ${TABLE}.attribute_set_name ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  measure: count {
    type: count
    drill_fields: [attribute_set_name]
  }
}
