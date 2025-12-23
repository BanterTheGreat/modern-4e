#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Barbarian";
#let barbarianPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: ["RAAAAAAAGH!"],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (
          classes.armorProf.cloth,
          classes.armorProf.leather,
          classes.armorProf.hide,
        ),
        weaponProficiencies: (
          classes.weaponProf.simpleMelee,
          classes.weaponProf.militaryMelee,
        ),
        implementProficiencies: (),
      );

      #classes.defensesAndHealth(fortitude: 17, will: 11, reflex: 11, health: 25, healthOnLevelUp: 6, healingSurges: 8)

      #classes.abilities(
        mainAbilities: "Strength",
        extraAbilities: ("Constitution", "Dexterity", "Charisma"),
        class: className,
      );

      #colbreak();

      = Barbarian Agility
      While wearing light or no armor, you gain a +1 bonus to your Reflex defense and may use your Strength in place of Intelligence or Dexterity when calculating your AC score.

      = Feral Might
      Barbarians connect with the natural world in a variety of ways. Some barbarians grow so hardened to physical punishment that they find it easier to simply absorb, rather than avoid, attacks. Others are living examples of the power of one's will to shape one's fate. Choose one of the following options:

      #theme.choiceBox("Rageblood Vigor")
      You gain the swift charge power. Once per turn when you bloody a non-minion enemy or reduce a non-minion enemy to 0 hit points, you gain temporary hit points equal to your *Constitution* plus half your level.

      #powers.power(
        title: "Swift Charge",
        description: "As your foe falls, you rush towards your next victim",
        type: powers.powerType.encounter,
        action: powers.actionType.free,
        range: "Personal",
        trigger: "You reduce a creature to 0 hit points, or an enemy adjacent to you drops to 0 hit points.",
        traits: "Primal",
        additionalRows: (
          [
            *Effect:* You charge an enemy.

            *Level 11:* Your charge attack deals 1[W] extra damage on a hit. #linebreak()
            *Level 21:* Your charge attack deals 2[W] extra damage on a hit.
          ],
        ),
      )

      #theme.choiceBox("Thaneborn Triumph")
      You gain the roar of triumph power. Once per turn when you bloody a non-minion enemy or reduce a non-minion enemy to 0 hit points, choose an enemy adjacent to you. The next attack by you or an ally against that enemy gains a +3 power bonus to the attack roll and deals extra damage to that creature equal to your *Charisma*.

      #powers.power(
        title: "Roar of Triumph",
        description: "Your howl of victory shakes your enemies to the core, as they know your blood thirst is not yet quenched.",
        type: powers.powerType.encounter,
        action: powers.actionType.free,
        range: [*Close* burst 3 (burst 4 at 11th level; burst 5 at 21st level)],
        trigger: "You reduce a creature to 0 hit points, or an enemy adjacent to you drops to 0 hit points.",
        traits: "Fear, Primal",
        target: "Each enemy in the burst",
        additionalRows: (
          [
            *Effect:* Choose one target. The next attack by you or an ally against that target before the end of your next turn gains a +3 power bonus to the attack roll and deals extra damage equal to your *Charisma*.

            *Level 11:* The bonus to the attack roll increases to +4, and the extra damage increases by 2. #linebreak()
            *Level 21:* The bonus to the attack roll increases to +5, and the extra damage increases by 4.
          ],
        ),
      )

      #theme.choiceBox("Thunderborn Wrath");
      You gain the war cry power. Once per turn when you bloody a non-minion enemy or reduce a non-minion enemy to 0 hit points, each enemy adjacent to you takes thunder damage equal to your *Constitution* plus half your level.

      #powers.power(
        title: "War Cry",
        description: "Your potent victory cry sends nearby enemies reeling in terror.",
        type: powers.powerType.encounter,
        action: powers.actionType.free,
        range: [*Close* blast 3 (Blast 5 at 11th level, blast 7 at 21st level)],
        trigger: "You reduce a creature to 0 hit points, or an enemy adjacent to you drops to 0 hit points.",
        target: "Each enemy in the blast",
        traits: "Fear, Primal",
        additionalRows: (
          [
            *Effect:* You may push each target up to 1 square, and each target gains vulnerability to thunder damage equal to your Constitution plus 1 until the end of your next turn.

            *Level 11:* up to 2 squares, Constitution plus 2. #linebreak();
            *Level 21:* up to 3 squares, Constitution plus 3.
          ],
        ),
      )

      #theme.choiceBox("Whirling Slayer");
      You gain the Whirling Lunge power, and you can wield one-handed weapons in your off hand without needing the off-hand property. Once per turn when you bloody a non-minion enemy or reduce a non-minion enemy to 0 hit points, you can shift a number of squares equal to half your *Dexterity* as a free action, and your next attack before the end of your next turn against any enemy adjacent to you after the shift gains a +2 bonus to damage rolls against those enemies. Increase this bonus to +3 at 11th level and +4 at 21st level.

      #powers.power(
        title: "Whirling Lunge",
        description: "Striking down one foe, you whirl deeper into enemy ranks.",
        type: powers.powerType.encounter,
        action: powers.actionType.free,
        range: "Personal",
        trigger: "You reduce a creature to 0 hit points, or an enemy adjacent to you drops to 0 hit points.",
        traits: "Primal, Weapon",
        additionalRows: (
          [
            *Effect:* You shift up to 2 squares and then deal 1[W] damage (off-hand weapon) to one enemy adjacent to you after the shift that you can see.

            *Level 11:* 3 squares, 2[W] damage (off-hand weapon) #linebreak()
            *Level 21:* 4 squares, 3[W] damage (off-hand weapon)
          ],
        ),
      );

      = Rage Strike
      You can focus your fury into a single, devastating attack. You gain the rage strike power.

      #powers.power(
        title: "Rage Strike",
        description: "You channel your primal rage into a devastating attack.",
        type: powers.powerType.at-will,
        action: powers.actionType.standard,
        range: "Melee weapon",
        traits: "Primal, Weapon",
        requirement: "You must be raging and have at least one unused rage power.",
        target: "One creature",
        offenseStat: "Strength",
        defenseStat: "AC",
        isSpecial: true,
        additionalRows: (
          [
            *Hit:* You deal damage based on the level of the rage power you expended, _if the target of this power is in the Elite or Solo group, the total damage you deal to that target is doubled._

            *1st level:* 	3[W] + Strength #linebreak()
            *5th level:* 	5[W] + Strength #linebreak()
            *9th level:*	7[W] + Strength #linebreak()
            *15th level:* 	9[W] + Strength #linebreak()
            *19th level:* 	11[W] + Strength #linebreak()
            *20th level:*	12[W] + Strength #linebreak()
            *25th level:* 	13[W] + Strength #linebreak()
            *29th level:* 	15[W] + Strength
          ],
          [
            *Miss:* Half damage.
          ],
          [
            *Special:* To make this attack, you expend an unused Daily Barbarian rage power without using it.
          ],
        ),
      )

      #colbreak();

      = Rampage
      Whenever you use Rage Strike, a Daily power with the Rage keyword, or score a critical hit with a Primal attack power, you may also make a basic attack as a free action.

      = Powers
      You may choose 2 At-Will, 1 Encounter and 2 Daily #className Powers.

      = Feats
      You gain access to the #className feat list

      #colbreak();

      #classes.powerLinks(className: className);
    ]

    #pagebreak()

    #set page(columns: 1)


    #pagebreak()

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Angry Grandfather");
      You gain a bonus to death saving throws equal to the number of powers with the Rage keyword you know that are currently expended. This bonus increases by 1 for each ally within 10 squares of you who has at least one tribal feat.

      #theme.choiceBox("Bloodthirsty Visage");
      You gain a +2 feat bonus to damage rolls with fear powers, increasing to +3 at level 11 and +4 at level 21. This feat bonus is doubled against creatures that were subject to one of your fear effects before the attack.

      #theme.choiceBox("Blood Cousin's Tribe");
      You gain a +1 bonus to damage rolls when raging, increasing to +2 at level 11 and +3 at level 21. This bonus increases by 1 for each ally within 10 squares of you who has at least one tribal feat.

      #theme.choiceBox("Bloody Triumph");
      *Requirements: Thaneborn Triumph* #linebreak()
      Once per turn when you bloody an enemy or reduce a non-minion enemy to 0 hit points, an ally who can see you can shift up to 2 squares as a free action.

      #theme.choiceBox("Crackling Wrath");
      *Requirements: Thunderborn Wrath* #linebreak()
      You gain resistance to thunder and lightning damage equal to 5 + half your level, or your highest resistance to thunder and lightning damage increases by 5. Your Thunderborn Wrath deals 2 extra lightning damage, increasing to 3 at level 11 and 5 at level 21.
      Previous feat title: Thunderborn Rage

      #colbreak();

      #theme.choiceBox("Deadly Rage");
      Whenever you start your turn while raging, you can choose to take damage equal to half your level (minimum 1), which cannot be reduced or prevented in any way. If you do so, you gain a +2 bonus to damage rolls until the end of your turn. Increase the bonus to damage rolls to +4 at level 11, and +6 at level 21.

      #theme.choiceBox("Double Lunge");
      *Requirements: Whirling Lunge power* #linebreak()
      When you use Whirling Lunge, you deal 1[W] (main hand weapon) extra damage to the target, increasing to 2[W] (main hand weapon) extra damage at level 21.

      #theme.choiceBox("Eager Charger");
      *Requirements: Swift Charge power* #linebreak()
      You gain a +2 feat bonus to speed when charging. In addition, you deal 1[W] extra damage with the charge attack granted by your Swift Charge power, increasing to 2[W] extra damage at level 21.

      #theme.choiceBox("Brutal Reach");
      When you are raging and wielding a two-handed reach weapon, you can reroll any weapon damage die that displays a 1 when making melee attacks.

      #theme.choiceBox("Rising Fury");
      When you reduce an enemy to 0 hit points, you gain a +2 feat bonus to weapon damage rolls until the end of your next turn. The bonus increases to +3 at 11th level and +4 at 21st level.

    ]
  ]
}
