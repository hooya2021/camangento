view: index_event {
  sql_table_name: `alidbtogcp.costway_ca_db.index_event`
    ;;

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.entity ;;
  }

  dimension: entity_pk {
    type: number
    sql: ${TABLE}.entity_pk ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: new_data {
    type: string
    sql: ${TABLE}.new_data ;;
  }

  dimension: old_data {
    type: string
    sql: ${TABLE}.old_data ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
