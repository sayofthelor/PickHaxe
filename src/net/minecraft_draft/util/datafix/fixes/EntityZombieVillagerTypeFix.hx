package net.minecraft.util.datafix.fixes;

@:native("net.minecraft.util.datafix.fixes.EntityZombieVillagerTypeFix")
@:mapping("net.minecraft.class_1174")
extern class EntityZombieVillagerTypeFix extends net.minecraft.util.datafix.fixes.NamedEntityFix
{
  public function new(schema:com.mojang.datafixers.schemas.Schema, bl:Bool);
  @:mapping("method_4990")
  public function fixTag(pDynamic:com.mojang.serialization.Dynamic<Dynamic>):com.mojang.serialization.Dynamic<Dynamic>;
}
