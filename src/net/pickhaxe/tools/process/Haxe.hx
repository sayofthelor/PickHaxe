package net.pickhaxe.tools.process;

/**
 * Convenience functions for running processes from the command line.
 */
class Haxe extends CLIProcess
{
  /**
   * A singleton instance.
   */
  public static final instance:Haxe = new Haxe();

  public function new()
  {
    super('haxe');
    // super('C:/Haxe/haxe_430_develop/haxe.exe');
  }

  /**
   * Perform a build.
   * @param args The build arguments.
   * @return The console output of the build.
   */
  public function performBuild(args:Array<String>):String
  {
    // We have to write the args to an HXML file,
    // because Windows can't handle long command lines.

    IO.writeFile(IO.workingDir().joinPaths('generated/build.hxml'), args.join('\n'));

    var output = getProcessOutput(['generated/build.hxml'], true);

    var exitCode = output.exitCode;
    var outputString = output.output;

    return outputString;
  }

  public function validateVersion():Void {
    var version:thx.semver.Version = getVersion();
    if (version.major < 4 || version.minor < 3) {
      throw 'Haxe version 4.3.0 or higher is required.';
    }
  }

  public function getVersion():thx.semver.Version {
    var output = getProcessOutput(['-version'], false);

    var exitCode = output.exitCode;
    var outputString = output.output;

    return outputString;
  }
}
