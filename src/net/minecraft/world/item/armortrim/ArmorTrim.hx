package net.minecraft.world.item.armortrim;

@:native("net.minecraft.world.item.armortrim.ArmorTrim")
@:mapping("net.minecraft.class_8053")
extern class ArmorTrim
{
  @:mapping("field_41994")
  public static final CODEC:com.mojang.serialization.Codec<net.minecraft.world.item.armortrim.ArmorTrim>;

  @:mapping("field_41995")
  public static final TAG_TRIM_ID:String;

  public function new(holder:net.minecraft.core.Holder<net.minecraft.world.item.armortrim.TrimMaterial>,
    holder2:net.minecraft.core.Holder<net.minecraft.world.item.armortrim.TrimPattern>);

  @:mapping("method_48427")
  public function hasPatternAndMaterial(holder:net.minecraft.core.Holder<net.minecraft.world.item.armortrim.TrimPattern>,
    holder2:net.minecraft.core.Holder<net.minecraft.world.item.armortrim.TrimMaterial>):Bool;
  @:mapping("method_48424")
  public function pattern():net.minecraft.core.Holder<net.minecraft.world.item.armortrim.TrimPattern>;
  @:mapping("method_48431")
  public function material():net.minecraft.core.Holder<net.minecraft.world.item.armortrim.TrimMaterial>;
  @:mapping("method_48434")
  public function innerTexture(armorMaterial:net.minecraft.world.item.ArmorMaterial):net.minecraft.resources.ResourceLocation;
  @:mapping("method_48436")
  public function outerTexture(armorMaterial:net.minecraft.world.item.ArmorMaterial):net.minecraft.resources.ResourceLocation;
  public function equals(object:Dynamic):Bool;
  @:mapping("method_48429")
  public static function setTrim(registryAccess:net.minecraft.core.RegistryAccess, itemStack:net.minecraft.world.item.ItemStack,
    armorTrim:net.minecraft.world.item.armortrim.ArmorTrim):Bool;
  @:mapping("method_48428")
  public static function getTrim(registryAccess:net.minecraft.core.RegistryAccess,
    itemStack:net.minecraft.world.item.ItemStack):java.util.Optional<net.minecraft.world.item.armortrim.ArmorTrim>;
  @:mapping("method_48425")
  public static function appendUpgradeHoverText(itemStack:net.minecraft.world.item.ItemStack, registryAccess:net.minecraft.core.RegistryAccess,
    list:java.util.List<net.minecraft.network.chat.Component>):Void;
}
