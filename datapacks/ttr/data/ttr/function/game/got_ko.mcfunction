scoreboard players add @s burstStreak 1

#points in infection mode
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 if entity @s[tag=redTeam] run scoreboard players add @s infectPointsRed 1
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 if entity @s[tag=blueTeam] run scoreboard players add @s infectPointsBlue 1

#show burst streak message on actionbar
execute if entity @s[scores={burstStreak=2..}] run scoreboard players set @s[scores={actionbarState=..1}] actionbarTime 60
execute if entity @s[scores={burstStreak=2..}] run scoreboard players set @s[scores={actionbarState=..1}] actionbarState 2

#nerf the ai upon getting its first kill, everything after has no penalty
execute if entity @s[tag=ai,scores={burstStreak=1..2}] run function ttr:ai/mutate_negative

#dinner
tag @s add winner_chicken
execute if entity @s[scores={burstStreak=5}] as @a unless entity @s[scores={shutUp=1..}] run tellraw @s ["",{text:" "},{translate:"ttr.game.burst_streak_5",italic:true,with:[{selector:"@e[limit=1,tag=winner_chicken]",italic:true}]},{text:" >> 5",color:"green"}]
execute if entity @s[scores={burstStreak=10}] as @a unless entity @s[scores={shutUp=1..}] run tellraw @s ["",{text:" "},{translate:"ttr.game.burst_streak_10",italic:true,with:[{selector:"@e[limit=1,tag=winner_chicken]",italic:true}]},{text:" >> 10",color:"green"}]
execute if entity @s[scores={burstStreak=15}] as @a unless entity @s[scores={shutUp=1..}] run tellraw @s ["",{text:" "},{translate:"ttr.game.burst_streak_15",italic:true,with:[{selector:"@e[limit=1,tag=winner_chicken]",italic:true}]},{text:" >> 15",color:"green"}]
execute if entity @s[scores={burstStreak=20}] as @a unless entity @s[scores={shutUp=1..}] run tellraw @s ["",{text:" "},{translate:"ttr.game.burst_streak_20",italic:true,with:[{selector:"@e[limit=1,tag=winner_chicken]",italic:true}]},{text:" >> 20",color:"green"}]

execute if entity @s[scores={burstStreak=5}] as @a unless entity @s[scores={shutUp=1..}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~100000 ~ 1000000 1
execute if entity @s[scores={burstStreak=10}] as @a unless entity @s[scores={shutUp=1..}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~100000 ~ 1000000 1.25
execute if entity @s[scores={burstStreak=15}] as @a unless entity @s[scores={shutUp=1..}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~100000 ~ 1000000 1.5
execute if entity @s[scores={burstStreak=20}] as @a unless entity @s[scores={shutUp=1..}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~100000 ~ 1000000 1
execute if entity @s[scores={burstStreak=20}] as @a unless entity @s[scores={shutUp=1..}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~100000 ~ 1000000 1.25
execute if entity @s[scores={burstStreak=20}] as @a unless entity @s[scores={shutUp=1..}] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~100000 ~ 1000000 1.5

tag @s remove winner_chicken