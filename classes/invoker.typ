#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Invoker";

#let invokerPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: ["I will rain holy fire upon those who defy the gods."],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (
          classes.armorProf.cloth,
          classes.armorProf.leather,
          classes.armorProf.hide,
          classes.armorProf.chainmail,
        ),
        weaponProficiencies: (classes.weaponProf.simpleMelee, classes.weaponProf.simpleRanged),
        implementProficiencies: (classes.implementProf.rod, classes.implementProf.staff),
      );

      #classes.defensesAndHealth(fortitude: 12, will: 12, reflex: 12, health: 20, healthOnLevelUp: 4, healingSurges: 6)

      #classes.abilities(
        mainAbilities: "Wisdom",
        extraAbilities: ("Constitution", "Intelligence"),
        class: className,
      );

      #colbreak();
      = Channel Divinity
      Once per encounter you can invoke divine power, filling yourself with the strength of your patron deity. With the divine strength you invoke you can wield special powers. You can also learn other uses for this feature; for instance, the divinity feats grant characters with access to the Channel Divinity class feature the ability to use additional special powers.

      Regardless of how many different uses for Channel Divinity you know, you can use only one such ability per encounter. The special ability or power you invoke works just like your other powers. You gain the Rebuke Undead Channel Divinity power.

      #powers.power(
        title: "Rebuke Undead",
        description: "Undead flee and then cower in your presence, their bodies seared by divine light.",
        type: powers.powerType.encounter,
        range: [*Close* blast 5],
        action: powers.actionType.standard,
        offenseStat: "Wisdom",
        defenseStat: "Will",
        target: "Each undead creature in the blast",
        traits: "Channel Divinity, Divine, Implement, Radiant",
        additionalRows: (
          [
            *Hit:* 1d10 + Wisdom modifier radiant damage. You push the target 2 squares, and it is dazed until the end of your next turn. #linebreak();

            *Level 5:* 2d10 + Wisdom radiant damage. #linebreak();
            *Level 11:* 3d10 + Wisdom radiant damage. #linebreak();
            *Level 15:* 4d10 + Wisdom radiant damage. #linebreak();
            *Level 21:* 5d10 + Wisdom radiant damage. #linebreak();
            *Level 25:* 6d10 + Wisdom radiant damage. #linebreak();
          ],
          [
            *Miss:* Half damage.
          ],
          [*Channel Divinity*: You can use only one channel divinity power per encounter],
        ),
      );

      = Divine Covenant
      Invokers wield ancient divine power that is not accessible to most mortals -- only to those who enter into a personal covenant with a god. Invokers undergo long years of study and testing. Only after that time are they allowed to enter into the final covenant that grants them access to this class's powers. Some say that, in the final swearing of the covenant, the invoker's god briefly manifests, but the details of an invoker's initiation are a closely held secret.

      Choose one of the options described below. The Divine Covenant you choose provides you with a Channel Divinity power and a covenant manifestation that takes effect whenever you use a divine encounter or daily attack power. Your choice also provides bonuses to certain invoker powers, as detailed in those powers.

      #theme.choiceBox("Covenant Malediction")
      The gods entrust you with the invocations of destruction used in their war against the primordials, so you can carry forward their sacred cause and ensure that the world's enemies never rise again.

      == Channel Divinity
      You gain the Maledictor’s Doom power.

      == Covenant Manifestation
      When you use a divine encounter or daily attack power on your turn, you can push one target hit by the power 1 square after the power's effect is resolved.

      #powers.power(
        title: "Maledictor's Doom",
        description: "Foes who hear your solemn vow are shaken by its weighty promise.",
        type: powers.powerType.encounter,
        range: [*Close* blast 5],
        action: powers.actionType.minor,
        offenseStat: "Intelligence",
        target: "Each enemy in the blast",
        traits: "Channel Divinity, Divine, Fear",
        additionalRows: (
          [
            *Effect:* Each target takes a -1 penalty to attack rolls and saving throws until the end of your next turn. In addition, whenever the target is hit by a fear attack before the end of your next turn, you push the target 1 square as a free action.
          ],
          [
            *Miss:* Half damage.
          ],
          [*Channel Divinity*: You can use only one channel divinity power per encounter],
        ),
      );

      #theme.choiceBox("Covenant of Preservation");
      The gods have charged you to defend the faithful and to ally with those who seek to defeat the gods' enemies.

      == Channel Divinity
      You gain the Preserver's Rebuke power.

      == Covenant Manifestation
      When you use a divine encounter or daily attack power on your turn, you can slide an ally within 10 squares of you 1 square.

      #powers.power(
        title: "Preserver's Rebuke",
        description: "You call upon the gods to punish the enemy that dares harm those entrusted to your care.",
        type: powers.powerType.encounter,
        range: [*Personal*],
        action: powers.actionType.immediateReaction,
        offenseStat: "Intelligence",
        target: "An enemy within 10 squares of you",
        traits: "Channel Divinity, Divine",
        additionalRows: (
          [
            *Effect:* Before the end of your next turn, you gain a bonus to your next attack roll against the triggering enemy equal to your *Intelligence*.
          ],
          [*Channel Divinity*: You can use only one channel divinity power per encounter],
        ),
      );

      #theme.choiceBox("Covenant of Wrath");
      You have sworn to seek out and destroy those that oppose the gods. Primordials, demons, and devils fall before your magic like wheat before a scythe.

      == Channel Divinity
      You gain the Armor of Wrath power.

      == Covenant Manifestation
      When you use a divine encounter or daily attack power on your turn, you gain a bonus to the damage roll equal to 1 for each enemy you attack with the power.

      #powers.power(
        title: "Armor of Wrath",
        description: "As your foe strikes, you invoke the gods' power to encase yourself in a burning aura of radiant energy.",
        type: powers.powerType.encounter,
        range: [*Close* burst 5],
        action: powers.actionType.immediateReaction,
        offenseStat: "Intelligence",
        target: "The triggering enemy in the burst",
        trigger: "An enemy within 5 squares of you hits you",
        traits: "Channel Divinity, Divine, Radiant",
        additionalRows: (
          [
            *Effect:* The target takes radiant damage equal to your *Constitution*, and you push the target 2 squares. #linebreak()

            *Level 11:* 1d6 + *Constitution* modifier radiant damage. #linebreak()
            *Level 21:* 2d6 + *Constitution* modifier radiant damage.
          ],
          [*Channel Divinity*: You can use only one channel divinity power per encounter],
        ),
      );
    ]

    #pagebreak()
    #set page(columns: 2)
    = Ritual Casting
    You master the Hand of Fate technique, the first time each day you use it you do not expend a healing surge.

    = Powers
    You may choose 2 At-Will, 1 Encounter and 2 Daily #className Powers.

    = Feats
    You gain access to the #className feat list

    #colbreak();
    #classes.powerLinks(className: className);

    #set page(columns: 1)

    #pagebreak()

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Angelic Harrier")
      When you hit only one target with an invoker ranged encounter attack or an invoker ranged daily attack, you can slide the target 1 square after the power's effect is resolved.

      #theme.choiceBox("Carceri’s Manacles")
      Any enemy that ends its turn adjacent to a creature you have summoned is slowed until the end of its next turn.

      #theme.choiceBox("Righteous Summons")
      Creatures created by your divine summoning powers gain a benefit based on your Divine Covenant.
      - Covenant of Malediction: Enemies take a -1 penalty to attack rolls while adjacent to your summoned creature.
      - Covenant of Preservation: Any ally that starts its turn adjacent to your summoned creature can shift 1 square as a minor action until the end of    its turn.
      - Covenant of Wrath: Your summoned creatures gain a feat bonus to damage rolls equal to your *Constitution* modifier.

      #theme.choiceBox("Bitter Rebuke")
      Modify rebuke undead based on your Divine Covenant.
      - Covenant of Malediction: When you hit a creature with rebuke undead, it takes a -2 penalty to attack rolls until the end of your next turn.
      - Covenant of Preservation: When you hit a creature with rebuke undead, it is slowed until the end of your next turn.
      - Covenant of Wrath: When you hit a creature with rebuke undead, you can push it a number of squares up to 2 + your *Constitution* modifier instead of only 2 squares.

      #theme.choiceBox("Heaven’s Arrow")
      You gain a +2 feat bonus to attack rolls with ranged invoker attack powers against targets that are not adjacent to any creature. Increase this bonus to +3 at 15th level and +4 at 25th level.

      #theme.choiceBox("Unsettling Omen")
      You gain combat advantage for close blast invoker powers against adjacent enemies.

      #theme.choiceBox("Invoker Defense")
      When you hit an enemy within 3 squares of you with an invoker power, you gain a +2 feat bonus to AC until the start of your next turn.

      #theme.choiceBox("Baleful Malediction")
      *Requirements: Covenant of Malediction* #linebreak()
      Whenever you use a divine encounter or daily attack power on your turn, each target hit by the power takes a -2 penalty to attack rolls against you until the start of your next turn.

      #theme.choiceBox("Deadly Rebuke")
      *Requirements: Covenant of Preservation* #linebreak()
      When you use your preserver's rebuke power, add your *Intelligence* to the damage roll of the attack that gains the bonus from the power.

      #theme.choiceBox("Insightful Preservation")
      *Requirements: Covenant of Preservation* #linebreak()
      When you use your preserver's rebuke power, one ally hit by the triggering attack gains temporary hit points equal to 3 + your *Intelligence* modifier.

      #theme.choiceBox("Armor of Burning Wrath")
      *Requirements: Covenant of Wrath* #linebreak()
      Your armor of wrath power deals fire and radiant damage and gains the fire keyword. The target of your armor of wrath power takes a -1 penalty to saving throws until the end of your next turn.

      #theme.choiceBox("Armor of Burning Wrath")
      *Requirements: Covenant of Wrath* #linebreak()
      When you use your armor of wrath power, the target gains vulnerable 2 to all other damage until the end of your next turn.

      #theme.choiceBox("Crushing Doom")
      *Requirements: Maledictor’s Doom* #linebreak()
      When you target an enemy with maledictor's doom, the enemy takes a penalty to damage rolls equal to your *Wisdom* until the end of your next turn.

      #theme.choiceBox("Preserver’s Summons")
      *Requirements: Preserver’s Rebuke* #linebreak()
      When you use preserver's rebuke, you can slide the triggering ally 1 square and, if it is marked, you can end that condition.
    ]
  ]
}