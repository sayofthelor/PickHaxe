package net.minecraft.network.protocol.game;

@:native("net.minecraft.network.protocol.game.ClientboundSetBorderWarningDelayPacket")
@:mapping("net.minecraft.class_5898")
extern class ClientboundSetBorderWarningDelayPacket implements net.minecraft.network.protocol.Packet<net.minecraft.network.protocol.game.ClientGamePacketListener>
{
  public overload function new(worldBorder:net.minecraft.world.level.border.WorldBorder);
  public overload function new(friendlyByteBuf:net.minecraft.network.FriendlyByteBuf);
  @:mapping("method_11052")
  public function write(buffer:net.minecraft.network.FriendlyByteBuf):Void;

  /**
   * Passes this Packet on to the PacketListener for processing.
   */
  @:mapping("method_34165")
  public function handle(handler:net.minecraft.network.protocol.game.ClientGamePacketListener):Void;

  @:mapping("method_34166")
  public function getWarningDelay():Int;
}
