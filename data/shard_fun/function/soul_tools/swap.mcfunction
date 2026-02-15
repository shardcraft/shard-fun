# Soul Tool Auto-Swap
# Raycast from the player's eyes to find the block they're looking at,
# then swap the held soul tool to the appropriate type.

# Initialize raycast
scoreboard players set @s soulTarget 0
scoreboard players set @s soulRay 10

# Cast a ray forward from the player's eyes (10 steps × 0.5 blocks = 5 block range)
execute positioned ^ ^ ^0.5 run function shard_fun:soul_tools/raycast

# Swap to the appropriate tool if the player isn't already holding it
execute if score @s soulTarget matches 1 unless entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data":{shard_id:"soul_pickaxe"}}}}] run function shard_fun:soul_tools/swap/pickaxe
execute if score @s soulTarget matches 2 unless entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data":{shard_id:"soul_axe"}}}}] run function shard_fun:soul_tools/swap/axe
execute if score @s soulTarget matches 3 unless entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data":{shard_id:"soul_shovel"}}}}] run function shard_fun:soul_tools/swap/shovel
execute if score @s soulTarget matches 4 unless entity @s[nbt={SelectedItem: {components: {"minecraft:custom_data":{shard_id:"soul_hoe"}}}}] run function shard_fun:soul_tools/swap/hoe
