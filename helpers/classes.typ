#import "shared.typ";
#import "powers.typ": powerType;
#import "theme.typ";

#let armorProf = (
  cloth: "Cloth (L)",
  leather: "Leather (L)",
  hide: "Hide (L)",
  chainmail: "Chainmail (H)",
  scale: "Scale (H)",
  plate: "Plate (H)",
  lightShield: "Light Shield",
  heavyShield: "Heavy Shield",
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
  handCrossbow: "Hand Crossbow",
  shortSword: "Shortsword",
  sling: "Sling",
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


  let rows = ()
  if armorContent != none {
    rows.push([
      #box(image("../svgs/armor.svg", height: 2em))
      #linebreak()
      #armorContent
    ])
  }

  if weaponContent != none {
    rows.push([
      #box(image("../svgs/sword.svg", height: 2em))
      #linebreak()
      #weaponContent
    ])
  }

  if implementContent != none {
    rows.push([
      #box(image("../svgs/magic.svg", height: 2em))
      #linebreak()
      #implementContent
    ])
  }

  return [
    = Proficiencies
    #theme.transparentBlock(above: 12pt, content: [
      #text(
        table(
          columns: (
            {
              let cols = ()
              for i in range(0, rows.len()) {
                cols.push(1fr)
              }
              cols
            }
          ),
          stroke: 0.5pt + rgb("#D4C4A0"),
          align: center,
          fill: (col, row) => if calc.rem(col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
          inset: 8pt,
          ..rows
        ),
        size: 10pt,
      );
    ])
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
    #block(
      stroke: 0.5pt + rgb("#D4C4A0"),
      radius: 4pt,
      clip: true,
      width: 100%,
      above: 12pt,
    )[
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
      )
    ]
  ]
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
    All #class powers use #if type(boldedMainAbilities) == array { [ either #shared.join_with_or(input: boldedMainAbilities) ] } else { [ *#boldedMainAbilities* ] } for accuracy, while sometimes benefitting from #extraAbilitiesText for extra effects.
  ]

  return [
    = Abilities
    Your abilities decide what your character will specialise in. Depending on your playstyle, you will want to focus on different abilities.

    == Main Ability
    #mainAbilityText

    == Assign points
    Assign 6 points across non-main abilities, up to 3 per ability.

    #additionalInfo;

    #text(
      block(
        stroke: 0.5pt + rgb("#D4C4A0"),
        radius: 4pt,
        clip: true,
        width: 100%,
      )[
        #table(
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
        )],
      size: 10pt,
    )
  ]
}

#let powerLinks(className: str, extraContent: none, skipAtWill: false) = [

  #let getLinks = (power: powerType, level: (int)) => {
    let baseUrl = if power == powerType.at-will {
      "https://iws.mx/dnd/?list.full.power=%22__ClassName__%20Attack%20__Level__%22%20-%22__ClassName__%20Attack%20__Level__*%22%20At-Will%20-%22Daily%22%20-%22Encounter%22"
    } else if power == powerType.encounter {
      "https://iws.mx/dnd/?list.full.power=%22__ClassName__%20Attack%20__Level__%22%20-%22__ClassName__%20Attack%20__Level__*%22%20%22Encounter%22%20-%22Daily%22"
    } else if power == powerType.daily {
      "https://iws.mx/dnd/?list.full.power=%22__ClassName__%20Attack%20__Level__%22%20-%22__ClassName__%20Attack%20__Level__*%22%20%22Daily%22"
    } else if power == powerType.utility {
      "https://iws.mx/dnd/?list.full.power=%22__ClassName__%20Utility%20__Level__%22%20-%22__ClassName__%20Utility%20__Level__*%22%20%22Utility%22"
    }

    let powerText = if power == powerType.at-will {
      "At-Wills"
    } else if power == powerType.encounter {
      "Encounters"
    } else if power == powerType.daily {
      "Dailies"
    } else if power == powerType.utility {
      "Utilities"
    }

    // If level is an array, generate a link for each
    if type(level) == array {
      let links = level.map(l => {
        let url = baseUrl.replace("__ClassName__", className).replace("__Level__", str(l))
        link(url)[#str(powerText) #str(l)]
      })

      return links
    } else {
      let url = baseUrl.replace("__ClassName__", className).replace("__Level__", str(level))
      return (link(url)[#str(powerText) #str(level)])
    }
  }

  #let powerTable(title: str, ..linkArgs) = theme.transparentBlock(stroke: 1pt + rgb("#706853"), spacing: 0pt, content: [
    #table(
      columns: 1fr,
      stroke: none,
      align: center,
      fill: theme.defaultTableStyle(),
      inset: 6pt,
      title,
      ..linkArgs.pos()
    )
  ]);

  #theme.transparentBlock(content: [
    #block(
      fill: theme.headerColor,
      inset: 10pt,
      [
        #align(center)[
          == Links to #className Powers
        ]

        #if (extraContent != none) {
          extraContent;
          linebreak();
        }

        #if (skipAtWill == false) {
          powerTable(title: [At-Will], getLinks(power: powerType.at-will, level: 1))
          linebreak();
        }

        #powerTable(title: [Encounter], ..getLinks(power: powerType.encounter, level: (3, 7, 13, 17, 23, 27)))
        #linebreak();
        #powerTable(title: [Daily], ..getLinks(power: powerType.daily, level: (1, 5, 9, 15, 19, 25, 29)))
        #linebreak();
        #powerTable(title: [Utility], ..getLinks(power: powerType.utility, level: (2, 6, 10, 16, 22, 26)))
      ],
    )
  ])
]

#let commonTraits(commonTraits: none, class: str) = {
  theme.transparentBlock(content: [
    #block(
      fill: theme.headerColor,
      inset: 10pt,
      [
        = Common #class Traits

        #commonTraits;
      ],
    )
  ])
}