#this is run by the tank body model

execute store result score #bodyNewX value run data get entity @s Pos[0] 1000
execute store result score #bodyNewZ value run data get entity @s Pos[2] 1000

#check if we moved at all
scoreboard players set #testMove value 0
execute unless score #bodyNewX value = @s bodyRememberX run scoreboard players set #testMove value 1
execute unless score #bodyNewZ value = @s bodyRememberZ run scoreboard players set #testMove value 1

#if we moved (and score exists), set face angle
execute if score #testMove value matches 1 if score @s bodyRememberX matches -2147483648..2147483647 run function ttr:control/body_get_true_face_direction_go


#store our old coordinates for next tick
execute store result score @s bodyRememberX run data get entity @s Pos[0] 1000
execute store result score @s bodyRememberZ run data get entity @s Pos[2] 1000