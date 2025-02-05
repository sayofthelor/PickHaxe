package net.fabricmc.fabric.api.itemgroup.v1;

@:native("net.fabricmc.fabric.api.itemgroup.v1.ItemGroupEvents")
extern class ItemGroupEvents
{
  overload static function modifyEntriesEvent(itemGroup:net.minecraft.world.item.CreativeModeTab):net.fabricmc.fabric.api.event.Event<net.fabricmc.fabric.api.itemgroup.v1.ItemGroupEvents.ModifyEntries>;

  overload static function modifyEntriesEvent(groupId:net.minecraft.resources.ResourceLocation):net.fabricmc.fabric.api.event.Event<net.fabricmc.fabric.api.itemgroup.v1.ItemGroupEvents.ModifyEntries>;

  static var MODIFY_ENTRIES_ALL(default, never):net.fabricmc.fabric.api.event.Event<net.fabricmc.fabric.api.itemgroup.v1.ItemGroupEvents.ModifyEntriesAll>;
}

@:native("net.fabricmc.fabric.api.itemgroup.v1.ItemGroupEvents$ModifyEntries")
extern interface ModifyEntries
{
  function modifyEntries(param1:net.fabricmc.fabric.api.itemgroup.v1.FabricItemGroupEntries):Void;
}

typedef ItemGroupEvents_ModifyEntries = ModifyEntries;

/**
 * @see https://github.com/HaxeFoundation/haxe/issues/11054
 */
class ModifyEntriesHaxe implements ModifyEntries
{
  var callback:FabricItemGroupEntries->Void;

  public function new(callback:FabricItemGroupEntries->Void)
  {
    this.callback = callback;
  }

  public function modifyEntries(entries:FabricItemGroupEntries):Void
  {
    callback(entries);
  }
}

@:native("net.fabricmc.fabric.api.itemgroup.v1.ItemGroupEvents$ModifyEntriesAll")
extern interface ModifyEntriesAll
{
  function modifyEntries(param1:net.minecraft.world.item.CreativeModeTab, param2:net.fabricmc.fabric.api.itemgroup.v1.FabricItemGroupEntries):Void;
}

typedef ItemGroupEvents_ModifyEntriesAll = ModifyEntriesAll;

/**
 * @see https://github.com/HaxeFoundation/haxe/issues/11054
 */
class ModifyEntriesAllHaxe implements ModifyEntriesAll
{
  var callback:(net.minecraft.world.item.CreativeModeTab, FabricItemGroupEntries) -> Void;

  public function new(callback:(net.minecraft.world.item.CreativeModeTab, FabricItemGroupEntries) -> Void)
  {
    this.callback = callback;
  }

  public function modifyEntries(tab:net.minecraft.world.item.CreativeModeTab, entries:FabricItemGroupEntries):Void
  {
    callback(tab, entries);
  }
}
