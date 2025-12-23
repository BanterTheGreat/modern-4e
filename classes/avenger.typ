#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Avenger";

#let avengerPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: [ "The time for repentance is over, now they will face the blade."],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (classes.armorProf.cloth),
        weaponProficiencies: (
          classes.weaponProf.simpleMelee,
          classes.weaponProf.militaryMelee,
          classes.weaponProf.simpleRanged,
        ),
        implementProficiencies: (classes.implementProf.holySymbol),
      );

      #classes.defensesAndHealth(fortitude: 12, will: 16, reflex: 12, health: 24, healthOnLevelUp: 6, healingSurges: 7)

      #classes.abilities(
        mainAbilities: "Wisdom",
        extraAbilities: ("Dexterity", "Intelligence"),
        class: className,
      );

      #colbreak();
      = Armor Of Faith
      The favor of your deity wards you from harm. While you are wearing cloth armor or no armor and aren’t using a shield, you gain a +3 bonus to AC.

      = Channel Divinity
      Once per encounter you can invoke divine power, filling yourself with the might of your patron deity. With the divine might you invoke you can wield special powers. You can also learn other uses for this feature; for instance, the divinity feats grant characters with access to the Channel Divinity class feature the ability to use additional special powers.

      Regardless of how many different uses for Channel Divinity you know, you can use only one such ability per encounter. The special ability or power you invoke works just like your other powers. You gain the following Channel Divinity abilities.

      #powers.power(
        title: "Abjure Undead",
        description: "You send a brilliant ray of radiant power at an undead foe, compelling it to stagger toward you.",
        type: powers.powerType.encounter,
        action: powers.actionType.standard,
        range: [*Close* burst 5],
        target: "One undead creature in the burst",
        isSpecial: true,
        traits: "Divine, Implement, Radiant",
        offenseStat: "Wisdom",
        defenseStat: "Will",
        additionalRows: (
          [
            *Hit:* 3d10 + Wisdom modifier radiant damage, and you pull the target a number of squares equal to 1 + your Wisdom modifier. The target is also immobilized until the end of your next turn.

            *Level 5:* 4d10 + Wisdom modifier radiant damage. #linebreak()
            *Level 11:* 5d10 + Wisdom modifier radiant damage. #linebreak()
            *Level 15:* 6d10 + Wisdom modifier radiant damage. #linebreak()
            *Level 21:* 7d10 + Wisdom modifier radiant damage. #linebreak()
            *Level 25:* 8d10 + Wisdom modifier radiant damage.
          ],
          [
            *Miss:* Half damage, and you pull the target 1 square
          ],
          [
            *Channel Divinity:* You can use only one channel divinity power per encounter.
          ],
        ),
      )

      #powers.power(
        title: "Divine Guidance",
        description: "You lend your deity’s guidance to an ally’s attack against your foe.",
        type: powers.powerType.encounter,
        action: powers.actionType.immediateInterrupt,
        range: [*Close* burst 10],
        target: "The Triggering Ally",
        isSpecial: true,
        traits: "Divine",
        trigger: "An ally within 10 squares of you makes an attack roll against your oath of enmity target.",
        additionalRows: (
          [
            *Effect:* The target makes a second attack roll and uses either result.
          ],
          [
            *Miss:* Half damage, and you pull the target 1 square
          ],
          [
            *Channel Divinity:* You can use only one channel divinity power per encounter.
          ],
        ),
      )

      = Oath of Enmity
      Your god gives you the power to strike down your chosen prey. You gain the oath of enmity power.

      #powers.power(
        title: "Oath of Enmity",
        description: "You focus your wrath on a single foe, giving your attacks against it extraordinary accuracy.",
        type: powers.powerType.encounter,
        action: powers.actionType.minor,
        range: [*Close* burst 10],
        target: "One enemy you can see in burst",
        isSpecial: true,
        traits: "Divine",
        additionalRows: (
          [
            *Effect:* When you make a melee attack against the target and the target is the only enemy adjacent to you, you make two attack rolls and use either result. This effect lasts until the end of the encounter or until the target drops to 0 hit points, at which point you regain the use of this power.

            If another effect lets you roll twice and use the higher result when making an attack roll, this power has no effect on that attack. If an effect forces you to roll twice and use the lower result when making an attack roll, this power has no effect on that attack either.

            If an effect lets you reroll an attack roll and you rolled twice because of this power, you reroll both dice.

            If both of the dice results would hit, your attack deals an additional 1[W] damage.
          ],
        ),
      )

      #colbreak();

      = Vindicator’s Censure
      As a vindicator, you train your mind, body, and soul toward one purpose: destroying the enemies of your faith. To that end, you gain divine aid in pursuing a single target, though the way you eliminate that enemy varies. Do you pin your foe down and keep other enemies away, or do you pursue your foe across the field of battle?
      Choose one of the following options. Your choice provides bonuses to certain vindicator powers, as detailed in those powers.

      #theme.choiceBox("Censure of Pursuit");
      Whenever you hit your oath of enmity target with a charge attack, you gain a +2 bonus to AC and damage rolls until the end of your next turn. The bonus to damage rolls increases to +4 at 11th level and +6 at 21st level.

      #theme.choiceBox("Censure of Retribution");
      Whenever any enemy hits you with an attack, you gain a bonus to damage rolls against your oath of enmity target equal to your *Intelligence* until the end of your next turn.

      #theme.choiceBox("Censure of Unity");
      You gain a +2 bonus to damage rolls against your oath of enmity target for each ally adjacent to that target. The bonus increases to +3 at 11th level and +4 at 21st level.

      = Powers
      You may choose 2 At-Will, 1 Encounter and 2 Daily #className Powers.

      = Feats
      You gain access to the #className feat list
    ]

    #pagebreak()

    #set page(columns: 1)

    #classes.powerLinks(className: className);

    #pagebreak()

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Vindicating Allure");
      *Requirements: Censure of Unity* #linebreak();
      When you use your bond of censure power, add 2 to the number of squares you can pull the target.

      #theme.choiceBox("Vindicating Resolution");
      *Requirements: Censure of Pursuit* #linebreak();
      When you attack a target of your oath of enmity with a weapon attack, treat all rolls of a 1 or 2 on the damage dice as though the result were 3 on the die.

      #theme.choiceBox("Closing Pledge");
      *Requirements: Censure of Pursuit* #linebreak();
      When you hit your oath of enmity target with a ranged attack, you can shift a number of squares equal to 1 + your Dexterity as a free action, as long as you end that shift closer to the target.

      #theme.choiceBox("Divine Passion");
      When you use divine guidance and the triggering ally hits its target, the ally deals an additional 5 radiant damage.
      At 21st level, the ally deals an extra 10 radiant damage.

      #colbreak();

      #theme.choiceBox("Improved Armor of Faith");
      While you are wearing cloth armor or no armor and aren’t using a shield, you gain a +1 bonus to AC.

      #theme.choiceBox("Oath Strike");
      When you use oath of enmity, you can mark the target until the end of your next turn.

      #theme.choiceBox("Divine Distraction");
      *Requirements: Censure of Unity* #linebreak();
      When you are adjacent to your oath of enmity target, the target grants combat advantage to any of your allies adjacent to it.

      #theme.choiceBox("Armor of Vengeance");
      *Requirements: Censure of Retribution* #linebreak();
      While you are adjacent to your oath of enmity target, you gain a +1 bonus to all defenses against every other creature.
    ]
  ]
}
