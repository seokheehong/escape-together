image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);

bullet = instance_create_layer(x, y, "lAttack", oBullet);
bullet.direction = image_angle;
bullet.image_angle = image_angle;
bullet.speed = 3;