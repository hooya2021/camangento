view: directory_country_region_name {
  sql_table_name: `alidbtogcp.costway_ca_db.directory_country_region_name`
    ;;

  dimension: locale {
    type: string
    sql: ${TABLE}.locale ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.region_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
