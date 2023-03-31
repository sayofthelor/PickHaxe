package net.minecraft.client.renderer.entity;

@:native("net.minecraft.client.renderer.entity.ShulkerBulletRenderer")
@:mapping("net.minecraft.class_940")
extern class ShulkerBulletRenderer extends net.minecraft.client.renderer.entity.EntityRenderer<net.minecraft.world.entity.projectile.ShulkerBullet>
{
  public function new(context:net.minecraft.client.renderer.entity.EntityRendererProvider.Context);

  @:mapping("method_4103")
  public function render(entity:net.minecraft.world.entity.projectile.ShulkerBullet, entityYaw:Float, partialTicks:Float,
    matrixStack:com.mojang.blaze3d.vertex.PoseStack, buffer:net.minecraft.client.renderer.MultiBufferSource, packedLight:Int):Void;

  /**
   * Returns the location of an entity's texture.
   */
  @:mapping("method_4105")
  public function getTextureLocation(entity:net.minecraft.world.entity.projectile.ShulkerBullet):net.minecraft.resources.ResourceLocation;
}
