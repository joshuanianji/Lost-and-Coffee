/// @description Add Health
// You can write your code in this editor

local_health = min(100, local_health + 50);
show_debug_message("local health upgraded to")
show_debug_message(local_health);

instance_destroy(other);
