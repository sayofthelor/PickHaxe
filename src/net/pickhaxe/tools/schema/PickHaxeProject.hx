package net.pickhaxe.tools.schema;

/**
 * Structured data from the XML file.
 */
typedef PickHaxeProject =
{
  > PickHaxe,
}

/**
 * An XML tag with a `value` attribute.
 */
typedef ValueTag =
{
  @:attr var value:String;
};

/**
 * `<PickHaxe>` tag.
 */
typedef PickHaxe =
{
  @:tag('mod') var mod:Mod;
  @:tag('mod-metadata') var metadata:ModMetadata;
  @:tag('mod-license') var license:ModLicense;

  /**
   * Add new Haxelibs as dependencies to the project.
   */
  @:list('haxelib') var haxelibs:Array<HaxelibEntry>;
  /**
   * Mods can have multiple entry points.
   */
  @:list('mod-entry-point') var entryPoints:Array<ModEntryPoint>;
}

/**
 * `<mod>` tag.
 */
typedef Mod =
{
  /**
   * The internal ID of the mod.
   */
  @:attr var id:String;

  /**
   * The SemVer version of the mod.
   */
  @:attr var version:String;

  /**
   * The package of the mod.
   */
  @:attr var parentPackage:String;

  /**
   * The path where the mod's source code is located.
   */
  @:attr var classPath:String;

  /**
   * The path where the mod's resources are located.
   */
  @:attr var resourcePath:String;
};

/**
 * `<mod-entry-point>` tag.
 */
typedef ModEntryPoint =
{
  > ValueTag,
  @:attr var environment:String;
};

/**
 * `<haxelib>` tag.
 */
 typedef HaxelibEntry =
 {
   /**
    * The name of the library to include.
    */
   @:attr var name:String;
 
   /**
    * The version of the library to include.
    * Optional.
    */
   @:attr var version:Null<String>;

  /**
   * The URL to a Git repository.
   * You may suffix with `#<branch>` to specify a branch.
   * Optional.
   */
  @:attr var git:Null<String>;
};

/**
 * `<mod-metadata>` tag.
 */
typedef ModMetadata =
{
  /**
   * The readable name of the mod.
   */
  @:attr var name:String;

  /**
   * The readable description of the mod.
   */
  @:attr var description:String;
};

/**
 * `<mod-license>` tag.
 */
typedef ModLicense =
{
  > ValueTag,
};
