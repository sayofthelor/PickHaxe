package net.minecraft.world.item.enchantment;

@:native("net.minecraft.world.item.enchantment.ArrowInfiniteEnchantment")
@:mapping("net.minecraft.class_1880")
extern class ArrowInfiniteEnchantment extends net.minecraft.world.item.enchantment.Enchantment
{
  public function new(rarity:net.minecraft.world.item.enchantment.Enchantment.Rarity, equipmentSlots:Array<net.minecraft.world.entity.EquipmentSlot>);
  @:mapping("method_8182")
  public function getMinCost(level:Int):Int;
  @:mapping("method_20742")
  public function getMaxCost(level:Int):Int;
  @:mapping("method_8180")
  public function checkCompatibility(other:net.minecraft.world.item.enchantment.Enchantment):Bool;
}
