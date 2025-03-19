scoreboard players set #infection_state value 2

bossbar set tank_bbar players
#scoreboard objectives setdisplay sidebar teamDisplay
scoreboard players set #show_sidebar value 4
scoreboard players set #sidebar_update value 99

#all will respawn!
scoreboard players set @a[tag=inControl] deathTime 1
tag @a[tag=inControl] add force_respawn
tag @e[tag=ai] add ai_need_reset

#reset points related to infection mode
scoreboard players reset @a infectPointsRed
scoreboard players reset @a infectPointsBlue
scoreboard players reset @a infectTimeMin
scoreboard players reset @a infectTimeSec
scoreboard players reset @a infectTimeTick
scoreboard players reset @a infectTimeTick2
#look at this disgusting indulgence of @e
execute if score #ai_count value matches 1.. run scoreboard players reset @e[tag=ai,type=zombie] infectPointsRed
execute if score #ai_count value matches 1.. run scoreboard players reset @e[tag=ai,type=zombie] infectPointsBlue
execute if score #ai_count value matches 1.. run scoreboard players reset @e[tag=ai,type=zombie] infectTimeMin
execute if score #ai_count value matches 1.. run scoreboard players reset @e[tag=ai,type=zombie] infectTimeSec
execute if score #ai_count value matches 1.. run scoreboard players reset @e[tag=ai,type=zombie] infectTimeTick
#...this isn't a looped function so we can get away with it here >:)

#pick one player to be infected, all others are not
scoreboard players operation #infectID value = @e[limit=1,sort=random,type=zombie,tag=player_char,scores={playerID=1..}] playerID
execute as @a[tag=inControl] if score @s playerID = #infectID value run tag @s add infect_on_respawn
tag @a[tag=inControl] add infection_start
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #infectID value run tag @s add infect_on_respawn
execute if score #ai_count value matches 1.. run tag @e[tag=ai,type=zombie] add infection_start

#kill items
kill @e[tag=item_chest,type=armor_stand]
kill @e[tag=pellet]

#regenerate the arena!
function ttr:random/level_gen/shuffled_setup

#set timers
scoreboard players set #infect_progress value 0

#message!
tellraw @a[scores={shutUp=..0}] ["",{text:"\n"},{translate:"ttr.round_started",bold:true},{text:"\n"},{translate:"ttr.good_luck",bold:false},{text:"\n"}]