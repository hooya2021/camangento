view: salesrule_website {
  sql_table_name: `alidbtogcp.costway_ca_db.salesrule_website`
    ;;

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
