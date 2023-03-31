package net.minecraft.world.level.block;

@:native("net.minecraft.world.level.block.HoneyBlock")
@:mapping("net.minecraft.class_4622")
extern class HoneyBlock extends net.minecraft.world.level.block.HalfTransparentBlock
{
  public function new(properties:net.minecraft.world.level.block.state.BlockBehaviour.Properties);

  @:mapping("method_9549")
  public function getCollisionShape(state:net.minecraft.world.level.block.state.BlockState, level:net.minecraft.world.level.BlockGetter,
    pos:net.minecraft.core.BlockPos, context:net.minecraft.world.phys.shapes.CollisionContext):net.minecraft.world.phys.shapes.VoxelShape;
  @:mapping("method_9554")
  public function fallOn(level:net.minecraft.world.level.Level, state:net.minecraft.world.level.block.state.BlockState, pos:net.minecraft.core.BlockPos,
    entity:net.minecraft.world.entity.Entity, fallDistance:Float):Void;
  @:mapping("method_9548")
  public function entityInside(state:net.minecraft.world.level.block.state.BlockState, level:net.minecraft.world.level.Level, pos:net.minecraft.core.BlockPos,
    entity:net.minecraft.world.entity.Entity):Void;

  @:mapping("method_24175")
  public static function showSlideParticles(entity:net.minecraft.world.entity.Entity):Void;
  @:mapping("method_24178")
  public static function showJumpParticles(entity:net.minecraft.world.entity.Entity):Void;
}
