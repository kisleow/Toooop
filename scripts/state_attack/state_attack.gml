var foe = oPlayer;
if (collision_circle(x, y, attackRange, foe, false, true))
{
	if(alarm[1] <= 0)
	{
		var hitbox = instance_create_depth(foe.x, foe.y, -1, oHitbox);
		hitbox.target = foe;
		hitbox.damage = attackDamage;
		alarm[1] = attackSpeed * room_speed;
	}
}
else
{
	state = "Chase";	
}