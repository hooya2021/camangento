view: importexport_importdata {
  sql_table_name: `alidbtogcp.costway_ca_db.importexport_importdata`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: behavior {
    type: string
    sql: ${TABLE}.behavior ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: entity {
    type: string
    sql: ${TABLE}.entity ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
