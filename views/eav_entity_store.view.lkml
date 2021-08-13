view: eav_entity_store {
  sql_table_name: `costway_com.eav_entity_store`
    ;;

  dimension: entity_store_id {
    type: number
    sql: ${TABLE}.entity_store_id ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: increment_last_id {
    type: string
    sql: ${TABLE}.increment_last_id ;;
  }

  dimension: increment_prefix {
    type: string
    sql: ${TABLE}.increment_prefix ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [hostname]
  }
}
