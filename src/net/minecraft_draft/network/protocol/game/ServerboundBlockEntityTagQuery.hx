package net.minecraft.network.protocol.game;

@:native("net.minecraft.network.protocol.game.ServerboundBlockEntityTagQuery")
@:mapping("net.minecraft.class_2795")
extern class ServerboundBlockEntityTagQuery implements net.minecraft.network.protocol.Packet<net.minecraft.network.protocol.game.ServerGamePacketListener>
{
  public overload function new(i:Int, blockPos:net.minecraft.core.BlockPos);
  public overload function new(friendlyByteBuf:net.minecraft.network.FriendlyByteBuf);
  @:mapping("method_11052")
  public function write(buffer:net.minecraft.network.FriendlyByteBuf):Void;

  /**
   * Passes this Packet on to the NetHandler for processing.
   */
  @:mapping("method_12095")
  public function handle(handler:net.minecraft.network.protocol.game.ServerGamePacketListener):Void;

  @:mapping("method_12096")
  public function getTransactionId():Int;
  @:mapping("method_12094")
  public function getPos():net.minecraft.core.BlockPos;
}
