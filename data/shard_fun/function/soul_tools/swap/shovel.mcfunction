# Replace the held soul tool with a Soul Shovel
item replace entity @s weapon.mainhand with minecraft:iron_shovel[custom_data={shard_id:"soul_shovel"},custom_model_data={floats:[6120022]},custom_name=[{"text":"Soul Shovel","color":"yellow","italic":false}],lore=[{"text":"Tools & Utilities","color":"blue","italic": false}, {"text":""}, {"text":"This tool can adapt to its wielder."}],enchantment_glint_override=true,repair_cost=1000000,unbreakable={},tooltip_display={hidden_components:[unbreakable]}]

# Apply enchantments based on fun level
execute if score @s funLevel matches 1 run item modify entity @s weapon.mainhand shard_fun:soul_shovel_1
execute if score @s funLevel matches 2 run item modify entity @s weapon.mainhand shard_fun:soul_shovel_2
execute if score @s funLevel matches 3 run item modify entity @s weapon.mainhand shard_fun:soul_shovel_3
execute if score @s funLevel matches 4 run item modify entity @s weapon.mainhand shard_fun:soul_shovel_4
execute if score @s funLevel matches 5 run item modify entity @s weapon.mainhand shard_fun:soul_shovel_5
