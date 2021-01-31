/// @description Insert description here
// You can write your code in this editor


if abs(obj_player_sideview.y - y) < 50 {
	// player is within 100 blocks vertically of the enemy
	x += sign(obj_player_sideview.x - x);
}

