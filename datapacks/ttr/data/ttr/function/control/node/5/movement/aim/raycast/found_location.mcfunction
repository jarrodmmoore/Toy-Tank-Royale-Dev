#bup
summon marker ~ 15 ~ {UUID:[I;420,0,0,69],Tags:["lookyhere"]}
#particle falling_dust{block_state:"minecraft:lime_wool"} ~ 30 ~ 0 1 0 1 2 force

scoreboard players set #check value 0

#tag @e[tag=lookyhere,limit=1,type=marker] add not_me_please
#scoreboard players operation @s targetID = @e[limit=1,sort=nearest,tag=player_char,tag=!not_me_please,tag=!player_ded] playerID
#execute unless entity @e[limit=1,sort=nearest,tag=player_char,tag=!not_me_please,tag=!player_ded] run scoreboard players set @s targetID 0
#tag @e[tag=lookyhere,limit=1,type=marker] remove not_me_please