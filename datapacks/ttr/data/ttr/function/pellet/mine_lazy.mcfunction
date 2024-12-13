#execute positioned ~ ~.5 ~ unless entity @e[distance=..1,tag=p_can_hit,tag=!mine,tag=!p_self] run scoreboard players add @s lifetime 1

#explode if someone steps on us
#execute if entity @s[scores={lifetime=5..}] positioned ~ ~.5 ~ if entity @e[distance=..1,tag=player_char] run function ttr:pellet/mine_explode

#start smoking after being alive for a bit... then boom
scoreboard players set #damage_source value 6
execute if entity @s[scores={lifetime=500..}] run particle smoke ~ ~1.1 ~ 0.1 0.1 0.1 .01 1 force @a
execute if entity @s[scores={lifetime=600..}] run function ttr:pellet/mine_explode

#must be in a valid place (we'll check this on lazy ticks... why not lmao)
execute unless block ~ 30 ~ #ttr:ai_move_okay_2 run scoreboard players set @s lifespan 0

#team particles on lazy tick
execute if entity @s[tag=redTeam] at @s run particle dust{color:[1.0,0.0,0.1],scale:1} ~ ~1.5 ~ 0 .8 0 0 1 force @a[tag=redTeam]
execute if entity @s[tag=blueTeam] at @s run particle dust{color:[0.0,0.0,1.0],scale:1} ~ ~1.5 ~ 0 .8 0 0 1 force @a[tag=blueTeam]