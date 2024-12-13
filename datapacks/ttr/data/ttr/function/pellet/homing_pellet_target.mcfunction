scoreboard players operation #my_target value = @s targetID

#project a target towards our starting view
summon marker ^ ^ ^4 {UUID:[I;101,101,101,1],Tags:["true_face"]}

#tag the target trank
execute as @e[tag=player_char,type=zombie,tag=!player_ded] if score @s playerID = #my_target value run tag @s add hehe_im_in_danger

#project a target towards our desired victim
execute if entity @e[limit=1,tag=hehe_im_in_danger,type=zombie] facing entity @e[limit=1,tag=hehe_im_in_danger,type=zombie] eyes run summon marker ^ ^ ^5 {UUID:[I;101,101,101,2],Tags:["look_at_target"]}
execute unless entity @e[limit=1,tag=hehe_im_in_danger,type=zombie] run scoreboard players set @s targetID -1

#move the starting view a little bit towards the target
#turn radius is slower during the first few active ticks
execute unless score @s lifespan matches 15.. if entity @e[limit=1,tag=hehe_im_in_danger,type=zombie] as 00000065-0000-0065-0000-006500000001 at @s facing entity 00000065-0000-0065-0000-006500000002 eyes rotated ~ 0 run tp @s ^ ^ ^.3
execute if score @s lifespan matches 15.. if entity @e[limit=1,tag=hehe_im_in_danger,type=zombie] as 00000065-0000-0065-0000-006500000001 at @s facing entity 00000065-0000-0065-0000-006500000002 eyes rotated ~ 0 run tp @s ^ ^ ^.5

#now we move
#execute facing entity @e[limit=1,type=marker,tag=true_face] eyes rotated ~ 0 run tp @s ^ ^ ^.25 ~ ~
execute unless score @s lifespan matches 15.. facing entity @e[limit=1,type=marker,tag=true_face] eyes rotated ~ 0 run tp @s ^ ^ ^.35 ~ ~
execute if score @s lifespan matches 15.. facing entity @e[limit=1,type=marker,tag=true_face] eyes rotated ~ 0 run tp @s ^ ^ ^.55 ~ ~

tag @e[limit=1,tag=hehe_im_in_danger,type=zombie] remove hehe_im_in_danger
kill 00000065-0000-0065-0000-006500000001
kill 00000065-0000-0065-0000-006500000002