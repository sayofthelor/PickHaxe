package net.minecraft.network.protocol.game;

@:native("net.minecraft.network.protocol.game.ClientboundSetCameraPacket")
@:mapping("net.minecraft.class_2734")
extern class ClientboundSetCameraPacket implements net.minecraft.network.protocol.Packet<net.minecraft.network.protocol.game.ClientGamePacketListener>
{
  public overload function new(entity:net.minecraft.world.entity.Entity);
  public overload function new(friendlyByteBuf:net.minecraft.network.FriendlyByteBuf);
  @:mapping("method_11052")
  public function write(buffer:net.minecraft.network.FriendlyByteBuf):Void;

  /**
   * Passes this Packet on to the NetHandler for processing.
   */
  @:mapping("method_11801")
  public function handle(handler:net.minecraft.network.protocol.game.ClientGamePacketListener):Void;

  @:mapping("method_11800")
  public function getEntity(level:net.minecraft.world.level.Level):Null<net.minecraft.world.entity.Entity>;
}
