package net.minecraft.world.entity.ai.goal;

@:native("net.minecraft.world.entity.ai.goal.MeleeAttackGoal")
@:mapping("net.minecraft.class_1366")
extern class MeleeAttackGoal extends net.minecraft.world.entity.ai.goal.Goal
{
  public function new(pathfinderMob:net.minecraft.world.entity.PathfinderMob, d:Float, bl:Bool);
  @:mapping("method_6264")
  public function canUse():Bool;
  @:mapping("method_6266")
  public function canContinueToUse():Bool;
  @:mapping("method_6269")
  public function start():Void;
  @:mapping("method_6270")
  public function stop():Void;
  @:mapping("method_38846")
  public function requiresUpdateEveryTick():Bool;
  @:mapping("method_6268")
  public function tick():Void;
}
