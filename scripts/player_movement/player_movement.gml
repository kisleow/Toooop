    keyRight = keyboard_check(ord("D"));
	keyLeft = -keyboard_check(ord("A"));
	keyUp = -keyboard_check(ord("W"));
	keyDown = keyboard_check(ord("S"));

	hMove = keyLeft + keyRight;
	vMove = keyUp + keyDown;

	hsp = hMove * moveSpeed;
	vsp = vMove * moveSpeed;