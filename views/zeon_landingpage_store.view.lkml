view: zeon_landingpage_store {
  sql_table_name: `alidbtogcp.costway_ca_db.zeon_landingpage_store`
    ;;

  dimension: landingpage_id {
    type: number
    sql: ${TABLE}.landingpage_id ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
