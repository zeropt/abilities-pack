# web_potion loop
# As: Server

# update potion
execute as @e[type=potion,tag=web_potion] run function abilities_pack:abilities/web_potion/update_potion

# update trackers
execute as @e[type=area_effect_cloud,tag=web_tracker] run function abilities_pack:abilities/web_potion/update_tracker
