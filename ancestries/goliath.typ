#import "../helpers/shared.typ";
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let goliathPage() = {
  return [
    #shared.pageTitle(title: "Goliath");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Medium",
        speed: 6,
        vision: "Normal",
        languages: "Common + 1",
      )

      = Ancestry Traits
      == Mountain’s Tenacity
      You have a +1 racial bonus to Will.
      == Powerful Athlete
      Whenever you make a Skill Check to perform a physical action akin to jumping or climbing, roll twice and use either result.
      == Stone’s Endurance
      You gain the Stone’s Endurance power.

      #colbreak();
      #image("../images/goliath.png", height: 300pt)
    ]

    #columns(2)[
      #powers.power(
        title: "Stone's Endurance",
        description: "Your foes’ attacks bounce off your stony hide.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.minor,
        target: none,
        offenseStat: none,
        defenseStat: none,
        additionalRows: (
          [*Effect:* You gain resist 5 to all damage until the end of your next turn.
            - Level 11: Resist 10 to all damage.
            - Level 21: Resist 15 to all damage.
          ],
        ),
        traits: none,
      );
    ]

    #pagebreak();
    = Goliath Feats

    #columns(2)[
      #shared.choiceBox("Brute Force")
      When you hit an enemy with a melee weapon daily attack, you can also push the target 1 square and knock the target prone.

      #shared.choiceBox("Cast Aside")
      Whenever a Medium or smaller creature succeeds in escaping from being grabbed by you, you can slide the creature 3 squares as an opportunity action.

      #shared.choiceBox("Dutiful Servant")
      You gain a +1 bonus to attack rolls on attacks granted by your allies' powers.

      #shared.choiceBox("Great Goliath")
      When you use your second wind, you gain +3 to all defenses instead of the normal +2.

      #colbreak();
      #shared.choiceBox("Markings of the Blessed")
      The first time you make a saving throw during each encounter, you can roll twice and use either result.

      #shared.choiceBox("Markings of the Victor")
      The first time you make an attack roll during each encounter, you can roll twice and use either result.

      #shared.choiceBox("Stone's Wrath")
      When you take damage from an attack while you are affected by your stone's endurance, your next melee attack before the end of your next turn deals 1d6 extra damage.

      #shared.choiceBox("Kord's Resilience")
      While your stone's endurance racial power is active, allies adjacent to you have the same resistance that the power grants you.
    ]
  ]
}


