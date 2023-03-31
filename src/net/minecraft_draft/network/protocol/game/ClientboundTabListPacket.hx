package net.minecraft.network.protocol.game;

@:native("net.minecraft.network.protocol.game.ClientboundTabListPacket")
@:mapping("net.minecraft.class_2772")
extern class ClientboundTabListPacket implements net.minecraft.network.protocol.Packet<net.minecraft.network.protocol.game.ClientGamePacketListener>
{
  public overload function new(component:net.minecraft.network.chat.Component, component2:net.minecraft.network.chat.Component);
  public overload function new(friendlyByteBuf:net.minecraft.network.FriendlyByteBuf);
  @:mapping("method_11052")
  public function write(buffer:net.minecraft.network.FriendlyByteBuf):Void;

  /**
   * Passes this Packet on to the NetHandler for processing.
   */
  @:mapping("method_11907")
  public function handle(handler:net.minecraft.network.protocol.game.ClientGamePacketListener):Void;

  @:mapping("method_11908")
  public function getHeader():net.minecraft.network.chat.Component;
  @:mapping("method_11906")
  public function getFooter():net.minecraft.network.chat.Component;
}
