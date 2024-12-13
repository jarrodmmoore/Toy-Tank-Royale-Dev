#crown for leading player
execute as @e[limit=1,tag=gold_crown,type=armor_stand] at @s run function ttr:game/crown/_crown_main

#coin limit in play? do stuff
execute if score #opt_coinlimit value matches 11.. run function ttr:gamemodes/1_coinlimit

#not much else needed for this gamemode ;)
#(well, this WAS the originally the only gamemode)