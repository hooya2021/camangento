view: rating {
  sql_table_name: `alidbtogcp.costway_ca_db.rating`
    ;;
  drill_fields: [rating_id]

  dimension: rating_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.rating_id ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: rating_code {
    type: string
    sql: ${TABLE}.rating_code ;;
  }

  measure: count {
    type: count
    drill_fields: [rating_id, rating_option.count, rating_option_vote.count, rating_option_vote_aggregated.count, rating_store.count]
  }
}
