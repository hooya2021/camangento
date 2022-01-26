view: catalog_product_flat_1 {
  sql_table_name: `alidbtogcp.costway_ca_db.catalog_product_flat_1`
    ;;

  dimension: attribute_lexicon {
    type: string
    sql: ${TABLE}.attribute_lexicon ;;
  }

  dimension: attribute_set_id {
    type: number
    sql: ${TABLE}.attribute_set_id ;;
  }

  dimension: best_seller {
    type: number
    sql: ${TABLE}.best_seller ;;
  }

  dimension: clearance {
    type: number
    sql: ${TABLE}.clearance ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: gift_message_available {
    type: number
    sql: ${TABLE}.gift_message_available ;;
  }

  dimension: has_options {
    type: number
    sql: ${TABLE}.has_options ;;
  }

  dimension: image_label {
    type: string
    sql: ${TABLE}.image_label ;;
  }

  dimension: instructions_pdf {
    type: string
    sql: ${TABLE}.instructions_pdf ;;
  }

  dimension_group: instructions {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.instructions_time ;;
  }

  dimension: is_recurring {
    type: number
    sql: ${TABLE}.is_recurring ;;
  }

  dimension: links_exist {
    type: number
    sql: ${TABLE}.links_exist ;;
  }

  dimension: links_purchased_separately {
    type: number
    sql: ${TABLE}.links_purchased_separately ;;
  }

  dimension: links_title {
    type: string
    sql: ${TABLE}.links_title ;;
  }

  dimension: max_spkie_qty {
    type: number
    sql: ${TABLE}.max_spkie_qty ;;
  }

  dimension: msrp {
    type: number
    sql: ${TABLE}.msrp ;;
  }

  dimension: msrp_display_actual_price_type {
    type: string
    sql: ${TABLE}.msrp_display_actual_price_type ;;
  }

  dimension: msrp_enabled {
    type: number
    sql: ${TABLE}.msrp_enabled ;;
  }

  dimension: msrp_price {
    type: number
    sql: ${TABLE}.msrp_price ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: news_from {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.news_from_date ;;
  }

  dimension_group: news_to {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.news_to_date ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_type {
    type: number
    sql: ${TABLE}.price_type ;;
  }

  dimension: price_view {
    type: number
    sql: ${TABLE}.price_view ;;
  }

  dimension: recurring_profile {
    type: string
    sql: ${TABLE}.recurring_profile ;;
  }

  dimension: required_options {
    type: number
    sql: ${TABLE}.required_options ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  dimension: shipment_type {
    type: number
    sql: ${TABLE}.shipment_type ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.short_description ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: sku_type {
    type: number
    sql: ${TABLE}.sku_type ;;
  }

  dimension: small_image {
    type: string
    sql: ${TABLE}.small_image ;;
  }

  dimension: small_image_label {
    type: string
    sql: ${TABLE}.small_image_label ;;
  }

  dimension_group: special_from {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.special_from_date ;;
  }

  dimension: special_offer {
    type: number
    sql: ${TABLE}.special_offer ;;
  }

  dimension: special_price {
    type: number
    sql: ${TABLE}.special_price ;;
  }

  dimension_group: special_to {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.special_to_date ;;
  }

  dimension: spike_price {
    type: number
    sql: ${TABLE}.spike_price ;;
  }

  dimension_group: spkie_special_from {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.spkie_special_from_date ;;
  }

  dimension_group: spkie_special_to {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.spkie_special_to_date ;;
  }

  dimension: tax_class_id {
    type: number
    sql: ${TABLE}.tax_class_id ;;
  }

  dimension: thumbnail {
    type: string
    sql: ${TABLE}.thumbnail ;;
  }

  dimension: thumbnail_label {
    type: string
    sql: ${TABLE}.thumbnail_label ;;
  }

  dimension: top_pick {
    type: number
    sql: ${TABLE}.top_pick ;;
  }

  dimension: type_id {
    type: string
    sql: ${TABLE}.type_id ;;
  }

  dimension_group: update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.update_time ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: url_key {
    type: string
    sql: ${TABLE}.url_key ;;
  }

  dimension: url_path {
    type: string
    sql: ${TABLE}.url_path ;;
  }

  dimension: visibility {
    type: number
    sql: ${TABLE}.visibility ;;
  }

  dimension: weekly_deal {
    type: number
    sql: ${TABLE}.weekly_deal ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  dimension: weight_type {
    type: number
    sql: ${TABLE}.weight_type ;;
  }

  dimension: ytb_video {
    type: string
    sql: ${TABLE}.ytb_video ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
