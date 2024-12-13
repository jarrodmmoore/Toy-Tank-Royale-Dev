#=====
#notify players that we did the thing
execute if score #require_operator value matches 0 unless score @s optSelect matches 2001..2005 unless score @s optSelect matches 3401 run function ttr:admin_menu/select_inform_players
#=====

#player limit
execute if score #require_operator value matches 1 if entity @s[scores={optSelect=101}] run function ttr:admin_menu/player_limit_increment
execute if score #require_operator value matches 1 if entity @s[scores={optSelect=102}] run function ttr:admin_menu/player_limit_decrement

#arena size
execute if entity @s[scores={optSelect=201}] run function ttr:admin_menu/arena_size_dynamic
execute if entity @s[scores={optSelect=202}] run function ttr:admin_menu/arena_size_static

#arena size modifier
execute if score #opt_arenasize value matches 0 if entity @s[scores={optSelect=301}] run function ttr:admin_menu/arena_size_dynamic_increment
execute if score #opt_arenasize value matches 0 if entity @s[scores={optSelect=302}] run function ttr:admin_menu/arena_size_dynamic_decrement
execute if score #opt_arenasize value matches 1 if entity @s[scores={optSelect=301}] run function ttr:admin_menu/arena_size_static_increment
execute if score #opt_arenasize value matches 1 if entity @s[scores={optSelect=302}] run function ttr:admin_menu/arena_size_static_decrement

#arena transform rate
execute if entity @s[scores={optSelect=1301}] run function ttr:admin_menu/arena_transform_never
execute if entity @s[scores={optSelect=1302}] run function ttr:admin_menu/arena_transform_slow
execute if entity @s[scores={optSelect=1303}] run function ttr:admin_menu/arena_transform_normal
execute if entity @s[scores={optSelect=1304}] run function ttr:admin_menu/arena_transform_rapid

#item spawns
execute if entity @s[scores={optSelect=401}] run function ttr:admin_menu/item_spawns_never
execute if entity @s[scores={optSelect=402}] run function ttr:admin_menu/item_spawns_low
execute if entity @s[scores={optSelect=403}] run function ttr:admin_menu/item_spawns_normal
execute if entity @s[scores={optSelect=404}] run function ttr:admin_menu/item_spawns_high

#start with items?
execute if entity @s[scores={optSelect=501}] run function ttr:admin_menu/start_items_disable
execute if entity @s[scores={optSelect=502}] run function ttr:admin_menu/start_items_enable

#respawn time
execute if entity @s[scores={optSelect=601}] run function ttr:admin_menu/respawn_time_dynamic
execute if entity @s[scores={optSelect=602}] run function ttr:admin_menu/respawn_time_4sec
execute if entity @s[scores={optSelect=603}] run function ttr:admin_menu/respawn_time_instant
execute if entity @s[scores={optSelect=604}] run function ttr:admin_menu/respawn_time_10sec

#ai context
execute if entity @s[scores={optSelect=701}] run function ttr:admin_menu/ai_context_singleplayer
execute if entity @s[scores={optSelect=702}] run function ttr:admin_menu/ai_context_always
execute if entity @s[scores={optSelect=703}] run function ttr:admin_menu/ai_context_never
execute if entity @s[scores={optSelect=704}] run function ttr:admin_menu/ai_context_on

#ai count
execute if entity @s[scores={optSelect=801}] run function ttr:admin_menu/ai_count_meet
execute if entity @s[scores={optSelect=802}] run function ttr:admin_menu/ai_count_append

#ai count modifier
execute if score #opt_aicount value matches 0 if entity @s[scores={optSelect=901}] run function ttr:admin_menu/ai_targetcount_increment
execute if score #opt_aicount value matches 0 if entity @s[scores={optSelect=902}] run function ttr:admin_menu/ai_targetcount_decrement
execute if score #opt_aicount value matches 1 if entity @s[scores={optSelect=901}] run function ttr:admin_menu/ai_count_increment
execute if score #opt_aicount value matches 1 if entity @s[scores={optSelect=902}] run function ttr:admin_menu/ai_count_decrement

#ai difficulty
execute if entity @s[scores={optSelect=1001}] run function ttr:admin_menu/ai_difficulty_decrement
execute if entity @s[scores={optSelect=1002}] run function ttr:admin_menu/ai_difficulty_increment

#ai team preference
execute if entity @s[scores={optSelect=3301..3302}] run function ttr:admin_menu/ai_team_preference_set


#kick all players ("require operator" mode only)
#execute if score #require_operator value matches 1 if entity @s[scores={optSelect=1101}] run function ttr:admin_menu/kick_players
execute if entity @s[scores={optSelect=1101}] run function ttr:admin_menu/kick_players

#restore all defaults
execute if entity @s[scores={optSelect=1201}] run function ttr:admin_menu/restore_defaults


#re-open first menu
execute if entity @s[scores={optSelect=2002}] run function ttr:admin_menu/_open

#open the ai menu
execute if entity @s[scores={optSelect=2003}] run function ttr:admin_menu/_open_advanced

#open the item bans menu
execute if entity @s[scores={optSelect=2004}] run function ttr:admin_menu/_open_item_bans

#open the arena settings menu
execute if entity @s[scores={optSelect=2005}] run function ttr:admin_menu/_open_arena_settings

#team settings
execute if entity @s[scores={optSelect=3401}] run function ttr:admin_menu/_open_team_settings

#gamemode change?
execute if entity @s[scores={optSelect=2001}] run function ttr:admin_menu/_open_gamemode

#set gamemode
execute if entity @s[scores={optSelect=2101}] run function ttr:admin_menu/set_gamemode_1
execute if entity @s[scores={optSelect=2102}] run function ttr:admin_menu/set_gamemode_2
execute if entity @s[scores={optSelect=2103}] run function ttr:admin_menu/set_gamemode_3
execute if entity @s[scores={optSelect=2104}] run function ttr:admin_menu/set_gamemode_4
execute if entity @s[scores={optSelect=2105}] run function ttr:admin_menu/set_gamemode_5
execute if entity @s[scores={optSelect=2106}] run function ttr:admin_menu/set_gamemode_6
execute if entity @s[scores={optSelect=2107}] run function ttr:admin_menu/set_gamemode_7
execute if entity @s[scores={optSelect=2108}] run function ttr:admin_menu/set_gamemode_8

#change arena layout
execute if entity @s[scores={optSelect=2201..2211}] run function ttr:admin_menu/arena_layout_set

#tank hitpoints
execute if entity @s[scores={optSelect=3001}] run function ttr:admin_menu/tank_hp_increment
execute if entity @s[scores={optSelect=3002}] run function ttr:admin_menu/tank_hp_decrement

#win condition
execute if entity @s[scores={optSelect=2301..2302}] run function ttr:admin_menu/coin_limit_add
execute if entity @s[scores={optSelect=2303..2304}] run function ttr:admin_menu/coin_limit_subtract

execute if entity @s[scores={optSelect=2401..2402}] run function ttr:admin_menu/keep_limit_add
execute if entity @s[scores={optSelect=2403..2404}] run function ttr:admin_menu/keep_limit_subtract

execute if entity @s[scores={optSelect=2601..2602}] run function ttr:admin_menu/score_limit_add
execute if entity @s[scores={optSelect=2603..2604}] run function ttr:admin_menu/score_limit_subtract

execute if entity @s[scores={optSelect=3201..3202}] run function ttr:admin_menu/capture_limit_add
execute if entity @s[scores={optSelect=3203..3204}] run function ttr:admin_menu/capture_limit_subtract

#point decay
execute if entity @s[scores={optSelect=2501..2504}] run function ttr:admin_menu/point_decay_set

#time limit
execute if entity @s[scores={optSelect=2701..2702}] run function ttr:admin_menu/elim_time_limit_add
execute if entity @s[scores={optSelect=2703..2704}] run function ttr:admin_menu/elim_time_limit_subtract

#sudden death
execute if entity @s[scores={optSelect=2801..2802}] run function ttr:admin_menu/sudden_death_set

#point decay
execute if entity @s[scores={optSelect=2901..2903}] run function ttr:admin_menu/coin_mode_set

#item bans
execute if entity @s[scores={optSelect=3101..3118}] run function ttr:admin_menu/item_bans

#team options
execute if entity @s[scores={optSelect=3501..3702}] run function ttr:admin_menu/team_option_set

#self-damage
execute if entity @s[scores={optSelect=3801..3803}] run function ttr:admin_menu/self_damage_set

scoreboard players reset @s optSelect
scoreboard players enable @s optSelect