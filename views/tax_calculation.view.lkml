view: tax_calculation {
  sql_table_name: `alidbtogcp.costway_ca_db.tax_calculation`
    ;;
  drill_fields: [tax_calculation_id]

  dimension: tax_calculation_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tax_calculation_id ;;
  }

  dimension: customer_tax_class_id {
    type: number
    sql: ${TABLE}.customer_tax_class_id ;;
  }

  dimension: product_tax_class_id {
    type: number
    sql: ${TABLE}.product_tax_class_id ;;
  }

  dimension: tax_calculation_rate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_calculation_rate_id ;;
  }

  dimension: tax_calculation_rule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.tax_calculation_rule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [tax_calculation_id, tax_calculation_rule.tax_calculation_rule_id, tax_calculation_rate.tax_calculation_rate_id]
  }
}
