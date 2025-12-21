#import "../helpers/theme.typ" as theme;
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let orcPage() = {
  return [
    #theme.subPageTitle(title: "Orc");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Medium",
        speed: 6,
        vision: "Low-Light",
        languages: "Common, one other",
      )

      = Ancestry Traits
      == Swift Charge
      You gain a +2 bonus to speed when charging.
      == Orc Resilience
      The first time you are bloodied during an encounter, you gain 5 temporary hit points. The hit points increase to 10 at 11th and 15 at 21st level.
      == Furious Assault
      You gain the Furious Assault power.

      #powers.power(
        title: "Furious Assault",
        description: "Your monstrous wrath burns inside you.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.free,
        target: none,
        offenseStat: none,
        defenseStat: none,
        trigger: "You hit an enemy with an attack.",
        additionalRows: (
          [*Effect:* The attack deals 1[W] extra damage if it's a weapon attack or 1d8 extra damage if it is not a weapon attack.],
        ),
        traits: none,
      );
      #colbreak();
      #image("../images/orc.png", height: 300pt)
    ]

    = Orc Feats
    #columns(2)[
      #theme.choiceBox("Anger Unleashed")
      The first time you are bloodied during an encounter, you gain a +2 bonus to attack rolls until the end of your next turn.

      #theme.choiceBox("Savage Assault")
      When you use furious assault, the enemy you hit also takes a -1 penalty to all defenses until the end of your next turn.

      #colbreak();

      #theme.choiceBox("Thirst for Battle")
      You gain a +3 feat bonus to initiative checks, and your number of healing surges increases by one.

      #theme.choiceBox("Vengeance!")
      When you drop to 0 hit points or fewer you may make a free melee attack before gaining the dying condition.

      #theme.choiceBox("Pain Gain")
      The first time you are bloodied during an encounter, you gain a +5 bonus to damage rolls until the end of your next turn.
    ]
  ]
}




