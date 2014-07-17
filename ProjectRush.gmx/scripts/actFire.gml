//If the player fires a projectile, fire the projectile. Pretty simple, eh?
//When calling this, call it as actFire(playerIndex,SpriteIndex)
//Argument0 = player index
//Argument1 = sprite index
if argument0 = 0
{
with instance_create(plyRed.x,plyRed.y,Projectile)
    {
    direction = plyRed.mask_image_angle
    sprite_index=argument1
    image_angle = direction
    speed = 15+plyRed.projDamage
    }
}



