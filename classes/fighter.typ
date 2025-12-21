#import "../helpers/theme.typ" as theme;

#import "../helpers/classes.typ";

#import "../helpers/powers.typ";

#let fighterPage() = {
  return [
    #theme.classTitle(
      title: "The Fighter",
      additional: [ _Using magical elixirs and contraptions, artificers bolster their allies and confound their enemies._
        #linebreak()
        #text(size: 10pt)[Arcane Leader]],
    )

    #columns(2)[
      #proficiencies(
        armorProficiencies: (armorProf.cloth, armorProf.leather),
        weaponProficiencies: (weaponProf.simpleMelee, weaponProf.simpleRanged),
        implementProficiencies: (implementProf.rod, implementProf.wand, implementProf.staff),
      );

      #defensesAndHealth(fortitude: 12, will: 12, reflex: 15, health: 22, healthOnLevelUp: 5, healingSurges: 6)

      #abilities(
        mainAbilities: "Intelligence",
        extraAbilities: ("Wisdom", "Constitution"),
        class: "Artificer",
      );

      #colbreak();
      = Techniques
      You master the Alchemical Synthesis and Brew Potion techniques and gain the Technique Mastery feat.

      = Powers
      You may choose 2 At-Will, 1 Encounter and 2 Daily Artificer Powers.

      = Feats
      You gain access to the Artificer feat list
    ]

    #pagebreak()

    #set page(columns: 1)

    #align(center)[
      = Artificer Powers
    ]

    #columns(2)[
      = At-Will
      #link(
        "https://iws.mx/dnd/?list.full.power=%22Fighter%20Attack%201%22%20-%22Fighter%20Attack%201*%22%20At-Will%20-%22Encounter%22",
      )[
        Link to Level 1 At-Wills
      ]
      = Encounter
      #link(
        "https://iws.mx/dnd/?list.full.power=%22Fighter%20Attack%201%22%20-%22Fighter%20Attack%201*%22%20%22Encounter%22%20-%22Daily%22",
      )[
        Link to Level 1 Encounters
      ]
      = Daily

      #link(
        "https://iws.mx/dnd/?list.full.power=%22Fighter%20Attack%201%22%20-%22Fighter%20Attack%201*%22%20%22Daily%22",
      )[
        Link to Level 1 Dailies
      ]
    ]

    #pagebreak()

    #align(center)[
      = Heroic Fighter Feats
    ]

    #columns(2)[
    ]
  ]
}
