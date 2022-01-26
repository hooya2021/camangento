view: eav_entity_attribute {
  sql_table_name: `alidbtogcp.costway_ca_db.eav_entity_attribute`
    ;;

  dimension: attribute_group_id {
    type: number
    sql: ${TABLE}.attribute_group_id ;;
  }

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: attribute_set_id {
    type: number
    sql: ${TABLE}.attribute_set_id ;;
  }

  dimension: entity_attribute_id {
    type: number
    sql: ${TABLE}.entity_attribute_id ;;
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
    drill_fields: []
  }
}
