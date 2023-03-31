package net.minecraft.world.entity.projectile;

@:native("net.minecraft.world.entity.projectile.SmallFireball")
@:mapping("net.minecraft.class_1677")
extern class SmallFireball extends net.minecraft.world.entity.projectile.Fireball
{
  public overload function new(entityType:net.minecraft.world.entity.EntityType<net.minecraft.world.entity.projectile.SmallFireball>,
    level:net.minecraft.world.level.Level);
  public overload function new(level:net.minecraft.world.level.Level, livingEntity:net.minecraft.world.entity.LivingEntity, d:Float, e:Float, f:Float);
  public overload function new(level:net.minecraft.world.level.Level, d:Float, e:Float, f:Float, g:Float, h:Float, i:Float);

  @:mapping("method_5863")
  public function isPickable():Bool;
  @:mapping("method_5643")
  public function hurt(source:net.minecraft.world.damagesource.DamageSource, amount:Float):Bool;
}
