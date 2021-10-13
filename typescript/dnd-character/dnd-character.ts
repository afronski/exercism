const ABILITY_DICE_SIDES = 6;

export class DnDCharacter {
  public readonly strength: number;
  public readonly dexterity: number;
  public readonly constitution: number;
  public readonly intelligence: number;
  public readonly wisdom: number;
  public readonly charisma: number;

  public get hitpoints() {
    return 10 + DnDCharacter.getModifierFor(this.constitution);
  }

  constructor() {
    this.strength = DnDCharacter.generateAbilityScore();
    this.dexterity = DnDCharacter.generateAbilityScore();
    this.constitution = DnDCharacter.generateAbilityScore();
    this.intelligence = DnDCharacter.generateAbilityScore();
    this.wisdom = DnDCharacter.generateAbilityScore();
    this.charisma = DnDCharacter.generateAbilityScore();
  }

  public static generateAbilityScore(): number {
    const randomValuesForAbilities =
      [ ...new Array(4) ]
        .map(DnDCharacter.rollTheDice.bind(this, ABILITY_DICE_SIDES))
        .sort();

      randomValuesForAbilities.shift();

      return randomValuesForAbilities.reduce((value, acc) => acc + value, 0);
  }

  public static getModifierFor(abilityValue: number): number {
    return Math.floor((abilityValue - 10) / 2);
  }

  private static rollTheDice(sides: number): number {
    return Math.floor(Math.random() * (sides - 1)) + 1
  }
}
