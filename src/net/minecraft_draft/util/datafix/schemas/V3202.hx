package net.minecraft.util.datafix.schemas;

@:native("net.minecraft.util.datafix.schemas.V3202")
@:mapping("net.minecraft.class_7684")
extern class V3202 extends net.minecraft.util.datafix.schemas.NamespacedSchema
{
  public function new(i:Int, schema:com.mojang.datafixers.schemas.Schema);
  @:badMapping("unresolvedMethodOverride")
  @:mapping("~~SUPEROVERRIDEFAILED:^net.minecraft.util.datafix.schemas.NamespacedSchema#registerBlockEntities(com.mojang.datafixers.schemas.Schema)^com.mojang.datafixers.schemas.Schema#registerBlockEntities(com.mojang.datafixers.schemas.Schema)~~~IFACEOVERRIDEFAILED:")
  public function registerBlockEntities(schema:com.mojang.datafixers.schemas.Schema):java.util.Map<String,
    java.util.function.Supplier<com.mojang.datafixers.types.templates.TypeTemplate>>;
}
