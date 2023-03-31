package net.minecraft.network.protocol.game;

@:native("net.minecraft.network.protocol.game.ClientboundKeepAlivePacket")
@:mapping("net.minecraft.class_2670")
extern class ClientboundKeepAlivePacket implements net.minecraft.network.protocol.Packet<net.minecraft.network.protocol.game.ClientGamePacketListener>
{
  public overload function new(l:Int);
  public overload function new(friendlyByteBuf:net.minecraft.network.FriendlyByteBuf);
  @:mapping("method_11052")
  public function write(buffer:net.minecraft.network.FriendlyByteBuf):Void;

  /**
   * Passes this Packet on to the NetHandler for processing.
   */
  @:mapping("method_11518")
  public function handle(handler:net.minecraft.network.protocol.game.ClientGamePacketListener):Void;

  @:mapping("method_11517")
  public function getId():Int;
}
