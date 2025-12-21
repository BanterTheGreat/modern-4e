#import "shared.typ";

#let armorProf = (
  cloth: "Cloth (L)",
  leather: "Leather (L)",
  hide: "Hide (L)",
  chainmail: "Chainmail (H)",
  scale: "Scale (H)",
  plate: "Plate (H)",
)

#let weaponProf = (
  simpleMelee: "Simple Melee",
  simpleRanged: "Simple Ranged",
  militaryMelee: "Military Melee",
  militaryRanged: "Military Ranged",
  superiorMelee: "Superior Melee",
  superiorRanged: "Superior Ranged",

  dagger: "Dagger",
  quarterstaff: "Quarterstaff",
)

#let implementProf = (
  holySymbol: "Holy Symbol",
  orb: "Orb",
  staff: "Staff",
  wand: "Wand",
  tome: "Tome",
  rod: "Rod",
)

#let proficiencies(
  armorProficiencies: (armorProf),
  weaponProficiencies: (weaponProf),
  implementProficiencies: (implementProf),
) = {
  // Make a nice list if it is an array, otherwise use as is
  let armorContent = if type(armorProficiencies) == array { armorProficiencies.join(linebreak()) } else {
    armorProficiencies
  }
  let weaponContent = if type(weaponProficiencies) == array { weaponProficiencies.join(linebreak()) } else {
    weaponProficiencies
  }
  let implementContent = if type(implementProficiencies) == array { implementProficiencies.join(linebreak()) } else {
    implementProficiencies
  }


  return [
    = Proficiencies
    #text(
      table(
        columns: (1fr, 1fr, 1fr),
        stroke: 0.5pt + rgb("#D4C4A0"),
        align: center,
        fill: (col, row) => if calc.rem(col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
        inset: 8pt,
        [
          #box(image("../svgs/armor.svg", height: 2em))
          #linebreak()
          #armorContent
        ],
        [
          #box(image("../svgs/sword.svg", height: 2em))
          #linebreak()
          #weaponContent
        ],
        [
          #box(image("../svgs/magic.svg", height: 2em))
          #linebreak()
          #implementContent
        ],
      ),
      size: 10pt,
    );
  ]
}

#let defensesAndHealth(
  fortitude: int,
  will: int,
  reflex: int,
  health: int,
  healthOnLevelUp: int,
  healingSurges: int,
) = {
  return [
    = Defenses & Health
    #text(
    table(
      columns: (1fr, 1fr),
      stroke: 0.5pt + rgb("#D4C4A0"),
      align: center,
      fill: (col, row) => if calc.rem(col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
      inset: 8pt,
      [
        #box(image("../svgs/shield.svg", height: 2em))
        #linebreak()
        #("Fortitude: " + str(fortitude), "Will: " + str(will), "Reflex: " + str(reflex)).join(linebreak())
      ],
      [
        #box(image("../svgs/heart.svg", height: 2em))
        #linebreak()
        #(
          "Health: " + str(health),
          "Health on level-up: " + str(healthOnLevelUp),
          "Healing Surges: " + str(healingSurges),
        ).join(linebreak())
      ],
    ),
    size: 10pt,
  )];
}

#let abilities(mainAbilities: (str), class: str, extraAbilities: (str)) = {
  let boldedMainAbilities = if type(mainAbilities) == array {
    mainAbilities.map(content => [*#content*])
  } else {
    [*#mainAbilities*]
  }

  let boldedExtraAbilities = if type(extraAbilities) == array {
    extraAbilities.map(content => [*#content*])
  } else {
    [*#extraAbilities*]
  }

  let mainAbilityText = if type(boldedMainAbilities) != array {
    [Your main ability is *#boldedMainAbilities*, which has 4 points.]
  } else {
    [Choose either #shared.join_with_or(input: boldedMainAbilities), that ability has 4 points and is your main ability.]
  }

  let extraAbilitiesText = if type(boldedExtraAbilities) == array {
    shared.join_with_or(input: boldedExtraAbilities)
  } else {
    boldedExtraAbilities
  }

  let additionalInfo = [
    All #class powers use #if type(boldedMainAbilities) == array {[ either #shared.join_with_or(input:boldedMainAbilities) ]} else {[ *#boldedMainAbilities* ]} for accuracy, while sometimes benefitting from #extraAbilitiesText for extra effects.
  ]

  return [ 
    = Abilities
    Your abilities decide what your character will specialise in. Depending on your playstyle, you want to focus on different abilities.

    == Main Ability
    #mainAbilityText

    == Assign points
    Assign 6 points across non-main abilities, up to 3 per ability. You can assign a maximum of 3 points to any single ability.

    #additionalInfo;

    #text(
      table(
        columns: (1fr, 1fr, 1fr),
        stroke: 0.5pt + rgb("#D4C4A0"),
        align: left,
        fill: (col, row) => if calc.rem(row + col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
        inset: 8pt,
        [
          #align(center)[=== Dexterity
            #("+1 Reflex", "+1 Initiative").join(linebreak())]
        ],
        [
          #align(center)[=== Strength
            +1 Fortitude]
        ],
        [
          #align(center)[=== Constitution
            #("+1 Fortitude", "+1 Heal Surge", "+2 Health").join(linebreak())]
        ],

        [
          #align(center)[=== Intelligence
            #("+1 Reflex", "+1 Initiative").join(linebreak())]
        ],
        [
          #align(center)[=== Wisdom
            +1 Will]
        ],
        [
          #align(center)[=== Charisma
            +1 Will
            #linebreak()
            ‌‌
            #linebreak()
            ‌‌ ]
        ],
      ),
      size: 10pt,
    );]
}
