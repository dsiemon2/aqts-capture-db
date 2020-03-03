create table if not exists ${AQTS_SCHEMA_NAME}.groundwater_statistical_daily_value
(groundwater_statistical_daily_value_id  bigint generated by default as identity (start with 1)
,groundwater_daily_value_identifier      character varying (54)
,time_series_unique_id                   character varying (32)
,monitoring_location_identifier          character varying (21)
,observered_property_id                  character varying (5)
,observered_property_name                text
,statistic_id                            character varying (5)
,time_step                               date
,unit_of_measure                         text
,result                                  text
,approvals                               jsonb
,qualifiers                              jsonb
,grades                                  jsonb
,primary key (groundwater_statistical_daily_value_id)
,constraint groundwater_statistical_daily_value_ak unique (time_series_unique_id, time_step)
)