package net.minecraft.util.datafix.fixes;

@:native("net.minecraft.util.datafix.fixes.OptionsAmbientOcclusionFix")
@:mapping("net.minecraft.class_8004")
extern class OptionsAmbientOcclusionFix extends com.mojang.datafixers.DataFix
{
  public function new(schema:com.mojang.datafixers.schemas.Schema);
  @:badMapping("unresolvedMethodOverride")
  @:mapping("~~SUPEROVERRIDEFAILED:^com.mojang.datafixers.DataFix#makeRule()~~~IFACEOVERRIDEFAILED:")
  public function makeRule():com.mojang.datafixers.TypeRewriteRule;
}
