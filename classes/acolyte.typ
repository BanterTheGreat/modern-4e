#let edge-color = rgb("#D4C4A0")
#let center-color = rgb("#F0E3C700")

#set page(
  paper: "a4",
  margin: (top: 1cm, rest: 2cm),
  fill: rgb("#F0E3C7"),
  background: {
    place(top + left, rect(width: 100%, height: 15%, fill: gradient.linear(edge-color, center-color, angle: 90deg)))
    place(bottom + left, rect(width: 100%, height: 15%, fill: gradient.linear(center-color, edge-color, angle: 90deg)))
    place(top + left, rect(width: 15%, height: 100%, fill: gradient.linear(edge-color, center-color, angle: 0deg)))
    place(top + right, rect(width: 15%, height: 100%, fill: gradient.linear(center-color, edge-color, angle: 0deg)))
  }
)

#align(center)[
  = The Acolyte
  _Their prayers burn, and the unholy tremble._
  #linebreak()
  #text(size: 10pt)[Divine Leader]
]

#columns(2)[
  #align(center)[= #underline("Proficiencies")]
  // Your content goes here in 2 columns
  #columns(3)[
    #align(center)[
      #box(image("../svgs/armor.svg", height: 2em))
      #linebreak()
      #("Cloth (L)", "Leather (L)", "Hide (L)", "Chainmail (H)").join(linebreak())
    ]

    #colbreak()
    #align(center)[
      #box(image("../svgs/sword.svg", height: 2em))
      #linebreak()
      #("Simple Melee", "Simple Ranged").join(linebreak())
    ]
    #colbreak();
    #align(center)[
      #box(image("../svgs/magic.svg", height: 2em))
      #linebreak()

      Holy Symbol
    ]
  ]

  #columns(2)[
    #align(center)[
      #box(image("../svgs/shield.svg", height: 2em))
      #linebreak()
      #("Fortitude: 11", "Willpower: 13", "Reflex: 11").join(linebreak())
    ]
    #colbreak();
    #align(center)[
      #box(image("../svgs/heart.svg", height: 2em))
      #linebreak()
      #("Health: 22", "Health on level-up: 5", "Healing Surges: 7").join(linebreak())
    ]
  ]

  #align(center)[= *#underline("Abilities")*]
  == Main Ability
  Choose either *Strength* or *Wisdom*, that characteristic has 4 points and is your main characteristic.

  == Assign points
  Assign 6 points to any ability that isn't your main, you may assign up to 4 in a single one. 

  Most powers of the Acolyte use either *Strength* or *Wisdom* for accuracy, while benefitting from *Intelligence* or *Charisma* for extra effects.

  #table(
    columns: 3,
    stroke: none,
    align: left,
    [
      === Dexterity
      #("+1 Reflex", "+1 Initiative").join(linebreak())
    ],
    [
      === Strength
      +1 Fortitude
    ],
    [
      === Constitution
      #("+1 Fortitude", "+1 Healing Surge", "+2 Health").join(linebreak())
    ],

    [=== Intelligence
      +1 Reflex
    ],
    [
      === Wisdom
      +1 Willpower
    ],
    [=== Charisma
      +1 Willpower
    ],
  )
]
