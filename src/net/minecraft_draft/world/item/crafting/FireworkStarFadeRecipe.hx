package net.minecraft.world.item.crafting;

@:native("net.minecraft.world.item.crafting.FireworkStarFadeRecipe")
@:mapping("net.minecraft.class_1854")
extern class FireworkStarFadeRecipe extends net.minecraft.world.item.crafting.CustomRecipe
{
  public function new(resourceLocation:net.minecraft.resources.ResourceLocation, craftingBookCategory:net.minecraft.world.item.crafting.CraftingBookCategory);

  /**
   * Used to check if a recipe matches current crafting inventory
   */
  @:mapping("method_17711")
  public function matches(inv:net.minecraft.world.inventory.CraftingContainer, level:net.minecraft.world.level.Level):Bool;

  @:mapping("method_17710")
  public function assemble(craftingContainer:net.minecraft.world.inventory.CraftingContainer,
    registryAccess:net.minecraft.core.RegistryAccess):net.minecraft.world.item.ItemStack;
  @:mapping("method_8113")
  public function canCraftInDimensions(width:Int, height:Int):Bool;
  @:mapping("method_8119")
  public function getSerializer():net.minecraft.world.item.crafting.RecipeSerializer<Dynamic>;
}
