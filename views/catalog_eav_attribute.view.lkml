view: catalog_eav_attribute {
  sql_table_name: `alidbtogcp.costway_ca_db.catalog_eav_attribute`
    ;;

  dimension: apply_to {
    type: string
    sql: ${TABLE}.apply_to ;;
  }

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }

  dimension: frontend_input_renderer {
    type: string
    sql: ${TABLE}.frontend_input_renderer ;;
  }

  dimension: is_comparable {
    type: number
    sql: ${TABLE}.is_comparable ;;
  }

  dimension: is_configurable {
    type: number
    sql: ${TABLE}.is_configurable ;;
  }

  dimension: is_filterable {
    type: number
    sql: ${TABLE}.is_filterable ;;
  }

  dimension: is_filterable_in_search {
    type: number
    sql: ${TABLE}.is_filterable_in_search ;;
  }

  dimension: is_global {
    type: number
    sql: ${TABLE}.is_global ;;
  }

  dimension: is_html_allowed_on_front {
    type: number
    sql: ${TABLE}.is_html_allowed_on_front ;;
  }

  dimension: is_searchable {
    type: number
    sql: ${TABLE}.is_searchable ;;
  }

  dimension: is_used_for_price_rules {
    type: number
    sql: ${TABLE}.is_used_for_price_rules ;;
  }

  dimension: is_used_for_promo_rules {
    type: number
    sql: ${TABLE}.is_used_for_promo_rules ;;
  }

  dimension: is_visible {
    type: number
    sql: ${TABLE}.is_visible ;;
  }

  dimension: is_visible_in_advanced_search {
    type: number
    sql: ${TABLE}.is_visible_in_advanced_search ;;
  }

  dimension: is_visible_on_front {
    type: number
    sql: ${TABLE}.is_visible_on_front ;;
  }

  dimension: is_wysiwyg_enabled {
    type: number
    sql: ${TABLE}.is_wysiwyg_enabled ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: used_for_sort_by {
    type: number
    sql: ${TABLE}.used_for_sort_by ;;
  }

  dimension: used_in_product_listing {
    type: number
    sql: ${TABLE}.used_in_product_listing ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
