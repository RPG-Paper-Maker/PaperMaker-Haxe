package pm.system;

import haxe.DynamicAccess;
import pm.core.Types.ClassJSON;

/**
 * Character Class of the game
 *
 */
extern class Class extends Lang {
  /**
   * Final Level Property = finalLevel
   */
  public static var PROPERTY_FINAL_LEVEL: String;

  /**
   * Experience Base Property = experienceBase
   */
  public static var PROPERTY_EXPERIENCE_BASE: String;

  /**
   * Experience Inflation Property = experienceInflation
   */
  public static var PROPERTY_EXPERIENCE_INFLATION: String;

  /**
   * Initial Class Level
   */
  public var initialLevel: Int;

  /**
   * Final Class Level
   */
  public var finalLevel: Int;

  /**
   * The base experience for the class level.
   */
  public var experienceBase: Float;

  /**
   * The experience inflation for the class.
   */
  public var experienceInflation: Float;

  /**
   * THe experience table for the class.
   */
  public var experienceTable: DynamicAccess<Dynamic>;

  /**
   * The statistic progression for the class.
   */
  public var statisticsProgression: StatisticProgression;

  public var skills: Array<ClassSkill>;

  public function new(?json: ClassJSON): Void;

  public function setup(): Void;

  /** 
   * Read the JSON associated to the class
   * @param {ClassJSON} json Json object describing the class
   */
  public function read(json: ClassJSON): Void;

  /** 
   * Get property according to upClass
   * @param {string} prop The property name
   * @param {Class} upClass The up class
   * @returns {Any}
   */
  public function getProperty(prop: String, upClass: Class): Any;

  /** Get the experience table
   * @param {Class} upClass The up class
   * @returns {Any}
   */
  public function getExperienceTable(upClass: Class): Any;

  /**
   * Get the statistics progression
   * @param {Class} upClass The up class
   * @returns {StatisticProgression[]}
   */
  public function getStatisticsProgression(upClass: Class): Array<StatisticProgression>;

  /** Get the skills
   * @param {Class} upClass The up class
   * @returns {ClassSkill[]}
   */
  public function getSkills(upClass: Class): Array<ClassSkill>;
}
