#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Fighter";

#let fighterPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: [_They are up against a wall: You_
        #linebreak()
        #text(size: 10pt)[martial Defender]],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (classes.armorProf.cloth, classes.armorProf.leather, classes.armorProf.hide, classes.armorProf.chainmail, classes.armorProf.scale, classes.armorProf.lightShield, classes.armorProf.heavyShield),
        weaponProficiencies: (classes.weaponProf.simpleMelee, classes.weaponProf.simpleRanged, classes.weaponProf.militaryMelee, classes.weaponProf.militaryRanged),
        implementProficiencies: (),
      );

      #classes.defensesAndHealth(fortitude: 17, will: 11, reflex: 11, health: 25, healthOnLevelUp: 7, healingSurges: 9)

      #classes.abilities(
        mainAbilities: "Strength",
        extraAbilities: ("Constitution", "Dexterity", "Wisdom"),
        class: className,
      );

      #colbreak();
      = Features
      Feature 1

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
