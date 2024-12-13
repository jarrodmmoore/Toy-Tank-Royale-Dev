#get team
execute if score #opt_teams value matches 1 if entity @s[tag=!botHasTeam] run function ttr:ai/join_team

#give this bot an item tick
function ttr:random/powerups/assign_item_tick

#get random traits
scoreboard players operation @s aiSkill = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..3}] randomize
scoreboard players operation @s aiAggression = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..4}] randomize
scoreboard players operation @s aiGreed = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=3..5}] randomize
scoreboard players operation @s aiChaotic = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..5}] randomize
scoreboard players operation @s aiVengeful = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..5}] randomize

execute if score #opt_aidifficulty value matches 0 run function ttr:ai/mutate_extreme
execute if score #opt_aidifficulty value matches 1.. run function ttr:ai/mutate_limit

#debug random traits
#scoreboard players set @s aiSkill 3
#scoreboard players set @s aiAggression 3
#scoreboard players set @s aiGreed 3
#scoreboard players set @s aiChaotic 3
#scoreboard players set @s aiVengeful 3

#values i guess
scoreboard players set @s haltMovement 0
execute if score #opt_allow_coins value matches 1 run scoreboard players set @s aiCoins 10
execute if score #opt_allow_coins value matches 0 run scoreboard players set @s aiCoins 0
scoreboard players set @s aiPoints 0
scoreboard players set @s lastKillerID -1
scoreboard players set @s aiRandomOffsetX 0
scoreboard players set @s aiRandomOffsetZ 0
scoreboard players set @s tankDash 0

#back to max hitpoints
scoreboard players add @s hitpoints 0
scoreboard players operation @s hitpoints = #opt_hitpoints value
scoreboard players set @s[scores={hitpoints=..0}] hitpoints 1

#get colors
function ttr:game/colors/get_colors

#get player model
scoreboard players add @s tankBodyModel 0
scoreboard players add @s tankHeadModel 0
#change of becoming a turtle if players have discovered that turtles exist
scoreboard players set #randomModel value 0
execute if entity @a[scores={tankBodyModel=1}] run scoreboard players set #randomModel value 1
execute if entity @a[scores={tankHeadModel=1}] run scoreboard players set #randomModel value 1
execute if score #force_turtles value matches 0 if score #randomModel value matches 1 run function ttr:ai/ai_setup_random_model
#force turtle models
execute if score #force_turtles value matches 1 run scoreboard players set @s tankBodyModel 1
execute if score #force_turtles value matches 1 run scoreboard players set @s tankHeadModel 1

#THIS IS NOW A PART OF THE FUNCTION ABOVE (ttr:game/colors/get_colors)
#get team color and proper name
#execute unless entity @s[scores={color_2=2..}] run function ttr:ai/color_setup/green
#execute if entity @s[scores={color_2=2}] run function ttr:ai/color_setup/red
#execute if entity @s[scores={color_2=3}] run function ttr:ai/color_setup/blue
#execute if entity @s[scores={color_2=4}] run function ttr:ai/color_setup/yellow
#execute if entity @s[scores={color_2=5}] run function ttr:ai/color_setup/white
#execute if entity @s[scores={color_2=6}] run function ttr:ai/color_setup/pink
#execute if entity @s[scores={color_2=7}] run function ttr:ai/color_setup/cyan
#execute if entity @s[scores={color_2=8}] run function ttr:ai/color_setup/gray

execute if entity @s[scores={playerID=1}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_1"}'}
execute if entity @s[scores={playerID=2}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_2"}'}
execute if entity @s[scores={playerID=3}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_3"}'}
execute if entity @s[scores={playerID=4}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_4"}'}
execute if entity @s[scores={playerID=5}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_5"}'}
execute if entity @s[scores={playerID=6}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_6"}'}
execute if entity @s[scores={playerID=7}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_7"}'}
execute if entity @s[scores={playerID=8}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_8"}'}
execute if entity @s[scores={playerID=9}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_9"}'}
execute if entity @s[scores={playerID=10}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_10"}'}

execute if entity @s[scores={playerID=11}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_11"}'}
execute if entity @s[scores={playerID=12}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_12"}'}
execute if entity @s[scores={playerID=13}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_13"}'}
execute if entity @s[scores={playerID=14}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_14"}'}
execute if entity @s[scores={playerID=15}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_15"}'}
execute if entity @s[scores={playerID=16}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_16"}'}
execute if entity @s[scores={playerID=17}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_17"}'}
execute if entity @s[scores={playerID=18}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_18"}'}
execute if entity @s[scores={playerID=19}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_19"}'}
execute if entity @s[scores={playerID=20}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_20"}'}

execute if entity @s[scores={playerID=21}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_21"}'}
execute if entity @s[scores={playerID=22}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_22"}'}
execute if entity @s[scores={playerID=23}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_23"}'}
execute if entity @s[scores={playerID=24}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_24"}'}
execute if entity @s[scores={playerID=25}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_25"}'}
execute if entity @s[scores={playerID=26}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_26"}'}
execute if entity @s[scores={playerID=27}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_27"}'}
execute if entity @s[scores={playerID=28}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_28"}'}
execute if entity @s[scores={playerID=29}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_29"}'}
execute if entity @s[scores={playerID=30}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_30"}'}

execute if entity @s[scores={playerID=31}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_31"}'}
execute if entity @s[scores={playerID=32}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_32"}'}
execute if entity @s[scores={playerID=33}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_33"}'}
execute if entity @s[scores={playerID=34}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_34"}'}
execute if entity @s[scores={playerID=35}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_35"}'}
execute if entity @s[scores={playerID=36}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_36"}'}
execute if entity @s[scores={playerID=37}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_37"}'}
execute if entity @s[scores={playerID=38}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_38"}'}
execute if entity @s[scores={playerID=39}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_39"}'}
execute if entity @s[scores={playerID=40}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_40"}'}

execute if entity @s[scores={playerID=41}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_41"}'}
execute if entity @s[scores={playerID=42}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_42"}'}
execute if entity @s[scores={playerID=43}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_43"}'}
execute if entity @s[scores={playerID=44}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_44"}'}
execute if entity @s[scores={playerID=45}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_45"}'}
execute if entity @s[scores={playerID=46}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_46"}'}
execute if entity @s[scores={playerID=47}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_47"}'}
execute if entity @s[scores={playerID=48}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_48"}'}
execute if entity @s[scores={playerID=49}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_49"}'}
execute if entity @s[scores={playerID=50}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_50"}'}

execute if entity @s[scores={playerID=51}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_51"}'}
execute if entity @s[scores={playerID=52}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_52"}'}
execute if entity @s[scores={playerID=53}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_53"}'}
execute if entity @s[scores={playerID=54}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_54"}'}
execute if entity @s[scores={playerID=55}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_55"}'}
execute if entity @s[scores={playerID=56}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_56"}'}
execute if entity @s[scores={playerID=57}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_57"}'}
execute if entity @s[scores={playerID=58}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_58"}'}
execute if entity @s[scores={playerID=59}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_59"}'}
execute if entity @s[scores={playerID=60}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_60"}'}

execute if entity @s[scores={playerID=61}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_61"}'}
execute if entity @s[scores={playerID=62}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_62"}'}
execute if entity @s[scores={playerID=63}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_63"}'}
execute if entity @s[scores={playerID=64}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU_64"}'}

execute if entity @s[scores={playerID=65..999}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"CPU"}'}

execute if score #opt_teams value matches 0 run tellraw @a[tag=inControl,scores={shutUp=..0}] ["",{"translate":"ttr.game.ai_joined_game","color":"#66FF88","with":[{"selector":"@s"}]}]
execute if score #opt_teams value matches 1 if entity @s[tag=redTeam] run tellraw @a[tag=inControl,scores={shutUp=..0}] ["",{"translate":"ttr.game.joined_red_team","color":"red","with":[{"selector":"@s"}]}]
execute if score #opt_teams value matches 1 if entity @s[tag=blueTeam] run tellraw @a[tag=inControl,scores={shutUp=..0}] ["",{"translate":"ttr.game.joined_blue_team","color":"blue","with":[{"selector":"@s"}]}]

#recalculate team balance NOW! it's possible that multiple players may check team balance on the same tick.
function ttr:game/team_availability