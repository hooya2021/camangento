view: eav_attribute_label {
  sql_table_name: `alidbtogcp.costway_ca_db.eav_attribute_label`
    ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: attribute_label_id {
    type: number
    sql: ${TABLE}.attribute_label_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
