#countdown to the next level gen "think" call
scoreboard players remove #level_gen_time value 1
scoreboard players remove #refreshObjCooldown value 1

#clear old players off the sidebar once in a while (tied to level gen because i like my spaghetti hot)
execute if score #level_gen_time value matches ..0 if score #refreshObjCooldown value matches ..0 run function ttr:game/reset_coin_objective

###
#important: this is what makes level transformations happen
execute if score #level_gen_time value matches ..0 run function ttr:random/level_gen/think
###