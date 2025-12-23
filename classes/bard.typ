#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Bard";

#let bardPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: ["Anyone can sing a song, but only I can make it magical."],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (
          classes.armorProf.cloth,
          classes.armorProf.leather,
          classes.armorProf.hide,
          classes.armorProf.chainmail,
          classes.armorProf.lightShield,
        ),
        weaponProficiencies: (
          classes.weaponProf.simpleMelee,
          classes.weaponProf.simpleRanged,
          classes.weaponProf.militaryMelee,
          classes.weaponProf.militaryRanged,
        ),
        implementProficiencies: (classes.implementProf.wand),
      );

      #classes.defensesAndHealth(fortitude: 11, will: 16, reflex: 12, health: 22, healthOnLevelUp: 5, healingSurges: 7)

      #classes.abilities(
        mainAbilities: "Charisma",
        extraAbilities: ("Constitution", "Intelligence"),
        class: className,
      );

      #colbreak();
      = Majestic Word
      With a mere word or phrase, you inspire your allies to greater feats of heroism.

      #powers.power(
        title: "Majestic Word",
        description: "You utter words laden with preternatural inspiration, restoring your ally's stamina and making wounds seem insignificant.",
        type: powers.powerType.encounter,
        action: powers.actionType.minor,
        range: [*Close* burst 5 (10 at 11th level, 15 at 21st level)],
        target: "You or one ally in the burst",
        isSpecial: true,
        traits: "Arcane, Healing",
        additionalRows: (
          [
            *Effect:* The target can spend a healing surge and regain additional hit points equal to your Charisma. You also slide the target 1 square.

            *Level 6:* 1d6 + Charisma modifier additional hit points. #linebreak()
            *Level 11:* 2d6 + Charisma modifier additional hit points. #linebreak()
            *Level 16:* 3d6 + Charisma modifier additional hit points. #linebreak()
            *Level 21:* 4d6 + Charisma modifier additional hit points. #linebreak()
            *Level 26:* 5d6 + Charisma modifier additional hit points.
          ],
          [
            *Special:* You can use this power twice per encounter, but only once per round. At 16th level, you can use this power three times per encounter, but only once per round.
          ],
        ),
      )

      = Virtuosic Virtue
      #theme.choiceBox("Virtue of Cunning")
      Once per round, when an enemy attack misses an ally within a number of squares of you equal to 5 + your *Intelligence*, you can slide that ally 1 square as a free action.

      #theme.choiceBox("Virtue of Prescience")
      Once per encounter as an immediate interrupt, when an enemy hits one ally within 5 squares of you, you grant that ally a power bonus equal to your *Wisdom* to the defense targeted by the triggering enemy until the end of that enemy's turn.

      #colbreak();

      #theme.choiceBox("Virtue of Valor")
      Once per round, when any ally within 5 squares of you reduces an enemy to 0 hit points or bloodies an enemy, you can grant temporary hit points to that ally as a free action. The number of temporary hit points equals 1 + your *Constitution* at 1st level, 3 + your *Constitution* at 11th level, and 5 + your *Constitution* at 21st level.

      = Techniques
      You master two level 1 techniques, one of these must have the bard trait.

      = Powers
      You may choose 2 At-Will, 1 Encounter and 2 Daily #className Powers.

      = Feats
      You gain access to the #className feat list

      #colbreak();

      #classes.powerLinks(className: className);
    ]

    #pagebreak()

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Battle Song Expertise")
      You also gain a +1 feat bonus to the number of squares that you can pull, push, or slide creatures with your bard attacks and bard paragon path attacks.

      #theme.choiceBox("Wild Virtue")
      Each time you use your Bardic Virtue, you can shift 1 square as a free action.

      #theme.choiceBox("Advantage of Cunning")
      *Requirements: Virtue of Cunning* #linebreak();
      When you slide an ally with your Virtue of Cunning, you can also slide an enemy that was adjacent to that ally into the space the ally vacated.

      #theme.choiceBox("Extended Prescience")
      *Requirements: Virtue of Prescience* #linebreak();
      When you use your Virtue of Prescience to grant a power bonus to an ally's defense, that bonus lasts until the end of the ally's next turn.

      #theme.choiceBox("Prescient Fortification")
      *Requirements: Virtue of Prescience* #linebreak();
      When you use your Virtue of Prescience to grant a power bonus to an ally, increase that bonus by 2.

      #colbreak();

      #theme.choiceBox("Strength of Valor")
      *Requirements: Virtue of Valor* #linebreak();
      When you grant an ally temporary hit points with your Virtue of Valor, that ally also gains a +2 bonus to the next damage roll he or she makes before the end of his or her next turn.

      #theme.choiceBox("Bardic Wayfarer")
      Once per turn when you teleport an ally with a power, you can also teleport 1 square as a free action. In addition, when you use majestic word you can teleport the target 1 square instead of sliding the target.

      #theme.choiceBox("Battle Cadence")
      When you use majestic word, you can slide the target 1 extra square. The target also gains a +2 bonus to the next damage roll he or she makes before the end of his or her next turn.

      #theme.choiceBox("Improved Majestic Word")
      When you use majestic word, the target of the power gains temporary hit points equal to your Charisma.

    ]
  ]
}
