package net.pickhaxe.tools.process;

import net.pickhaxe.tools.schema.PickHaxeDefines;

/**
 * Convenience functions for running processes from the command line.
 */
class GradleW extends CLIProcess
{
  var version:String;
  var defines:PickHaxeDefines;

  public function new(defines:PickHaxeDefines)
  {
    super('java');
    this.version = defines.pickhaxe.gradle.version;
    this.defines = defines;
  }

  /**
   * Perform a Gradle task.
   * @param args The task to perform, and other arguments.
   * @return Success or failure.
   */
  public function performTask(args:Array<String>):Bool
  {
    var finalArgs:Array<String> = buildArguments().concat(args);

    var output = getProcessOutput(finalArgs, true);
    
    var exitCode = output.exitCode;

    return exitCode == 0;
  }

  /**
   * Copy the dependencies to generated folder.
   * @return The output of the task.
   */
  public function copyDependencies():Bool
  {
    return performTask(['copyDependencies']);
  }

  /**
   * Generate Minecraft sources from mappings.
   * @return The output of the task.
   */
  public function genSources():Bool
  {
    return performTask(['genSources']);
  }

  function buildArguments():Array<String>
  {
    return [
      // Part of GradleW
      '-Dorg.gradle.appname=gradlew',
      '-classpath',
      '.\\wrapper-$version\\gradle-wrapper.jar',
      'org.gradle.wrapper.GradleWrapperMain',
      '--stacktrace',
      '--no-daemon',

      '-Dpickhaxe.version=${defines.pickhaxe.version}',
      '-Dpickhaxe.haxe.version=${defines.pickhaxe.haxe.version}',
      '-Dpickhaxe.java.version=${defines.pickhaxe.java.version}',
      '-Dpickhaxe.minecraft.version=${defines.pickhaxe.minecraft.version}',
      '-Dpickhaxe.minecraft.resourcePackFormat=${defines.pickhaxe.minecraft.resourcePackFormat}',
      '-Dpickhaxe.minecraft.dataPackFormat=${defines.pickhaxe.minecraft.dataPackFormat}',
      '-Dpickhaxe.loader.current=${defines.pickhaxe.loader.current}',
      if (defines.pickhaxe.loader.fabric.apiVersion != null) '-Dpickhaxe.loader.fabric.apiVersion=${defines.pickhaxe.loader.fabric.apiVersion}' else null,
      if (defines.pickhaxe.loader.fabric.loaderVersion != null) '-Dpickhaxe.loader.fabric.loaderVersion=${defines.pickhaxe.loader.fabric.loaderVersion}' else null,
      if (defines.pickhaxe.loader.forge.apiVersion != null) '-Dpickhaxe.loader.forge.apiVersion=${defines.pickhaxe.loader.forge.apiVersion}' else null,
      '-Dpickhaxe.mappings.current=${defines.pickhaxe.mappings.current}',
      '-Dpickhaxe.mappings.yarn.version=${defines.pickhaxe.mappings.yarn.version}',
      '-Dpickhaxe.mappings.parchment.maven=${defines.pickhaxe.mappings.parchment.maven}',
      '-Dpickhaxe.mappings.parchment.version=${defines.pickhaxe.mappings.parchment.version}',
      if (defines.pickhaxe.mappings.intermediary.maven != null) '-Dpickhaxe.mappings.intermediary.maven=${defines.pickhaxe.mappings.intermediary.maven}' else null,
      if (defines.pickhaxe.mappings.intermediary.version != null) '-Dpickhaxe.mappings.intermediary.version=${defines.pickhaxe.mappings.intermediary.version}' else null,
      '-Dpickhaxe.mod.id=${defines.pickhaxe.mod.id}',
      '-Dpickhaxe.mod.name=${defines.pickhaxe.mod.name}',
      '-Dpickhaxe.mod.description=${defines.pickhaxe.mod.description}',
      '-Dpickhaxe.mod.version=${defines.pickhaxe.mod.version}',
      '-Dpickhaxe.mod.parentPackage=${defines.pickhaxe.mod.parentPackage}',
    ].filter(function (v:String):Bool { return v != null; });
  }
}
