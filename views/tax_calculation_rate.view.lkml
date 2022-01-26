view: tax_calculation_rate {
  sql_table_name: `alidbtogcp.costway_ca_db.tax_calculation_rate`
    ;;
  drill_fields: [tax_calculation_rate_id]

  dimension: tax_calculation_rate_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tax_calculation_rate_id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }

  dimension: tax_country_id {
    type: string
    sql: ${TABLE}.tax_country_id ;;
  }

  dimension: tax_postcode {
    type: string
    sql: ${TABLE}.tax_postcode ;;
  }

  dimension: tax_region_id {
    type: number
    sql: ${TABLE}.tax_region_id ;;
  }

  dimension: zip_from {
    type: number
    sql: ${TABLE}.zip_from ;;
  }

  dimension: zip_is_range {
    type: number
    sql: ${TABLE}.zip_is_range ;;
  }

  dimension: zip_to {
    type: number
    sql: ${TABLE}.zip_to ;;
  }

  measure: count {
    type: count
    drill_fields: [tax_calculation_rate_id, tax_calculation.count]
  }
}
