#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Warlord";

#let warlordPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: ["I will lead us to victory, no matter the cost."],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (classes.armorProf.cloth, classes.armorProf.leather, classes.armorProf.hide),
        weaponProficiencies: (
          classes.weaponProf.simpleMelee,
          classes.weaponProf.militaryMelee,
          classes.weaponProf.simpleRanged,
        ),
        implementProficiencies: (),
      );

      #classes.defensesAndHealth(fortitude: 16, will: 11, reflex: 12, health: 22, healthOnLevelUp: 5, healingSurges: 7)

      #classes.abilities(
        mainAbilities: "Strength",
        extraAbilities: ("Intelligence", "Charisma"),
        class: className,
      );

      #colbreak();
      = Inspiring Word
      Using the inspiring word power, warlords can grant their comrades additional resilience with nothing more than a shout of encouragement.

      #powers.power(
        title: "Inspiring Word",
        type: powers.powerType.encounter,
        description: [You call out to a wounded ally and offer inspiring words of courage and determination that invigorates your comrade.],
        action: powers.actionType.minor,
        range: [*Close* burst 5 (10 at 11th level, 15 at 21st level)],
        target: [You or one ally in the burst],
        traits: "Healing",
        additionalRows: (
          [*Effect:* The target can spend a healing surge and regain 1d6 additional hit points. #linebreak()

            *Level 6:* 2d6 additional hit points. #linebreak()
            *Level 11:* 3d6 additional hit points. #linebreak()
            *Level 16:* 4d6 additional hit points. #linebreak()
            *Level 21:* 5d6 additional hit points. #linebreak()
            *Level 26:* 6d6 additional hit points.],
          [*Special:* You can use this power twice per encounter, but only once per round. At 16th level, you can use this power three times per encounter.],
        ),
        isSpecial: true,
      );

      = Tactical Path
      The Warlord's path was decided long ago: either mastering precise volleys to command from afar or forging ahead to lead the charge with fearless resolve. Choose one of the options below:

      #theme.choiceBox("From The Back");
      You gain proficiency with military ranged weapons.

      #theme.choiceBox("Leading the Charge");
      You gain proficiency with Chainmail and Light Shields.

    ]
    #set page(columns: 2)

    = Leadership Style
    Every Warlord has his own brand of leadership, choose one of the options below:

    #theme.choiceBox("Battlefront Leader");
    You gain proficiency with heavy shields, and you gain the battlefront shift power.

    #powers.power(
      title: "Battlefront Shift",
      type: powers.powerType.encounter,
      description: [As combat breaks out, you position yourself at the forefront of the battle, rallying your allies to advance with you.],
      action: powers.actionType.noAction,
      range: [*Close* burst 3],
      target: [You or one ally in the burst],
      traits: "Martial",
      trigger: [You roll initiative],
      additionalRows: ([*Effect:* The target shifts half his or her speed.],),
    )

    #theme.choiceBox("Combat Leader");
    You and each ally within 10 squares who can see and hear you gain a +2 power bonus to initiative.

    = Commanding Presence
    Choose one of the following presence benefits below.
    #theme.choiceBox("Bravura Presence");
    When an ally who can see you spends an action point to take an extra action and uses the action to make an attack, the ally can choose to take advantage of this feature before the attack roll. If the ally chooses to do so and the attack hits, the ally can either make a basic attack or take a move action after the attack as a free action. If the attack misses, the ally grants combat advantage to all enemies until the end of his or her next turn.

    #theme.choiceBox("Insightful Presence");
    When any ally who can see you spends an action point to take an extra action, that ally gains a bonus to all defenses equal to half your *Intelligence* or *Charisma* until the start of his or her next turn.

    #colbreak();

    #theme.choiceBox("Inspiring Presence");
    When an ally who can see you spends an action point to take an extra action, that ally also regains hit points equal to one-half your level + your *Charisma*.

    If the ally can see multiple warlord allies who have this class feature, the ally regains hit points from only one of them (the ally's choice).

    #theme.choiceBox("Resourceful Presence");
    When an ally who can see you spends an action point to take an extra action and uses the action to make an attack, that attack gains a bonus to damage equal to one-half your level + your *Intelligence*. If the attack hits no target, the ally gains temporary hit points equal to one-half your level + your *Charisma*.

    #theme.choiceBox("Skirmishing Presence");
    When an ally who can see you spends an action point to make an attack, that ally can use a free action to shift a number of squares equal to your *Intelligence* or *Charisma* before or after the attack.

    #theme.choiceBox("Tactical Presence");
    When an ally you can see spends an action point to make an attack, the ally gains a bonus to the first attack roll of that attack. The bonus equals half your *Intelligence*.

    If multiple warlord allies who have this class feature can see the ally, he or she gains the bonus from only one of them (the ally's choice).


    = Powers
    You may choose 2 At-Will, 1 Encounter and 2 Daily #className Powers.

    = Feats
    You gain access to the #className feat list

    #pagebreak()

    #set page(columns: 1)

    #classes.powerLinks(className: className);

    #pagebreak()

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Armored Warlord");
      *Requirements: Battlefront Leader, Leading The Charge* #linebreak();
      You gain proficiency with scale armor, and you increase your number of healing surges by one.

      #theme.choiceBox("Courageous Word");
      *Requirements: Bravura Presence* #linebreak();
      When you use inspiring word, the target can choose to take advantage of this feat. If the target does, he or she grants combat advantage until the start of your next turn but deals extra damage equal to your *Charisma* against the next enemy he or she hits before the end of your next turn.

      #theme.choiceBox("Resourceful Presence");
      When an enemy provokes an opportunity attack from you, you can take an opportunity action to let one ally adjacent to you shift a number of squares equal to your *Intelligence* to a square not adjacent to the provoking enemy as a free action.

      #theme.choiceBox("Emboldening Presence");
      *Requirements: Inspiring Presence* #linebreak();
      When an ally with line of sight to you expends his or her second wind, he or she gains a bonus to saving throws equal to your *Charisma* until the end of his or her next turn.

      #theme.choiceBox("Export Combat Leader");
      The bonus to initiative from Combat Leader increases to +3.

      #theme.choiceBox("Guide the Shot");
      Whenever you grant an ally a ranged basic attack, that ally's attack ignores cover and concealment (but not superior cover or total concealment).

      #theme.choiceBox("Imaginative Reaction");
      *Requirements: Combat Leader, Resourceful Presence* #linebreak();
      Whenever you roll initiative, you can subtract 4 from your check result to increase the result of one or two allies who benefit from Combat Leader. One ally gains a bonus equal to your *Charisma* and the other gains a bonus equal to your *Intelligence*.

      #theme.choiceBox("Improved Healing Word");
      Add your *Charisma* to the hit points restored by your inspiring word.

      #theme.choiceBox("Improved Skirmishing");
      *Requirements: Skirmishing Presence* #linebreak();
      When an ally who can see you spends an action point to attack, that ally gains a +1 bonus to attack rolls for that attack.

      #theme.choiceBox("Improved Tactics");
      *Requirements: Tactical Presence* #linebreak();
      Add 1 to the attack roll bonus granted by your Tactical Presence.

      #theme.choiceBox("Inspired Defense");
      When you use inspiring word, the target also gains a +1 power bonus to all defenses until the start of your next turn.

      #theme.choiceBox("Lend Might");
      When an ally makes an attack granted by one of your Warlord powers to attack an enemy adjacent to you, that ally gains a +1 bonus to the attack roll.

      #theme.choiceBox("Lend Strength");
      Whenever you grant an ally a basic attack against an enemy that is adjacent to you, the ally gains a +2 bonus to the attack's damage roll.

      #theme.choiceBox("Resourceful Donation");
      Whenever you spend a healing surge, you can divide the hit points regained between yourself and one ally adjacent to you in any proportion.

      #theme.choiceBox("Risky Charge");
      When you charge, you can choose to use this feat. If the charge attack hits, you also knock the enemy prone. If the attack misses, the enemy can make a melee basic attack against you as a free action.

      #theme.choiceBox("Rousing Resurgence");
      *Requirements: Inspiring Presence* #linebreak();
      Allies who expend their second winds while they have line of sight to you also gain temporary hit points equal to your *Charisma* plus one-half your level.

      #theme.choiceBox("Shrewd Positioning");
      *Requirements: Combat Leader, Tactical Presence* #linebreak();
      When you make an initiative check, you can slide each ally benefiting from Combat Leader 1 square.

      #theme.choiceBox("Stirring Word");
      *Requirements: Inspiring Presence* #linebreak();
      When you use inspiring word, the target gains temporary hit points equal to your *Charisma*.

      #theme.choiceBox("Tactical Assault");
      *Requirements: Tactical Presence* #linebreak();
      When an ally who can see you spends an action point to make an attack, the attack's damage roll gains a bonus equal to your *Intelligence*.
    ]
  ]
}