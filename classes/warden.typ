#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Warden";

#let wardenPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: ["Stand tall, nature itself fights alongside me."],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (
          classes.armorProf.cloth,
          classes.armorProf.leather,
          classes.armorProf.hide,
          classes.armorProf.lightShield,
          classes.armorProf.heavyShield,
        ),
        weaponProficiencies: (
          classes.weaponProf.simpleMelee,
          classes.weaponProf.simpleRanged,
          classes.weaponProf.militaryMelee,
        ),
        implementProficiencies: (),
      );

      #classes.defensesAndHealth(fortitude: 16, will: 12, reflex: 11, health: 27, healthOnLevelUp: 7, healingSurges: 9)

      #classes.abilities(
        mainAbilities: "Strength",
        extraAbilities: ("Constitution", "Wisdom"),
        class: className,
      );

      #colbreak();

      = Font of Life
      At the start of your turn, you can make a saving throw against one effect that a save can end. On a save, the effect immediately ends, preventing it from affecting you on your current turn. If you fail the saving throw, you still make a saving throw against the effect at the end of your turn.

      = Nature's Wrath
      Once during each of your turns, you can mark each adjacent enemy as a free action. This mark lasts until the end of your next turn.
      In addition, you gain the warden’s fury and warden’s grasp powers. You can use these powers against enemies to prevent them from harming those you protect.

      #powers.power(
        title: "Warden's Fury",
        description: "You lash out with nature's wrath at a foe that has attacked your ally and diminish its defenses.",
        type: powers.powerType.at-will,
        action: powers.actionType.immediateInterrupt,
        trigger: "An enemy marked by you makes an attack that does not include you as a target",
        traits: "Primal, Weapon",
        range: [*Melee* weapon],
        target: "The triggering enemy",
        offenseStat: "Strength",
        defenseStat: "Fortitude",
        additionalRows: (
          [
            *Hit:* 1[W] + Strike modifier damage, and the target grants combat advantage to you and your allies until the end of your next turn.

            *Level 21:* 2[W] + Strike modifier damage.
          ],
        ),
      );

      #powers.power(
        title: "Warden's Grasp",
        description: "Spectral vines clutch at a foe that has attacked your ally, impeding your enemy's movement.",
        type: powers.powerType.at-will,
        action: powers.actionType.immediateReaction,
        trigger: "An enemy marked by you that is within 5 squares of you makes an attack that does not include you as a target",
        traits: "Primal",
        range: [*Close* burst 5],
        target: "The triggering enemy in the burst",
        additionalRows: (
          [
            *Effect:* You slide the target 1 square. The target is slowed and cannot shift until the end of its turn.
          ],
        ),
      );
    ]

    #pagebreak();
    #set page(columns: 2)

    = Guardian Might
    Wardens connect with the natural world in a variety of ways to augment their fighting abilities. Choose one of the following options:
    #theme.choiceBox("Earthstrength");
    While you are not wearing heavy armor, you add your *Constitution* to your AC.
    In addition, when you use your second wind, you gain an additional bonus to AC equal to your *Constitution*. The bonus lasts until the end of your next turn.

    #theme.choiceBox("Wildblood");
    While you are not wearing heavy armor, you add your *Wisdom* to your AC.
    In addition, when you use your second wind, each enemy marked by you takes an additional penalty to attack rolls for attacks that don't include you as a target. The penalty equals your *Wisdom* and lasts until the end of your next turn.
    #theme.choiceBox("Stormheart");
    While you are not wearing heavy armor, you can add your *Constitution* to your AC.

    In addition, when you use your second wind, you slide each enemy marked by you and within 2 squares of you 1 square, and each enemy marked by you is slowed until the end of your next turn.

    #theme.choiceBox("Lifespirit");
    While you are not wearing heavy armor, you add your *Wisdom* to your AC.

    In addition, when you use your second wind, an ally within 5 squares of you can spend a healing surge and make a saving throw.

    = Powers
    You may choose 2 At-Will, 1 Encounter and 2 Daily #className Powers.

    = Feats
    You gain access to the #className feat list

    #colbreak();
    #classes.powerLinks(className: className);
    #pagebreak()

    #set page(columns: 1)

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Courage of the Lone Stag");
      When you mark three or more enemies with Nature's Wrath, you gain a +2 bonus to weapon damage rolls against creatures you mark until the start of your next turn. This bonus increases to +3 at 11th level, and to +4 at 21st level.

      #theme.choiceBox("Crushing Earthstrength");
      When you use your second wind, you gain a bonus to weapon damage rolls equal to your *Constitution* modifier until the end of your next turn.

      #theme.choiceBox("Dancing Leaves");
      When you use warden's grasp, you can teleport up to 2 squares to a square closer to the target instead of sliding it.

      #theme.choiceBox("Earthstrength Resilience");
      *Requirements: Earthstrength* #linebreak();
      When you use your second wind, you gain resist 2 to all damage until the end of your next turn. The resistance increases to 5 at 11th level and 8 at 21st level.

      #theme.choiceBox("Lifespirit Constitution");
      *Requirements: Lifespirit* #linebreak();
      You can grant a saving throw to a second ally within 5 squares of you when you use your second wind.

      #colbreak();

      #theme.choiceBox("Revitalizing Font of Life");
      If you succeed on a saving throw granted by Font of Life, you gain a +2 bonus to all other saving throws during or at the end of your current turn.

      #theme.choiceBox("Roiling Storm");
      *Requirements: Stormheart* #linebreak();
      When you use your second wind, you can shift a number of squares equal to your *Constitution* modifier instead of sliding enemies marked by you.

      #theme.choiceBox("Sudden Roots");
      Whenever you hit an enemy with an opportunity attack, that enemy is slowed until the end of its turn.

      #theme.choiceBox("Wildblood Fury");
      *Requirements: Wildblood* #linebreak();
      When you use your second wind, you gain a bonus to damage rolls against each enemy marked by you equal to your *Wisdom* modifier until the end of your next turn.

      #theme.choiceBox("Crushing Guardian");
      You gain a +2 bonus to damage rolls while in guardian form. This bonus increases to +3 at 11th level, and to +4 at 21st level.
    ]
  ]
}
