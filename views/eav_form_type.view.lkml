view: eav_form_type {
  sql_table_name: `alidbtogcp.costway_ca_db.eav_form_type`
    ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: is_system {
    type: number
    sql: ${TABLE}.is_system ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: theme {
    type: string
    sql: ${TABLE}.theme ;;
  }

  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
