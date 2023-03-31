package net.minecraft.network.protocol.game;

@:native("net.minecraft.network.protocol.game.ClientboundHorseScreenOpenPacket")
@:mapping("net.minecraft.class_2648")
extern class ClientboundHorseScreenOpenPacket implements net.minecraft.network.protocol.Packet<net.minecraft.network.protocol.game.ClientGamePacketListener>
{
  public overload function new(i:Int, j:Int, k:Int);
  public overload function new(friendlyByteBuf:net.minecraft.network.FriendlyByteBuf);
  @:mapping("method_11052")
  public function write(buffer:net.minecraft.network.FriendlyByteBuf):Void;

  /**
   * Passes this Packet on to the NetHandler for processing.
   */
  @:mapping("method_11437")
  public function handle(handler:net.minecraft.network.protocol.game.ClientGamePacketListener):Void;

  @:mapping("method_11432")
  public function getContainerId():Int;
  @:mapping("method_11434")
  public function getSize():Int;
  @:mapping("method_11433")
  public function getEntityId():Int;
}
