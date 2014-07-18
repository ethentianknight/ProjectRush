//If the player fires a projectile, fire the projectile. Pretty simple, eh?
//When calling this, call it as actFire(playerIndex,SpriteIndex)
//Argument0 = player index
//Argument1 = sprite index
if argument0 = 0
{
with instance_create(player1.x,player1.y,Projectile)
    {
    direction = player1.mask_image_angle
    sprite_index=argument1
    image_angle = direction
    speed = 15+player1.projDamage
    }
}
else if argument0 = 1
{
with instance_create(player2.x,player2.y,Projectile)
    {
    direction = player2.mask_image_angle
    sprite_index=argument1
    image_angle = direction
    speed = 15+player2.projDamage
    }
}



