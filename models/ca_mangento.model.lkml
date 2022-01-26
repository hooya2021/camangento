connection: "ca_mangento"

# include all the views
include: "/views/**/*.view"

datagroup: ca_mangento_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ca_mangento_default_datagroup

explore: catalog_category_entity {}

explore: catalog_category_entity_datetime {}

explore: catalog_category_entity_decimal {}

explore: catalog_category_entity_int {}

explore: catalog_category_entity_text {}

explore: catalog_category_entity_varchar {}

explore: catalog_category_flat_store_1 {}

explore: catalog_category_product {}

explore: catalog_category_product_index {}

explore: catalog_eav_attribute {}

explore: catalog_product_entity {}

explore: catalog_product_entity_datetime {}

explore: catalog_product_entity_decimal {}

explore: catalog_product_entity_int {}

explore: catalog_product_entity_media_gallery {}

explore: catalog_product_entity_media_gallery_value {}

explore: catalog_product_entity_text {}

explore: catalog_product_entity_tier_price {
  join: customer_group {
    type: left_outer
    sql_on: ${catalog_product_entity_tier_price.customer_group_id} = ${customer_group.customer_group_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_product_entity_varchar {}

explore: catalog_product_flat_1 {}

explore: catalog_product_index_eav {}

explore: catalog_product_index_eav_idx {}

explore: catalog_product_index_price {
  join: customer_group {
    type: left_outer
    sql_on: ${catalog_product_index_price.customer_group_id} = ${customer_group.customer_group_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_product_index_price_idx {
  join: customer_group {
    type: left_outer
    sql_on: ${catalog_product_index_price_idx.customer_group_id} = ${customer_group.customer_group_id} ;;
    relationship: many_to_one
  }
}

explore: catalog_product_relation {}

explore: catalog_product_super_attribute {}

explore: catalog_product_super_attribute_label {}

explore: catalog_product_super_attribute_pricing {}

explore: catalog_product_super_link {}

explore: catalog_product_website {}

explore: cataloginventory_stock_item {}

explore: cataloginventory_stock_status {}

explore: cataloginventory_stock_status_idx {}

explore: check_credit_transaction {}

explore: check_order_info {}

explore: coupon_aggregated {}

explore: coupon_aggregated_updated {}

explore: customer_address_entity {}

explore: customer_address_entity_int {}

explore: customer_address_entity_text {}

explore: customer_address_entity_varchar {}

explore: customer_eav_attribute {}

explore: customer_entity {}

explore: customer_entity_datetime {}

explore: customer_entity_int {}

explore: customer_entity_varchar {}

explore: customer_feedback {}

explore: customer_form_attribute {}

explore: customer_group {}

explore: customer_register_ip {}

explore: customer_register_source {}

explore: customer_subreg {}

explore: customer_wholesale {}

explore: directory_country {}

explore: directory_country_region {}

explore: directory_country_region_name {}

explore: directory_currency_rate {}

explore: eav_attribute {}

explore: eav_attribute_group {}

explore: eav_attribute_label {}

explore: eav_attribute_option {}

explore: eav_attribute_option_value {}

explore: eav_attribute_set {}

explore: eav_entity_attribute {}

explore: eav_entity_store {}

explore: eav_entity_type {}

explore: eav_form_element {}

explore: eav_form_fieldset {}

explore: eav_form_type {}

explore: eav_form_type_entity {}

explore: hooya_blacklist_record {}

explore: hooya_hotkeyword_list {}

explore: importexport_importdata {}

explore: index_event {}

explore: index_process {}

explore: index_process_event {}

explore: newsletter_subscriber {}

explore: newsletter_subscriber_info {}

explore: permission_variable {}

explore: plumbase_product {}

explore: plumrocket_sociallogin_account {}

explore: poll {}

explore: poll_answer {
  join: poll {
    type: left_outer
    sql_on: ${poll_answer.poll_id} = ${poll.poll_id} ;;
    relationship: many_to_one
  }
}

explore: rating {}

explore: rating_entity {}

explore: rating_option {
  join: rating {
    type: left_outer
    sql_on: ${rating_option.rating_id} = ${rating.rating_id} ;;
    relationship: many_to_one
  }
}

explore: rating_option_vote {
  join: rating {
    type: left_outer
    sql_on: ${rating_option_vote.rating_id} = ${rating.rating_id} ;;
    relationship: many_to_one
  }
}

explore: rating_option_vote_aggregated {
  join: rating {
    type: left_outer
    sql_on: ${rating_option_vote_aggregated.rating_id} = ${rating.rating_id} ;;
    relationship: many_to_one
  }
}

explore: rating_store {
  join: rating {
    type: left_outer
    sql_on: ${rating_store.rating_id} = ${rating.rating_id} ;;
    relationship: many_to_one
  }
}

explore: report_event {}

explore: report_event_types {}

explore: report_viewed_product_index {}

explore: sales_bestsellers_aggregated_daily {}

explore: sales_bestsellers_aggregated_monthly {}

explore: sales_bestsellers_aggregated_yearly {}

explore: sales_flat_creditmemo {}

explore: sales_flat_creditmemo_comment {}

explore: sales_flat_creditmemo_grid {}

explore: sales_flat_creditmemo_item {}

explore: sales_flat_invoice {}

explore: sales_flat_invoice_grid {}

explore: sales_flat_invoice_item {}

explore: sales_flat_order {
  join: customer_group {
    type: left_outer
    sql_on: ${sales_flat_order.customer_group_id} = ${customer_group.customer_group_id} ;;
    relationship: many_to_one
  }
}

explore: sales_flat_order_address {}

explore: sales_flat_order_grid {}

explore: sales_flat_order_item {}

explore: sales_flat_order_payment {}

explore: sales_flat_order_source {}

explore: sales_flat_order_status_history {}

explore: sales_flat_quote {
  join: customer_group {
    type: left_outer
    sql_on: ${sales_flat_quote.customer_group_id} = ${customer_group.customer_group_id} ;;
    relationship: many_to_one
  }
}

explore: sales_flat_quote_address {}

explore: sales_flat_quote_item {}

explore: sales_flat_quote_item_option {}

explore: sales_flat_quote_payment {}

explore: sales_flat_quote_product_price_email_record {}

explore: sales_flat_quote_shipping_rate {}

explore: sales_flat_quote_stock_email_record {}

explore: sales_flat_shipment_comment {}

explore: sales_flat_shipment_grid {}

explore: sales_flat_shipment_item {}

explore: sales_flat_shipment_track {}

explore: sales_invoiced_aggregated {}

explore: sales_invoiced_aggregated_order {}

explore: sales_order_aggregated_created {}

explore: sales_order_aggregated_updated {}

explore: sales_order_status {}

explore: sales_order_status_state {}

explore: sales_refunded_aggregated {}

explore: sales_refunded_aggregated_order {}

explore: sales_shipping_aggregated {}

explore: sales_shipping_aggregated_order {}

explore: salesrule {}

explore: salesrule_coupon {}

explore: salesrule_coupon_usage {}

explore: salesrule_customer {}

explore: salesrule_customer_coupon {}

explore: salesrule_customer_group {
  join: customer_group {
    type: left_outer
    sql_on: ${salesrule_customer_group.customer_group_id} = ${customer_group.customer_group_id} ;;
    relationship: many_to_one
  }
}

explore: salesrule_customer_sign_coupon {}

explore: salesrule_product_attribute {
  join: customer_group {
    type: left_outer
    sql_on: ${salesrule_product_attribute.customer_group_id} = ${customer_group.customer_group_id} ;;
    relationship: many_to_one
  }
}

explore: salesrule_website {}

explore: sitejabber_review {}

explore: tax_calculation {
  join: tax_calculation_rule {
    type: left_outer
    sql_on: ${tax_calculation.tax_calculation_rule_id} = ${tax_calculation_rule.tax_calculation_rule_id} ;;
    relationship: many_to_one
  }

  join: tax_calculation_rate {
    type: left_outer
    sql_on: ${tax_calculation.tax_calculation_rate_id} = ${tax_calculation_rate.tax_calculation_rate_id} ;;
    relationship: many_to_one
  }
}

explore: tax_calculation_rate {}

explore: tax_calculation_rule {}

explore: tax_class {}

explore: tax_order_aggregated_created {}

explore: tax_order_aggregated_updated {}

explore: wishlist {}

explore: wishlist_item {
  join: wishlist {
    type: left_outer
    sql_on: ${wishlist_item.wishlist_id} = ${wishlist.wishlist_id} ;;
    relationship: many_to_one
  }
}

explore: wishlist_item_option {
  join: wishlist_item {
    type: left_outer
    sql_on: ${wishlist_item_option.wishlist_item_id} = ${wishlist_item.wishlist_item_id} ;;
    relationship: many_to_one
  }

  join: wishlist {
    type: left_outer
    sql_on: ${wishlist_item.wishlist_id} = ${wishlist.wishlist_id} ;;
    relationship: many_to_one
  }
}

explore: wishlist_item_stock_alert {
  join: wishlist {
    type: left_outer
    sql_on: ${wishlist_item_stock_alert.wishlist_id} = ${wishlist.wishlist_id} ;;
    relationship: many_to_one
  }
}

explore: zeon_landingpage {}

explore: zeon_landingpage_store {}
