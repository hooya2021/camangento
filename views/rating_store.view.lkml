view: rating_store {
  sql_table_name: `alidbtogcp.costway_ca_db.rating_store`
    ;;

  dimension: rating_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.rating_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [rating.rating_id]
  }
}
