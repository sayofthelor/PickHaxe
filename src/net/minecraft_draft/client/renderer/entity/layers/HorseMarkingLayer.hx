package net.minecraft.client.renderer.entity.layers;

@:native("net.minecraft.client.renderer.entity.layers.HorseMarkingLayer")
@:mapping("net.minecraft.class_5167")
extern class HorseMarkingLayer extends net.minecraft.client.renderer.entity.layers.RenderLayer<net.minecraft.world.entity.animal.horse.Horse,
  net.minecraft.client.model.HorseModel<net.minecraft.world.entity.animal.horse.Horse>>
{
  public function new(renderLayerParent:net.minecraft.client.renderer.entity.RenderLayerParent<net.minecraft.world.entity.animal.horse.Horse,
    net.minecraft.client.model.HorseModel<net.minecraft.world.entity.animal.horse.Horse>>);
  @:mapping("method_27152")
  public function render(matrixStack:com.mojang.blaze3d.vertex.PoseStack, buffer:net.minecraft.client.renderer.MultiBufferSource, packedLight:Int,
    livingEntity:net.minecraft.world.entity.animal.horse.Horse, limbSwing:Float, limbSwingAmount:Float, partialTicks:Float, ageInTicks:Float,
    netHeadYaw:Float, headPitch:Float):Void;
}
