view: rating_option_vote {
  sql_table_name: `alidbtogcp.costway_ca_db.rating_option_vote`
    ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: entity_pk_value {
    type: number
    sql: ${TABLE}.entity_pk_value ;;
  }

  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }

  dimension: percent {
    type: number
    sql: ${TABLE}.percent ;;
  }

  dimension: rating_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.rating_id ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}.remote_ip ;;
  }

  dimension: remote_ip_long {
    type: number
    sql: ${TABLE}.remote_ip_long ;;
  }

  dimension: review_id {
    type: number
    sql: ${TABLE}.review_id ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: vote_id {
    type: number
    sql: ${TABLE}.vote_id ;;
  }

  measure: count {
    type: count
    drill_fields: [rating.rating_id]
  }
}
