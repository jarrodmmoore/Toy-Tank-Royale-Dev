#crown for leading player
execute as @e[limit=1,tag=gold_crown,type=armor_stand] at @s run function ttr:game/crown/_crown_main

#coin limit in play? do stuff
execute if score #opt_coinmode value matches 1 if score #opt_coinlimit value matches 11.. run function ttr:gamemodes/5_coinlimit
execute if score #opt_coinmode value matches 2 if score #opt_coinlimit value matches 11.. run function ttr:gamemodes/5_coinlimit_team
execute if score #opt_coinmode value matches 3 if score #opt_coinlimit value matches 11.. run function ttr:gamemodes/5_coinlimit_average

#otherwise show total coins sometimes?
execute if score #opt_coinlimit value matches ..10 run function ttr:gamemodes/5_get_totals

#display changes every once in a while
scoreboard players add #sidebarCycle value 1
execute if score #sidebarCycle value matches 100.. run function ttr:gamemodes/5_sidebar