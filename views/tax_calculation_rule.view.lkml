view: tax_calculation_rule {
  sql_table_name: `alidbtogcp.costway_ca_db.tax_calculation_rule`
    ;;
  drill_fields: [tax_calculation_rule_id]

  dimension: tax_calculation_rule_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tax_calculation_rule_id ;;
  }

  dimension: calculate_subtotal {
    type: number
    sql: ${TABLE}.calculate_subtotal ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  measure: count {
    type: count
    drill_fields: [tax_calculation_rule_id, tax_calculation.count]
  }
}
