# Replace the held soul tool with a Soul Hoe
item replace entity @s weapon.mainhand with minecraft:iron_hoe[custom_data={shard_id:"soul_hoe"},custom_model_data={floats:[6120012]},custom_name=[{"text":"Soul Hoe","color":"yellow","italic":false}],lore=[{"text":"Tools & Utilities","color":"blue","italic": false}, {"text":""}, {"text":"This tool can adapt to its wielder."}],enchantment_glint_override=true,repair_cost=1000000,unbreakable={},tooltip_display={hidden_components:[unbreakable]}]

# Apply enchantments based on fun level
execute if score @s funLevel matches 1 run item modify entity @s weapon.mainhand shard_fun:soul_hoe_1
execute if score @s funLevel matches 2 run item modify entity @s weapon.mainhand shard_fun:soul_hoe_2
execute if score @s funLevel matches 3 run item modify entity @s weapon.mainhand shard_fun:soul_hoe_3
execute if score @s funLevel matches 4 run item modify entity @s weapon.mainhand shard_fun:soul_hoe_4
execute if score @s funLevel matches 5 run item modify entity @s weapon.mainhand shard_fun:soul_hoe_5
