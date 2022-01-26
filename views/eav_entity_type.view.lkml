view: eav_entity_type {
  sql_table_name: `alidbtogcp.costway_ca_db.eav_entity_type`
    ;;

  dimension: additional_attribute_table {
    type: string
    sql: ${TABLE}.additional_attribute_table ;;
  }

  dimension: attribute_model {
    type: string
    sql: ${TABLE}.attribute_model ;;
  }

  dimension: data_sharing_key {
    type: string
    sql: ${TABLE}.data_sharing_key ;;
  }

  dimension: default_attribute_set_id {
    type: number
    sql: ${TABLE}.default_attribute_set_id ;;
  }

  dimension: entity_attribute_collection {
    type: string
    sql: ${TABLE}.entity_attribute_collection ;;
  }

  dimension: entity_id_field {
    type: string
    sql: ${TABLE}.entity_id_field ;;
  }

  dimension: entity_model {
    type: string
    sql: ${TABLE}.entity_model ;;
  }

  dimension: entity_table {
    type: string
    sql: ${TABLE}.entity_table ;;
  }

  dimension: entity_type_code {
    type: string
    sql: ${TABLE}.entity_type_code ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: increment_model {
    type: string
    sql: ${TABLE}.increment_model ;;
  }

  dimension: increment_pad_char {
    type: string
    sql: ${TABLE}.increment_pad_char ;;
  }

  dimension: increment_pad_length {
    type: number
    sql: ${TABLE}.increment_pad_length ;;
  }

  dimension: increment_per_store {
    type: number
    sql: ${TABLE}.increment_per_store ;;
  }

  dimension: is_data_sharing {
    type: number
    sql: ${TABLE}.is_data_sharing ;;
  }

  dimension: value_table_prefix {
    type: string
    sql: ${TABLE}.value_table_prefix ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
