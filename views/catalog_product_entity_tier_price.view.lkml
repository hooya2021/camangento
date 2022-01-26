view: catalog_product_entity_tier_price {
  sql_table_name: `alidbtogcp.costway_ca_db.catalog_product_entity_tier_price`
    ;;

  dimension: all_groups {
    type: number
    sql: ${TABLE}.all_groups ;;
  }

  dimension: customer_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_group_id ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: value_id {
    type: number
    sql: ${TABLE}.value_id ;;
  }

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_group.customer_group_id]
  }
}
