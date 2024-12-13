#look at player if need be
execute if entity @s[tag=!redTeam,tag=!blueTeam] if entity @e[distance=..4,tag=player_char,tag=!self101,tag=!player_ded] run scoreboard players operation @s aiLookID = @e[limit=1,sort=nearest,distance=..4,tag=player_char,tag=!self101,tag=!player_ded] playerID
execute if entity @s[tag=redTeam] if entity @e[distance=..4,tag=player_char,tag=!redTeam,tag=!self101,tag=!player_ded] run scoreboard players operation @s aiLookID = @e[limit=1,sort=nearest,distance=..4,tag=player_char,tag=!self101,tag=!player_ded] playerID
execute if entity @s[tag=blueTeam] if entity @e[distance=..4,tag=player_char,tag=!blueTeam,tag=!self101,tag=!player_ded] run scoreboard players operation @s aiLookID = @e[limit=1,sort=nearest,distance=..4,tag=player_char,tag=!self101,tag=!player_ded] playerID

execute run tag @e[limit=1,sort=nearest,distance=..5,tag=!self101,tag=p_can_hit,tag=!player_ded,tag=!mine] add panic_focus
execute as @e[limit=1,sort=nearest,distance=1..2,tag=panic_focus,tag=!player_char] at @s rotated ~ 0 positioned ^ ^ ^1 run summon marker ~ ~ ~ {UUID:[I;66,66,66,66],Tags:["panic_projection"]}
execute as @e[limit=1,sort=nearest,distance=2..3,tag=panic_focus,tag=!player_char] at @s rotated ~ 0 positioned ^ ^ ^1.5 run summon marker ~ ~ ~ {UUID:[I;66,66,66,66],Tags:["panic_projection"]}
execute as @e[limit=1,sort=nearest,distance=3..,tag=panic_focus,tag=!player_char] at @s rotated ~ 0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {UUID:[I;66,66,66,66],Tags:["panic_projection"]}
execute as @e[limit=1,sort=nearest,tag=panic_focus,tag=player_char] at @s rotated ~ 0 positioned ^ ^ ^ run summon marker ~ ~ ~ {UUID:[I;66,66,66,66],Tags:["panic_projection"]}
tp 0000001d-0000-0001-0000-000000000003 ~ ~-1.2 ~ facing entity 00000042-0000-0042-0000-004200000042 eyes
scoreboard players set @s aiDelayAim 10
kill 00000042-0000-0042-0000-004200000042
tag @e[tag=panic_focus] remove panic_focus