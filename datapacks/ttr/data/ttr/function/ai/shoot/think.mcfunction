scoreboard players set @s aiShootImpulse 0

#shoot at walls
execute positioned ^ ^ ^1 if block ~ ~1 ~ #ttr:breakable run scoreboard players set @s aiShootImpulse 1
execute positioned ^ ^ ^1.5 if block ~ ~1 ~ #ttr:breakable run scoreboard players set @s aiShootImpulse 1
execute positioned ^ ^ ^2 if block ~ ~1 ~ #ttr:breakable run scoreboard players set @s aiShootImpulse 1

#shoot when line of sight is good
scoreboard players set @s[tag=shoot_LOS,scores={aiLookID=1..}] aiShootImpulse 1
scoreboard players set @s[tag=looking_at_mine,scores={aiShootImpulse=1..}] aiLookID -1
scoreboard players set @s[tag=looking_at_invisnode,scores={aiShootImpulse=1..}] aiLookID -1

#use specials?
execute if entity @s[scores={aiThinkCooldown=..0}] run function ttr:ai/shoot/think_specials

#do panic stuff when players or pellets nearby
scoreboard players set @s[tag=panic] aiShootImpulse 1
execute if entity @s[tag=panic,scores={hasItem4=1..}] if entity @e[distance=..5,tag=player_char,type=zombie,tag=!self101,tag=!player_ded] run scoreboard players set @s aiShootImpulse 4
execute if entity @s[tag=panic,scores={hasItem9=1..}] if entity @e[distance=..5,tag=player_char,type=zombie,tag=!self101,tag=!player_ded] run scoreboard players set @s aiShootImpulse 9
execute if entity @s[tag=panic,scores={hasItem8=1..}] if entity @e[distance=..5,tag=player_char,type=zombie,tag=!self101,tag=!player_ded] run scoreboard players set @s aiShootImpulse 8

#now.. perform the shoot!
execute if entity @s[scores={aiShootImpulse=1..}] run function ttr:shoot/_ai_shoot_index