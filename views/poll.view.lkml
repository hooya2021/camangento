view: poll {
  sql_table_name: `alidbtogcp.costway_ca_db.poll`
    ;;
  drill_fields: [poll_id]

  dimension: poll_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.poll_id ;;
  }

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: answers_display {
    type: number
    sql: ${TABLE}.answers_display ;;
  }

  dimension: closed {
    type: number
    sql: ${TABLE}.closed ;;
  }

  dimension_group: date_closed {
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
    sql: ${TABLE}.date_closed ;;
  }

  dimension_group: date_posted {
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
    sql: ${TABLE}.date_posted ;;
  }

  dimension: poll_title {
    type: string
    sql: ${TABLE}.poll_title ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: votes_count {
    type: number
    sql: ${TABLE}.votes_count ;;
  }

  measure: count {
    type: count
    drill_fields: [poll_id, poll_answer.count]
  }
}
