view: rating_option_vote_aggregated {
  sql_table_name: `alidbtogcp.costway_ca_db.rating_option_vote_aggregated`
    ;;

  dimension: entity_pk_value {
    type: number
    sql: ${TABLE}.entity_pk_value ;;
  }

  dimension: percent {
    type: number
    sql: ${TABLE}.percent ;;
  }

  dimension: percent_approved {
    type: number
    sql: ${TABLE}.percent_approved ;;
  }

  dimension: primary_id {
    type: number
    sql: ${TABLE}.primary_id ;;
  }

  dimension: rating_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.rating_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: vote_count {
    type: number
    sql: ${TABLE}.vote_count ;;
  }

  dimension: vote_value_sum {
    type: number
    sql: ${TABLE}.vote_value_sum ;;
  }

  measure: count {
    type: count
    drill_fields: [rating.rating_id]
  }
}
