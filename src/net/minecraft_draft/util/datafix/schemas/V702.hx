package net.minecraft.util.datafix.schemas;

@:native("net.minecraft.util.datafix.schemas.V702")
@:mapping("net.minecraft.class_1248")
extern class V702 extends com.mojang.datafixers.schemas.Schema
{
  public function new(i:Int, schema:com.mojang.datafixers.schemas.Schema);

  @:badMapping("unresolvedMethodOverride")
  @:mapping("~~SUPEROVERRIDEFAILED:^com.mojang.datafixers.schemas.Schema#registerEntities(com.mojang.datafixers.schemas.Schema)~~~IFACEOVERRIDEFAILED:")
  public function registerEntities(schema:com.mojang.datafixers.schemas.Schema):java.util.Map<String,
    java.util.function.Supplier<com.mojang.datafixers.types.templates.TypeTemplate>>;
}
