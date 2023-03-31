package net.minecraft.world.entity.projectile;

@:native("net.minecraft.world.entity.projectile.ThrownEgg")
@:mapping("net.minecraft.class_1681")
extern class ThrownEgg extends net.minecraft.world.entity.projectile.ThrowableItemProjectile
{
  public overload function new(entityType:net.minecraft.world.entity.EntityType<net.minecraft.world.entity.projectile.ThrownEgg>,
    level:net.minecraft.world.level.Level);
  public overload function new(level:net.minecraft.world.level.Level, livingEntity:net.minecraft.world.entity.LivingEntity);
  public overload function new(level:net.minecraft.world.level.Level, d:Float, e:Float, f:Float);
  @:mapping("method_5711")
  public function handleEntityEvent(id:Int):Void;
}
