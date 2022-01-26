view: directory_country_region {
  sql_table_name: `alidbtogcp.costway_ca_db.directory_country_region`
    ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: default_name {
    type: string
    sql: ${TABLE}.default_name ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.region_id ;;
  }

  measure: count {
    type: count
    drill_fields: [default_name]
  }
}
