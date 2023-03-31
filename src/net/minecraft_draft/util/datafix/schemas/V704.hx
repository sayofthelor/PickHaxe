package net.minecraft.util.datafix.schemas;

@:native("net.minecraft.util.datafix.schemas.V704")
@:mapping("net.minecraft.class_1250")
extern class V704 extends com.mojang.datafixers.schemas.Schema
{
  public function new(i:Int, schema:com.mojang.datafixers.schemas.Schema);

  @:badMapping("unresolvedMethodOverride")
  @:mapping("~~SUPEROVERRIDEFAILED:^com.mojang.datafixers.schemas.Schema#getChoiceType(com.mojang.datafixers.DSL$TypeReference,String)~~~IFACEOVERRIDEFAILED:")
  public function getChoiceType(typeReference:com.mojang.datafixers.DSL.TypeReference, string:String):com.mojang.datafixers.types.Type<Dynamic>;
  @:badMapping("unresolvedMethodOverride")
  @:mapping("~~SUPEROVERRIDEFAILED:^com.mojang.datafixers.schemas.Schema#registerBlockEntities(com.mojang.datafixers.schemas.Schema)~~~IFACEOVERRIDEFAILED:")
  public function registerBlockEntities(schema:com.mojang.datafixers.schemas.Schema):java.util.Map<String,
    java.util.function.Supplier<com.mojang.datafixers.types.templates.TypeTemplate>>;
  @:badMapping("unresolvedMethodOverride")
  @:mapping("~~SUPEROVERRIDEFAILED:^com.mojang.datafixers.schemas.Schema#registerTypes(com.mojang.datafixers.schemas.Schema,java.util.Map,java.util.Map)~~~IFACEOVERRIDEFAILED:")
  public function registerTypes(schema:com.mojang.datafixers.schemas.Schema,
    map:java.util.Map<String, java.util.function.Supplier<com.mojang.datafixers.types.templates.TypeTemplate>>,
    map2:java.util.Map<String, java.util.function.Supplier<com.mojang.datafixers.types.templates.TypeTemplate>>):Void;
}
