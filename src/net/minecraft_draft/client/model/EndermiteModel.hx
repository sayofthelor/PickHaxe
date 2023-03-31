package net.minecraft.client.model;

@:native("net.minecraft.client.model.EndermiteModel")
@:mapping("net.minecraft.class_565")
extern class EndermiteModel<T:net.minecraft.world.entity.Entity> extends net.minecraft.client.model.HierarchicalModel<T>
{
  public function new(modelPart:net.minecraft.client.model.geom.ModelPart);

  @:mapping("method_31996")
  public static function createBodyLayer():net.minecraft.client.model.geom.builders.LayerDefinition;
  @:mapping("method_32008")
  public function root():net.minecraft.client.model.geom.ModelPart;
  @:mapping("method_2819")
  public function setupAnim(entity:T, limbSwing:Float, limbSwingAmount:Float, ageInTicks:Float, netHeadYaw:Float, headPitch:Float):Void;
}
