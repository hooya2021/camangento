view: customer_entity {
  sql_table_name: `alidbtogcp.costway_ca_db.customer_entity`
    ;;

  dimension: attribute_set_id {
    type: number
    sql: ${TABLE}.attribute_set_id ;;
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

  dimension: disable_auto_group_change {
    type: number
    sql: ${TABLE}.disable_auto_group_change ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: entity_type_id {
    type: number
    sql: ${TABLE}.entity_type_id ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.group_id ;;
  }

  dimension: increment_id {
    type: string
    sql: ${TABLE}.increment_id ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
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

  dimension: website_id {
    type: number
    sql: ${TABLE}.website_id ;;
  }

  dimension: customer_verify {
    type: number
    sql: ${TABLE}.customer_verify ;;
  }

  dimension: customer_verify_code {
    case: {
      when: {
        sql: ${TABLE}.customer_verify=1 ;;
        label: "老用户未验证"
      }
      when: {
        sql: ${TABLE}.customer_verify=2 ;;
        label: "新用户未验证"
      }
      when: {
        sql: ${TABLE}.customer_verify=3 ;;
        label: "新用户验证通过"
      }
      else: "其他"
    }
    type: string
    sql: ${TABLE}.customer_verify ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
