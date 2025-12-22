#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Fighter";

#let fighterPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: [_They are up against a wall: You_
        #linebreak()
        #text(size: 10pt)[martial Defender]],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (
          classes.armorProf.cloth,
          classes.armorProf.leather,
          classes.armorProf.hide,
          classes.armorProf.chainmail,
          classes.armorProf.scale,
          classes.armorProf.lightShield,
          classes.armorProf.heavyShield,
        ),
        weaponProficiencies: (
          classes.weaponProf.simpleMelee,
          classes.weaponProf.simpleRanged,
          classes.weaponProf.militaryMelee,
          classes.weaponProf.militaryRanged,
        ),
        implementProficiencies: (),
      );

      #classes.defensesAndHealth(fortitude: 17, will: 11, reflex: 11, health: 25, healthOnLevelUp: 7, healingSurges: 9)

      #classes.abilities(
        mainAbilities: "Strength",
        extraAbilities: ("Constitution", "Dexterity", "Wisdom"),
        class: className,
      );

      = Combat Challenge
      In combat, it’s dangerous to ignore The Fighter. Every time you attack an enemy, you can choose to *mark* that target. The mark lasts until the end of your next turn.

      Additionally, you gain the Combat Challenge power:

      #powers.power(
        title: "Combat Challenge",
        type: powers.powerType.at-will,
        action: powers.actionType.immediateInterrupt,
        traits: "Martial, Weapon",
        range: "Melee 1",
        trigger: "Whenever an enemy marked by you is adjacent to you and shifts or makes an attack that does not include you as a target.",
        additionalRows: (
          [*Effect:* You can make a melee basic attack against that enemy],
        ),
      );

      = Reactivity
      As a Fighter, you are quick to strike down those who try to escape your reach. Choose one of the options below.

      #theme.choiceBox("Combat Reactivity");
      #powers.power(
        title: "Combat Dexterity",
        type: powers.powerType.at-will,
        action: powers.actionType.opportunity,
        traits: "Martial, Weapon",
        trigger: "An enemy adjacent to you takes an action that provokes an opportunity attack.",
        range: "Melee weapon",
        additionalRows: (
          [*Effect:* After the triggering enemy completes the action, you shift a number of squares equal to your *Dexterity*. You must end the shift closer to the target than you were when you began the shift. Then, make the following attack],
        ),
      )

      #powers.power(
        title: "Combat Dexterity Followup",
        type: powers.powerType.at-will,
        action: powers.actionType.noAction,
        traits: "Martial, Weapon",
        target: "The triggering enemy",
        offenseStat: powers.offense.strength,
        defenseStat: powers.defense.ac,
        range: "Melee weapon",
        additionalRows: (
          [*Hit:* 1[W] + *Strength* damage, and you knock the target prone. #linebreak();

            *Level 21:* 2[W] + *Strength* damage.],
        ),
      )

      #theme.choiceBox("Combat Superiority")
      You gain a bonus to opportunity attacks equal to either your *Wisdom* or *Dexterity*. An enemy struck by your opportunity attack stops moving, If a move provoked the attack. If it still has actions remaining, it can use them to resume moving.

      = Fighter Specialization
      As a Fighter, you specialise in a specific way of fighting. Choose one of the options below.

      #theme.choiceBox("One-Handed Weapon Talent")
      You gain a +1 bonus to weapon attack rolls with one-handed weapons.

      #theme.choiceBox("Two-Handed Weapon Talent")
      You gain a +1 bonus to weapon attack rolls with two-handed weapons.

      #theme.choiceBox("Battlerager Constitution")
      Whenever you hit an enemy with a melee or a close attack, you gain temporary hit points equal to your *Constitution*, plus any temporary hit points normally granted by the power. You gain the hit points only after the attack is resolved.

      If you use an invigorating Fighter attack power and miss every target with it, you gain temporary hit points equal to your *Constitution*.
      When wearing light armor or chainmail, you gain a +2 bonus to damage rolls with melee and close weapon attacks whenever you have temporary hit points.

      = Powers
      You may choose 2 At-Will, 1 Encounter and 2 Daily #className Powers.

      = Feats
      You gain access to the #className feat list

      #colbreak();
      #classes.commonTraits(class: className, commonTraits: [
        == Reliable
        An effect type. If a reliable power misses every target, the power is not expended.
        == Invigorating
        The creature gains temporary hit points equal to their *Constitution* when it hits with a power that has the invigorating keyword. No invigorating power grants temporary hit points more than once during a turn, even if the user hits more than once with that power.
      ]);
      #classes.powerLinks(className: className);
    ]

    #pagebreak()



    #set page(columns: 1)

    #pagebreak()

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Brawler Guard")
      You gain a +1 shield bonus to AC and Reflex while you wield a weapon in one hand and your other hand is free or grabbing a creature.

      #theme.choiceBox("Dragging Takedown")
      *Requirements: 2 Dexterity* #linebreak();
      Whenever you knock an enemy prone, you can also slide that enemy 1 square.

      #theme.choiceBox("Focused Superiority")
      While you are wielding a one-handed weapon, you gain a bonus to damage rolls equal to your *Wisdom* with opportunity attacks.

      #theme.choiceBox("Forceful Opportunist")
      *Requirements: One-Handed Weapon Talent* or *Two-Handed Weapon Talent* #linebreak();
      Whenever you hit a target with an opportunity attack, you can push the target 1 square and shift into the square the target left.

      #theme.choiceBox("Mobile Challenge")
      After you hit an enemy with a melee basic attack granted by your Combat Challenge feature, you can shift one square.

      #colbreak();

      #theme.choiceBox("Shield Push")
      If you hit a foe while using a shield with an attack granted by your Combat Challenge feature, you push the target 1 square after dealing damage.

      #theme.choiceBox("Wary Fighter")
      You use your *Wisdom* instead of your *Dexterity* for determining your Initiative Bonus.

      #theme.choiceBox("Pin Down")
      *Requirements: 4 Constitution* #linebreak();
      A prone target you are grabbing can’t stand until you end the grab or it escapes.

      #theme.choiceBox("Unstoppable")
      *Requirements: 2 Wisdom* #linebreak();
      You gain a +5 bonus to saving throws against the Slowed and Immobilized conditions.

      #theme.choiceBox("Sideways Defense")
      Allies Adjacent to you gain a +1 bonus to all defenses against any creature marked by you.

      #theme.choiceBox("Savage")
      While you are wielding a two-handed weapon, you gain a bonus to damage rolls equal to your *Constitution* with opportunity attacks.
    ]
  ]
}
