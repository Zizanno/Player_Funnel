select *
, case when type_old='loading screen' and  trim(split(context_old,'-')[offset(2)])='Triggered' then 'tutorialStepTriggered'
when type_old='loading screen' and  trim(split(context_old,'-')[offset(2)])='Complete' then 'tutorialStepComplete'
else type_old end as type
from
(

select user_id
  , case when type='tutorialStep' then 'tutorialStepTriggered' else type end as type_old
  , seconds
  , country
  , platform
  , date_processed
  , client_version
  , session_change_detection
  , number_of_sessions
  , D0_session
  , system_memory_size
  , processor_count
  , context  as context_old
  , media_source 
, case when	context=	"pre_mission_1 - loading_screen - Complete"	then	"001S_pre_mission_1 - loading_screen"
when	context=	"pre_mission_1 - loading_screen - Triggered"	then	"001S_pre_mission_1 - loading_screen"
when	context=	"11_greeting_0_Greeting_1"	then	"003S_11_greeting_0_Greeting_1"
when	context=	"9_combat_lvl_1_0_Shooting"	then	"004S_9_combat_lvl_1_0_Shooting"
when	context=	"9_combat_lvl_1_1_Drones"	then	"005S_9_combat_lvl_1_1_Drones"
when	context=	"9_combat_lvl_1_2_Cover"	then	"006S_9_combat_lvl_1_2_Cover"
when	context=	"9_combat_lvl_1_3_Focus Fire"	then	"007S_9_combat_lvl_1_3_Focus Fire"
when	context=	"14_Boss_0_Boss Intro"	then	"008S_14_Boss_0_Boss Intro"
when	context=	"14_Boss_1_Enemy Mech Intro"	then	"009S_14_Boss_1_Enemy Mech Intro"
when	context=	"14_Boss_2_CATS Intro"	then	"010S_14_Boss_2_CATS Intro"
when	context=	"14_Boss_3_Press Hack Button"	then	"011S_14_Boss_3_Press Hack Button"
when	context=	"14_Boss_4_Hack This"	then	"012S_14_Boss_4_Hack This"
when	context=	"14_Boss_5_Hack Finished"	then	"013S_14_Boss_5_Hack Finished"
when	context=	"1_complete_mission_1_0_Complete Mission 1"	then	"014S_1_complete_mission_1_0_Complete Mission 1"
when	context=	"9_combat_lvl_1_4_Complete the mission"	then	"015S_9_combat_lvl_1_4_Complete the mission"
when	context=	"14_Boss_6_Complete Mission"	then	"016S_14_Boss_6_Complete Mission"
when	context=	"1_complete_mission_1_1_Press next"	then	"017S_1_complete_mission_1_1_Press next"
when	context=	"1_complete_mission_1_2_Press continue"	then	"018S_1_complete_mission_1_2_Press continue"
when	context=	"post_mission_1 - loading_screen - Triggered"	then	"019S_post_mission_1 - loading_screen"
when	context=	"post_mission_1 - loading_screen - Complete"	then	"019S_post_mission_1 - loading_screen"
when	context=	"4_unlock_second_mech_0_Mech Shards"	then	"021S_4_unlock_second_mech_0_Mech Shards"
when	context=	"4_unlock_second_mech_1_Press Unlock"	then	"022S_4_unlock_second_mech_1_Press Unlock"
when	context=	"4_unlock_second_mech_2_Press continue"	then	"023S_4_unlock_second_mech_2_Press continue"
when	context=	"pre_mech_unlock_beauty_shots - loading_screen - Triggered"	then	"024S_pre_mech_unlock_beauty_shots - loading_screen"
when	context=	"pre_mech_unlock_beauty_shots - loading_screen - Complete"	then	"024S_pre_mech_unlock_beauty_shots - loading_screen"
when	context=	"post_mech_unlock_beauty_shots - loading_screen - Triggered"	then	"026S_post_mech_unlock_beauty_shots - loading_screen"
when	context=	"post_mech_unlock_beauty_shots - loading_screen - Complete"	then	"026S_post_mech_unlock_beauty_shots - loading_screen"
when	context=	"5_hq_intro_0_HQ DIstrict Info 1"	then	"028S_5_hq_intro_0_HQ DIstrict Info 1"
when	context=	"5_hq_intro_1_HQ District Info 4"	then	"029S_5_hq_intro_1_HQ District Info 4"
when	context=	"5_hq_intro_2_Select HQ"	then	"030S_5_hq_intro_2_Select HQ"
when	context=	"5_hq_intro_3_HQ Building Intro"	then	"031S_5_hq_intro_3_HQ Building Intro"
when	context=	"5_hq_intro_4_Open HQ Dialog"	then	"032S_5_hq_intro_4_Open HQ Dialog"
when	context=	"5_hq_intro_5_Upgrade HQ"	then	"033S_5_hq_intro_5_Upgrade HQ"
when	context=	"5_hq_intro_6_Collect Upgrade Rewards"	then	"034S_5_hq_intro_6_Collect Upgrade Rewards"
when	context=	"5_hq_intro_7_Close Popup"	then	"035S_5_hq_intro_7_Close Popup"
when	context=	"6_base_building_intro_0_District Intro"	then	"036S_6_base_building_intro_0_District Intro"
when	context=	"6_base_building_intro_1_Go To District"	then	"037S_6_base_building_intro_1_Go To District"
when	context=	"6_base_building_intro_2_Enter Edit Mode"	then	"038S_6_base_building_intro_2_Enter Edit Mode"
when	context=	"6_base_building_intro_3_Zones Intro"	then	"039S_6_base_building_intro_3_Zones Intro"
when	context=	"6_base_building_intro_4_Drag Zone Begin"	then	"040S_6_base_building_intro_4_Drag Zone Begin"
when	context=	"6_base_building_intro_5_Drag Zone End"	then	"041S_6_base_building_intro_5_Drag Zone End"
when	context=	"6_base_building_intro_6_Focus Zone Slot"	then	"042S_6_base_building_intro_6_Focus Zone Slot"
when	context=	"6_base_building_intro_7_Buildings Intro 2"	then	"043S_6_base_building_intro_7_Buildings Intro 2"
when	context=	"6_base_building_intro_8_Select Buildings Tab"	then	"044S_6_base_building_intro_8_Select Buildings Tab"
when	context=	"6_base_building_intro_9_Drag Building Begin"	then	"045S_6_base_building_intro_9_Drag Building Begin"
when	context=	"6_base_building_intro_10_Drag Building End"	then	"046S_6_base_building_intro_10_Drag Building End"
when	context=	"6_base_building_intro_11_Activate Building"	then	"047S_6_base_building_intro_11_Activate Building"
when	context=	"6_base_building_intro_12_Squads Intro"	then	"048S_6_base_building_intro_12_Squads Intro"
when	context=	"6_base_building_intro_13_Select Squads Tab"	then	"049S_6_base_building_intro_13_Select Squads Tab"
when	context=	"6_base_building_intro_14_Drag Squad Begin"	then	"050S_6_base_building_intro_14_Drag Squad Begin"
when	context=	"6_base_building_intro_15_Drag Squad End"	then	"051S_6_base_building_intro_15_Drag Squad End"
when	context=	"6_base_building_intro_16_Activate Squad"	then	"052S_6_base_building_intro_16_Activate Squad"
when	context=	"6_base_building_intro_17_Mech Bridge"	then	"053S_6_base_building_intro_17_Mech Bridge"
when	context=	"6_base_building_intro_18_Back Button"	then	"054S_6_base_building_intro_18_Back Button"
when	context=	"6_base_building_intro_19_Return to HQ"	then	"055S_6_base_building_intro_19_Return to HQ"
when	context=	"7_battle_intro_0_Battle Intro 1"	then	"056S_7_battle_intro_0_Battle Intro 1"
when	context=	"7_battle_intro_1_Battle Intro 2"	then	"057S_7_battle_intro_1_Battle Intro 2"
when	context=	"7_battle_intro_2_Press Battle"	then	"058S_7_battle_intro_2_Press Battle"
when	context=	"pre_mission_2_mode_selection - loading_screen - Triggered"	then	"059S_pre_mission_2_mode_selection - loading_screen"
when	context=	"pre_mission_2_mode_selection - loading_screen - Complete"	then	"059S_pre_mission_2_mode_selection - loading_screen"
when	context=	"7_battle_intro_3_Mode Select Intro 1"	then	"061S_7_battle_intro_3_Mode Select Intro 1"
when	context=	"7_battle_intro_4_Select Telemetry Capture"	then	"062S_7_battle_intro_4_Select Telemetry Capture"
when	context=	"pre_mission_2_route_selection - loading_screen - Triggered"	then	"063S_pre_mission_2_route_selection - loading_screen"
when	context=	"pre_mission_2_route_selection - loading_screen - Complete"	then	"063S_pre_mission_2_route_selection - loading_screen"
when	context=	"7_battle_intro_5_Highlight Attack"	then	"065S_7_battle_intro_5_Highlight Attack"
when	context=	"pre_mission_2 - loading_screen - Triggered"	then	"066S_pre_mission_2 - loading_screen"
when	context=	"pre_mission_2 - loading_screen - Complete"	then	"066S_pre_mission_2 - loading_screen"
when	context=	"19_FTUE 2 intro_0_FTUE 2 intro"	then	"068S_19_FTUE 2 intro_0_FTUE 2 intro"
when	context=	"12_Warning for incoming mech_0_Warning"	then	"069S_12_Warning for incoming mech_0_Warning"
when	context=	"13_Mech Swap_0_Mech Swap - Enter"	then	"070S_13_Mech Swap_0_Mech Swap - Enter"
when	context=	"13_Mech Swap_1_Mech Swap - Select"	then	"071S_13_Mech Swap_1_Mech Swap - Select"
when	context=	"13_Mech Swap_2_Inefficient weapons"	then	"072S_13_Mech Swap_2_Inefficient weapons"
when	context=	"13_Mech Swap_3_Complete the mission"	then	"073S_13_Mech Swap_3_Complete the mission"
when	context=	"2_complete_mission_2_0_Complete Mission 2"	then	"074S_2_complete_mission_2_0_Complete Mission 2"
when	context=	"7_battle_intro_6_Complete Mission"	then	"075S_7_battle_intro_6_Complete Mission"
when	context=	"12_Warning for incoming mech_1_Complete miss"	then	"076S_12_Warning for incoming mech_1_Complete miss"
when	context=	"2_complete_mission_2_1_Press next"	then	"077S_2_complete_mission_2_1_Press next"
when	context=	"2_complete_mission_2_2_Press continue"	then	"078S_2_complete_mission_2_2_Press continue"
when	context=	"post_mission_2 - loading_screen - Triggered"	then	"079S_post_mission_2 - loading_screen"
when	context=	"post_mission_2 - loading_screen - Complete"	then	"079S_post_mission_2 - loading_screen"
when	context=	"16_upgrade_mech_0_Upgrade Mech Intro"	then	"081S_16_upgrade_mech_0_Upgrade Mech Intro"
when	context=	"16_upgrade_mech_1_Select Hangar"	then	"082S_16_upgrade_mech_1_Select Hangar"
when	context=	"16_upgrade_mech_2_Enter Hangar"	then	"083S_16_upgrade_mech_2_Enter Hangar"
when	context=	"mech_gallery - loading_screen - Triggered"	then	"084S_mech_gallery - loading_screen"
when	context=	"mech_gallery - loading_screen - Complete"	then	"084S_mech_gallery - loading_screen"
when	context=	"16_upgrade_mech_3_Select Mech"	then	"086S_16_upgrade_mech_3_Select Mech"
when	context=	"hangar - loading_screen - Triggered"	then	"087S_hangar - loading_screen"
when	context=	"hangar - loading_screen - Complete"	then	"087S_hangar - loading_screen"
when	context=	"16_upgrade_mech_4_Hardware Tab"	then	"089S_16_upgrade_mech_4_Hardware Tab"
when	context=	"16_upgrade_mech_5_Select Weapon"	then	"090S_16_upgrade_mech_5_Select Weapon"
when	context=	"16_upgrade_mech_6_Upgrade Weapon"	then	"091S_16_upgrade_mech_6_Upgrade Weapon"
when	context=	"16_upgrade_mech_7_Post Weapon Upgrade"	then	"092S_16_upgrade_mech_7_Post Weapon Upgrade"
when	context=	"16_upgrade_mech_8_Press back button"	then	"093S_16_upgrade_mech_8_Press back button"
when	context=	"post_mech_upgrade - loading_screen - Triggered"	then	"094S_post_mech_upgrade - loading_screen"
when	context=	"post_mech_upgrade - loading_screen - Complete"	then	"094S_post_mech_upgrade - loading_screen"
when	context=	"8_shop_intro_0_Shop Intro 1"	then	"096S_8_shop_intro_0_Shop Intro 1"
when	context=	"8_shop_intro_1_Shop Intro 2"	then	"097S_8_shop_intro_1_Shop Intro 2"
when	context=	"8_shop_intro_2_Press Shop"	then	"098S_8_shop_intro_2_Press Shop"
when	context=	"8_shop_intro_3_Press Arms Dealer"	then	"099S_8_shop_intro_3_Press Arms Dealer"
when	context=	"8_shop_intro_4_Purchase Shipment"	then	"100S_8_shop_intro_4_Purchase Shipment"
when	context=	"post_shop - loading_screen - Triggered"	then	"101S_post_shop - loading_screen"
when	context=	"post_shop - loading_screen - Complete"	then	"101S_post_shop - loading_screen"
when	context=	"8_shop_intro_5_Mech Upgrades Intro"	then	"103S_8_shop_intro_5_Mech Upgrades Intro"
when	context=	"pre_resource_office_upgrade - loading_screen - Triggered"	then	"104S_pre_resource_office_upgrade - loading_screen"
when	context=	"pre_resource_office_upgrade - loading_screen - Complete"	then	"104S_pre_resource_office_upgrade - loading_screen"
when	context=	"8_shop_intro_6_Return to district"	then	"106S_8_shop_intro_6_Return to district"
when	context=	"17_upgrade_resource_office_0_Intro"	then	"107S_17_upgrade_resource_office_0_Intro"
else context 
end as context
from
(
  select user_id
  , case when type='tutorialStep' then 'tutorialStepTriggered' else type end as type
  ,	context
  ,timestamp_diff(timestamp(event_timestamp_after),timestamp(event_timestamp) , second) as seconds
  , country
  , platform
  , date_processed
  , client_version
  , case when rank_sessions_after-rank_sessions>0 then 1 else 0 end as session_change_detection
  , max(rank_sessions) over (partition by user_id) as number_of_sessions
  , date(D0_session) as D0_session
  , system_memory_size
  , processor_count

  from
  (
    select event_timestamp,user_id,rank() over (partition by user_id order by event_timestamp) as rank_milsestones,context, date(event_timestamp) as date_last_milestone
    ,date_processed,dense_rank() over (partition by user_id  order by date_processed, session_id desc ) as rank_sessions,session_id ,type
    from(
      select max(event_timestamp) as event_timestamp
      , user_id,context,session_id 
      , max(date(metadata_timestamp)) as date_processed
      , split(context, '_')[OFFSET(0)] as splited
      , type
      from dw_mtlb_live.progression
      where  date(metadata_timestamp)>='2019-01-14'
      group by user_id,context,session_id, type
      order by event_timestamp

     )a
       order by user_id,event_timestamp
  )a
  left join
  (
    select event_timestamp as event_timestamp_after
     , user_id as user_id_after
     , session_id,rank() over (partition by user_id order by event_timestamp) as rank_milsestones_after
     , context as context_after
     , dense_rank() over (partition by user_id  order by session_id desc ) as rank_sessions_after
     , type as type_after
    from(
      select max(event_timestamp) as event_timestamp
      , user_id
      ,context
      ,session_id
      , type
      from dw_mtlb_live.progression
        group by user_id,context,session_id, type
      order by event_timestamp
     )a
  )b
  on a.user_id=b.user_id_after and a.rank_milsestones=b.rank_milsestones_after-1
  left join
  ( 
      select country,platform,user_id as user_id_client, build_number,client_version, system_memory_size
  , processor_count
      from (
         SELECT min((event_date)) AS D0
        , user_id
        , country
        , build_number
        , platform
        , client_version
        , system_memory_size
        , processor_count
        , rank() over ( partition by  user_id order by min((event_date)),country,build_number,platform, client_version,system_memory_size,processor_count ) as ranks
        from dw_mtlb_live.client_device 
        group by  user_id , country  , build_number   , platform,client_version,system_memory_size  ,processor_count
        order by user_id
          )g
        where ranks=1
   )c
  on a.user_id=c.user_id_client
  left join
  (
    select cast(split(split(message, ",")[offset(2)], ")")[offset(0)] as int64) as user_id_session
    , min(event_timestamp) as D0_session
    from dw_mtlb_live.session_start
    group by cast(split(split(message, ",")[offset(2)], ")")[offset(0)] as int64)
  )d
  on a.user_id=d.user_id_session
  where client_version>='0.131.0'
  and client_version in ('0.131.0.0', '0.142.0.0', '0.150.3.0','0.160.4.0','0.170.6.0') or  client_version>='0.170.6.0'
)a
left join
(
      select *
      from
      (
      SELECT   rank() over (partition by advertising_id  order by  install_time,customer_user_id , media_source,carrier,city,fb_adset_name,app_version,af_adset ,af_ad, fb_campaign_name,campaign ) as rank_
      ,media_source
      ,carrier
      ,city
      ,fb_adset_name
      ,app_version
      ,cast(customer_user_id as INT64) as customer_user_id
      ,advertising_id
      , install_time 
      , af_adset 
      , af_ad
      , fb_campaign_name
      , campaign
      FROM `dw_appsflyer.af_raw_events`  
      where app_name='Metalborne: Mech combat of the future'
      and customer_user_id is not null
      and event_type ='install'
      order by rank_ desc
      )a
      where rank_=1  
      order by customer_user_id
)b
on a.user_id=b.customer_user_id
)a