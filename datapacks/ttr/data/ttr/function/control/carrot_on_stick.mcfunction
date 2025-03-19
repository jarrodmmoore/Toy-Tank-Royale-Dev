#make sure player has the item

tag @s remove hasCarrot
tag @s remove invalidCarrot
execute if items entity @s weapon.mainhand carrot_on_a_stick run tag @s add invalidCarrot
execute if items entity @s weapon.offhand carrot_on_a_stick run tag @s add hasCarrot

#execute if entity @s[tag=invalidCarrot] run tellraw @s ["",{color:"red",text:"[ ! ] Sorry, you can't hold items in your offhand!",bold:"true"}]
#execute if entity @s[tag=invalidCarrot] run playsound minecraft:block.lava.extinguish master @s ~ ~ ~ .7 1 .7
execute if entity @s[tag=invalidCarrot] run clear @s minecraft:carrot_on_a_stick

#give carrot on stick if missing
execute if entity @s[tag=!hasCarrot] run clear @s minecraft:carrot_on_a_stick
execute if entity @s[tag=!hasCarrot,tag=!noInventory] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[item_model="ttr/tanks/invisible_button",lore=[{translate:"ttr.misc.this_detects_right_clicks",color:"#FA66FF",italic:true}],custom_name={translate:"ttr.misc.input_detector",bold:true,italic:false,color:"light_purple"},custom_data={input_carrot:1b}] 1