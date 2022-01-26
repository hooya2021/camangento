view: salesrule_customer_group {
  sql_table_name: `alidbtogcp.costway_ca_db.salesrule_customer_group`
    ;;

  dimension: customer_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_group_id ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_group.customer_group_id]
  }
}
