view: index_process_event {
  sql_table_name: `alidbtogcp.costway_ca_db.index_process_event`
    ;;

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: process_id {
    type: number
    sql: ${TABLE}.process_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
