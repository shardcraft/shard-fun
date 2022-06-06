# Main
scoreboard objectives add fun dummy
scoreboard objectives add funLevel dummy
scoreboard objectives setdisplay list funLevel
scoreboard objectives add deaths deathCount
scoreboard objectives add timeSinceDeath minecraft.custom:minecraft.time_since_death

# Fun Tracking
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add dive minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add boat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add strider minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add horse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add aviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add craft minecraft.custom:minecraft.interact_with_crafting_table
scoreboard objectives add smelt minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add brew minecraft.custom:minecraft.interact_with_brewingstand
scoreboard objectives add totem minecraft.used:minecraft.totem_of_undying

# Team
team add pvp "PvP"
team modify pvp color white
scoreboard objectives add pvpDeaths killedByTeam.white
