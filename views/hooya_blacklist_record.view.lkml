view: hooya_blacklist_record {
  sql_table_name: `alidbtogcp.costway_ca_db.hooya_blacklist_record`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bind_id {
    type: number
    sql: ${TABLE}.bind_id ;;
  }

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

  dimension: customer {
    type: number
    sql: ${TABLE}.customer ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: event_info {
    type: string
    sql: ${TABLE}.event_info ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: relieve_admin {
    type: string
    sql: ${TABLE}.relieve_admin ;;
  }

  dimension_group: relieve {
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
    sql: ${TABLE}.relieve_at ;;
  }

  dimension_group: relieve_at_admin {
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
    sql: ${TABLE}.relieve_at_admin ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
