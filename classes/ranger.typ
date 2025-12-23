#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Ranger";

#let rangerPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: ["I found you, time to make peace with your maker."],
    )

    #columns(2)[
      = Role
      A *Martial Striker*, the ranger specializes in hunting down and eliminating priority targets.

      #classes.proficiencies(
        armorProficiencies: (
          classes.armorProf.light,
          classes.armorProf.chainmail,
        ),
        weaponProficiencies: (
          classes.weaponProf.simpleMelee,
          classes.weaponProf.simpleRanged,
          classes.weaponProf.militaryMelee,
          classes.weaponProf.militaryRanged,
        ),
        implementProficiencies: (),
      );

      #classes.defensesAndHealth(fortitude: 12, will: 11, reflex: 12, health: 22, healthOnLevelUp: 5, healingSurges: 6)

      #classes.abilities(
        mainAbilities: ("Strength", "Dexterity"),
        extraAbilities: ("Constitution", "Wisdom", "Dexterity"),
        class: className,
      );

      #colbreak();
      = Hunter's Quarry
      You gain the Hunter's Quarry power.

      #powers.power(
        title: "Hunter's Quarry",
        type: powers.powerType.at-will,
        traits: "Martial",
        action: powers.actionType.minor,
        range: "Personal",
        target: "The nearest enemy that you can see.",
        additionalRows: (
          [*Effect:*
            The target is designated as your quarry. The target remains your quarry until the end of the encounter, until the target is defeated, or until you designate a different target as your quarry. You can designate one enemy as your quarry at a time. If multiple enemies you can see are equally nearest to you, you choose which becomes your quarry.

            Whenever you hit the enemy designated as your quarry with an attack that deals damage during your turn, you deal 1d6 extra damage to that enemy.

            *Level 11:* 2d6 extra damage. #linebreak()
            *Level 21:* 3d6 extra damage.],
        ),
      )

      = Fighting Style
      Each ranger has their own fighting style, choose one from the options below.

      #theme.choiceBox("Archer Fighting Style");
      Whenever you roll initiative, you can shift a number of squares equal to your *Wisdom* modifier, even if you are surprised. You gain Defensive Mobility as a bonus feat.

      #theme.choiceBox("Hunter Fighting Style");
      You gain a +4 bonus to AC against opportunity attacks you provoke by making a ranged attack. You can sheathe a weapon as a free action and can draw a weapon as part of the same action used to attack with it.

      #theme.choiceBox("Marauder Fighting Style");
      You gain a +1 bonus to speed while you aren't using a shield or a two-handed weapon. This bonus to speed increases to +2 at 21st level. While wielding a melee weapon in each hand, you gain a +1 shield bonus to AC and Reflex.
    ];

    #pagebreak();
    #set page(columns: 2)

    #theme.choiceBox("Two-Blade Fighting Style");
    You can wield any one-handed weapon in your off hand as if it were an off-hand weapon. You gain Toughness as a bonus feat.

    = Hunter’s Specialization
    Choose one of the options below:

    #theme.choiceBox("Prime Shot");
    If none of your allies are nearer to your target than you are, you receive a +1 bonus to ranged attack rolls against that target.

    #theme.choiceBox("Running Attack");
    Whenver you use a standard action that lets you move (such as making a charge or using the skirmish shot power), and you end that movement at least 2 squares away from where you began that move, you gain a +1 bonus to attack rolls made as part of that standard action.

    = Practised Survivalist
    You are an expert at a specific technique. You learn one non-magical Technique of your choice.

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
      #theme.choiceBox("Precise Hunter");
      *Requirements: 3 Wisdom* #linebreak();
      When you score a critical hit against the target of your Hunter's Quarry with a ranged attack, your allies gain a +1 bonus to attack rolls against that target until the start of your next turn.

      #theme.choiceBox("Agile Running Attack");
      *Requirements: Running Attack* #linebreak();
      When you move as part of using a skirmisher attack power, you ignore difficult terrain.

      #theme.choiceBox("Flank on the Run");
      *Requirements: Running Attack* #linebreak();
      Whenever you are adjacent to an enemy and move to another square adjacent to that enemy, you do not provoke an opportunity attack from that enemy for leaving your square.

      #theme.choiceBox("Hobbling Strike");
      Whenever you would deal Hunter's Quarry damage, you can forgo one die of that damage to slow the target until the end of your next turn.

      #theme.choiceBox("Hunter’s Aim");
      You don't take the normal –2 penalty to attack rolls against your quarry if it has cover or concealment.
      
      #colbreak();

      #theme.choiceBox("Lethal Hunter");
      The extra damage dice from your Hunter's Quarry class feature increase from d6s to d8s.

      #theme.choiceBox("Second Shot");
      You can designate the second-nearest enemy as your quarry instead of the nearest enemy.

      #theme.choiceBox("Predatory Action");
      If you spend an action point to take an extra action and have already dealt Hunter's Quarry damage during this round, you can deal the extra damage a second time during this turn.

      #theme.choiceBox("Staggering Strike");
      Whenever you would deal Hunter's Quarry damage to an enemy, you can forgo one die of that damage to push that enemy 1 square.

      #theme.choiceBox("Swift Footwork");
      Whenever you use a martial encounter or daily power that allows you to shift, you can shift 2 extra squares.
    ]
  ]
}

