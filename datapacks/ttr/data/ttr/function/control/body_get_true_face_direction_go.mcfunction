scoreboard players operation #bodyRemX1 value = @s bodyRememberX
scoreboard players operation #bodyRemX1 value /= #1000 value
scoreboard players operation #bodyRemX2 value = @s bodyRememberX
scoreboard players operation #bodyRemX2 value %= #1000 value
execute store result storage ttr:coords bodyRemX1 int 1 run scoreboard players get #bodyRemX1 value
execute store result storage ttr:coords bodyRemX2 int 1 run scoreboard players get #bodyRemX2 value

scoreboard players operation #bodyRemZ1 value = @s bodyRememberZ
scoreboard players operation #bodyRemZ1 value /= #1000 value
scoreboard players operation #bodyRemZ2 value = @s bodyRememberZ
scoreboard players operation #bodyRemZ2 value %= #1000 value
execute store result storage ttr:coords bodyRemZ1 int 1 run scoreboard players get #bodyRemZ1 value
execute store result storage ttr:coords bodyRemZ2 int 1 run scoreboard players get #bodyRemZ2 value

#it's macro time? it's macro time!
function ttr:control/body_get_true_face_direction_go_macro with storage ttr:coords
#god, that sounded like an advertising slogan. gross