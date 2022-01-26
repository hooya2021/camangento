view: sales_flat_quote_payment {
  sql_table_name: `alidbtogcp.costway_ca_db.sales_flat_quote_payment`
    ;;

  dimension: additional_data {
    type: string
    sql: ${TABLE}.additional_data ;;
  }

  dimension: additional_information {
    type: string
    sql: ${TABLE}.additional_information ;;
  }

  dimension: cc_cid_enc {
    type: string
    sql: ${TABLE}.cc_cid_enc ;;
  }

  dimension: cc_exp_month {
    type: number
    sql: ${TABLE}.cc_exp_month ;;
  }

  dimension: cc_exp_year {
    type: number
    sql: ${TABLE}.cc_exp_year ;;
  }

  dimension: cc_last4 {
    type: string
    sql: ${TABLE}.cc_last4 ;;
  }

  dimension: cc_number_enc {
    type: string
    sql: ${TABLE}.cc_number_enc ;;
  }

  dimension: cc_owner {
    type: string
    sql: ${TABLE}.cc_owner ;;
  }

  dimension: cc_ss_issue {
    type: string
    sql: ${TABLE}.cc_ss_issue ;;
  }

  dimension: cc_ss_owner {
    type: string
    sql: ${TABLE}.cc_ss_owner ;;
  }

  dimension: cc_ss_start_month {
    type: number
    sql: ${TABLE}.cc_ss_start_month ;;
  }

  dimension: cc_ss_start_year {
    type: number
    sql: ${TABLE}.cc_ss_start_year ;;
  }

  dimension: cc_type {
    type: string
    sql: ${TABLE}.cc_type ;;
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

  dimension: method {
    type: string
    sql: ${TABLE}.method ;;
  }

  dimension: payment_id {
    type: number
    sql: ${TABLE}.payment_id ;;
  }

  dimension: paypal_correlation_id {
    type: string
    sql: ${TABLE}.paypal_correlation_id ;;
  }

  dimension: paypal_payer_id {
    type: string
    sql: ${TABLE}.paypal_payer_id ;;
  }

  dimension: paypal_payer_status {
    type: string
    sql: ${TABLE}.paypal_payer_status ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.po_number ;;
  }

  dimension: quote_id {
    type: number
    sql: ${TABLE}.quote_id ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
