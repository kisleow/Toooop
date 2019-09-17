var foe = oPlayer;
if (collision_circle(x, y, chaseRange, foe, false, true))
{
	var foex = (foe.x div 32) * 32 + 16;
	var foey = (foe.y div 32) * 32 + 16;
	
	if (mp_grid_path(grid, path, x, y, foex, foey, true))
	{
		path_start(path, moveSpeed, path_action_stop, false);	
	}
}
else
{
	state = "Idle";	
}
if (collision_circle(x, y, attackRange, foe, false, true))
{
	path_end();
	state = "Attack";	
}