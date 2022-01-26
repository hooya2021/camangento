view: directory_country {
  sql_table_name: `alidbtogcp.costway_ca_db.directory_country`
    ;;

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: iso2_code {
    type: string
    sql: ${TABLE}.iso2_code ;;
  }

  dimension: iso3_code {
    type: string
    sql: ${TABLE}.iso3_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
