scoreboard players add @s lifetime 1

particle electric_spark ~ ~1.2 ~ 0.1 0 0.1 .01 1

#explode if our player is missing
#scoreboard players set #find_player value 0
#scoreboard players operation #player_id value = @s playerID
#execute as @e[tag=player_char,type=zombie,tag=!player_ded] if score @s playerID = #player_id value run scoreboard players set #find_player value 1
#execute if score #find_player value matches 0 run scoreboard players add @s lifetime 9999

#start smoking after being alive for a bit... then boom
#execute if entity @s[scores={lifetime=9990..}] run function ttr:pellet/mine_explode

#must be in a valid place
execute unless block ~ 30 ~ #ttr:ai_move_okay_2 run scoreboard players set @s lifetime 9999

#team particles on lazy tick
execute if entity @s[tag=redTeam] at @s run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~1.5 ~ 0 .8 0 0 1 force @a[tag=redTeam]
execute if entity @s[tag=blueTeam] at @s run particle dust{color:[0.0,0.0,1.0],scale:1} ~ ~1.5 ~ 0 .8 0 0 1 force @a[tag=blueTeam]