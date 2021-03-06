create table if not exists ${AQTS_SCHEMA_NAME}.json_data
(json_data_id                            bigint generated by default as identity (start with 1)
,start_time                              timestamp             not null
,response_time                           timestamp             not null
,response_code                           integer               not null
,url                                     text                  not null
,api                                     character varying(25)
,script_name                             character varying(25) not null
,script_pid                              integer               not null
,parameters                              jsonb                 not null
,json_content                            jsonb                 not null
,partition_number                        integer               default extract( month from now() )
,primary key (json_data_id, partition_number)
)
partition by list (partition_number);
