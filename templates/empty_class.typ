#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Empty";

#let emptyPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: [ _TODO_
        #linebreak()
        #text(size: 10pt)[Role]],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (armorProf.cloth, armorProf.leather),
        weaponProficiencies: (weaponProf.simpleMelee, weaponProf.simpleRanged),
        implementProficiencies: (implementProf.rod, implementProf.wand, implementProf.staff),
      );

      #classes.defensesAndHealth(fortitude: 12, will: 12, reflex: 15, health: 22, healthOnLevelUp: 5, healingSurges: 6)

      #classes.abilities(
        mainAbilities: "Intelligence",
        extraAbilities: ("Wisdom", "Constitution"),
        class: className,
      );

      #colbreak();
      = Techniques
      You master the Alchemical Synthesis and Brew Potion techniques and gain the Technique Mastery feat.

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
    ]
  ]
}
