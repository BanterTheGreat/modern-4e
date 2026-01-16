#import "../helpers/theme.typ" as theme;
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let devaPage() = {
  return [
    #theme.subPageTitle(title: "Deva");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Normal",
        speed: 6,
        vision: "Normal",
        languages: "Common + 2",
      )

      = Traits
      == Astral Majesty
      You have a +1 bonus to all defenses against attacks made by bloodied creatures.

      == Astral Resistance
      You have resistance to necrotic damage and radiant damage equal to 5 + one-half your level.

      == Immortal Origin
      Your spirit is native to the Astral Sea, so you are considered an immortal creature for the purpose of effects that relate to creature origin.

      == Memory of a Thousand Lifetimes
      You have the memory of a thoussand lifetimes power.

      #powers.power(
        title: "Memory of a Thousand Lifetimes",
        description: "The dreamlike memories of your previous lives lend insight to aid you.",
        action: powers.actionType.noAction,
        type: powers.powerType.encounter,
        range: "Personal",
        trigger: "You make an attack roll, a saving throw, a skill check, or an ability check and dislike the result",
        additionalRows: (
          [
            *Effect:* You add 1d6 to the triggering roll.,
          ],
        ),
      )

      #colbreak();
      #image("../images/deva.jpg", height: 300pt)
    ]

    = Deva Feats
    #columns(2)[
      #theme.choiceBox("Auspicious Lineage")
      When you use your memory of a thousand lifetimes racial power, you add 1d8 to the triggering roll, instead of 1d6.

      #theme.choiceBox("Battle Intuition")
      You can use your *Wisdom* modifier in place of your Dexterity modifier to determine your initiative bonus. Additionally, you gain a +2 feat bonus to initiative checks.

      #theme.choiceBox("Heavenly Heritage")
      *Prerequisite: 2 Wisdom* #linebreak()
      When you take cold damage or fire damage, you gain a number of temporary hit points equal to your *Wisdom* modifier.

      #theme.choiceBox("Immortal Skill")
      When using memory of a thousand lifetimes to modify a skill check or ability check, you treat a result that is lower than the average for the die you roll—3 for d6 or 4 for d8—as the average.

      #theme.choiceBox("Magic of the Ages")
      *Prerequisite: Deva, any arcane class* #linebreak()
      When you use your memory of a thousand lifetimes racial power to add to the attack roll of an arcane power, you gain a +1 bonus to the triggering roll.

      #theme.choiceBox("Potent Rebirth")
      When you drop to 0 hit points or fewer, you gain a +2 bonus to attack rolls and damage rolls until the end of the encounter.

      #theme.choiceBox("Radiant Power")
      When you make an implement attack, you can take a -2 penalty to the attack roll. If you do so and the attack hits, it deals 2 extra radiant damage. The extra radiant damage increases to 4 at 11th level and 6 at 21st level.

      #theme.choiceBox("Upright Revival")
      If you drop to 0 or fewer hit points and fall unconscious, when you regain 1 or more hit points and become conscious, you stand and shift 1 square as a free action.
    ]
  ]
}