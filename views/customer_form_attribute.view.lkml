view: customer_form_attribute {
  sql_table_name: `alidbtogcp.costway_ca_db.customer_form_attribute`
    ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: form_code {
    type: string
    sql: ${TABLE}.form_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
