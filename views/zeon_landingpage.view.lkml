view: zeon_landingpage {
  sql_table_name: `alidbtogcp.costway_ca_db.zeon_landingpage`
    ;;

  dimension_group: creation {
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
    sql: ${TABLE}.creation_time ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }

  dimension: landingpage_id {
    type: number
    sql: ${TABLE}.landingpage_id ;;
  }

  dimension: meta_description {
    type: string
    sql: ${TABLE}.meta_description ;;
  }

  dimension: meta_keywords {
    type: string
    sql: ${TABLE}.meta_keywords ;;
  }

  dimension: part_numbers {
    type: string
    sql: ${TABLE}.part_numbers ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.short_description ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: update {
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
    sql: ${TABLE}.update_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
