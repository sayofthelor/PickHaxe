package net.minecraft.world.entity.ai.goal;

@:native("net.minecraft.world.entity.ai.goal.RangedAttackGoal")
@:mapping("net.minecraft.class_1381")
extern class RangedAttackGoal extends net.minecraft.world.entity.ai.goal.Goal
{
  public overload function new(rangedAttackMob:net.minecraft.world.entity.monster.RangedAttackMob, d:Float, i:Int, f:Float);
  public overload function new(rangedAttackMob:net.minecraft.world.entity.monster.RangedAttackMob, d:Float, i:Int, j:Int, f:Float);
  @:mapping("method_6264")
  public function canUse():Bool;
  @:mapping("method_6266")
  public function canContinueToUse():Bool;
  @:mapping("method_6270")
  public function stop():Void;
  @:mapping("method_38846")
  public function requiresUpdateEveryTick():Bool;
  @:mapping("method_6268")
  public function tick():Void;
}
