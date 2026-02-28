advancement revoke @s only lobby:bridge
fill -16 8 -9 -20 -1 -13 air destroy
execute store result score $lobby.bridge bf run random value 1..5
execute if score $lobby.bridge bf matches 1 run place template core:bridge/oak_log -20 -6 -9 counterclockwise_90
execute if score $lobby.bridge bf matches 2 run place template core:bridge/dark_log -20 -6 -9 counterclockwise_90
execute if score $lobby.bridge bf matches 3 run place template core:bridge/pale_log -20 -6 -9 counterclockwise_90
execute if score $lobby.bridge bf matches 4 run place template core:bridge/cherry_log -20 -6 -9 counterclockwise_90
execute if score $lobby.bridge bf matches 5 run place template core:bridge/snow_100 -20 -6 -9 counterclockwise_90