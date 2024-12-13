#important head function for all player countrol, movement, shooting stuff


#IT'S A ME
tag @s add pl_self


#get inputs
execute at @s run function ttr:control/get_inputs

#store color for other functions to use
scoreboard players operation #color1 value = @s color_1
scoreboard players operation #color2 value = @s color_2
scoreboard players operation #bodyModel value = @s tankBodyModel
scoreboard players operation #headModel value = @s tankHeadModel

#store what playerNode we are
scoreboard players operation #pNode value = @s playerNode

#do stuff depending on whether we're in our minecart or not
#(stuff REALLY starts happening here)
execute if entity @s[tag=!inGame,scores={ride=..0}] run function ttr:control/not_in_minecart
execute if entity @s[tag=inGame,scores={ride=..0}] run function ttr:game/abandon_game
execute if entity @s[scores={ride=1..}] run function ttr:control/in_minecart


#BUH BYE
tag @s remove pl_self