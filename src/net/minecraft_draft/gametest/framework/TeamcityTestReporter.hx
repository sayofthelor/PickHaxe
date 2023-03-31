package net.minecraft.gametest.framework;

@:native("net.minecraft.gametest.framework.TeamcityTestReporter")
@:mapping("net.minecraft.class_6308")
extern class TeamcityTestReporter implements net.minecraft.gametest.framework.TestReporter
{
  public function new();

  @:mapping("method_22304")
  public function onTestFailed(testInfo:net.minecraft.gametest.framework.GameTestInfo):Void;
  @:mapping("method_33322")
  public function onTestSuccess(testInfo:net.minecraft.gametest.framework.GameTestInfo):Void;
}
