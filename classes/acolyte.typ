#set page(
  paper: "a4",
  margin: (top: 1cm, rest: 2cm),
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
  Choose either Strength or Wisdom, that characteristic has 4 points and is your main characteristic.

  == Assign points
  Assign 6 points to any ability that isn't your main, you may assign up to 4 in a single one.

  #columns(3)[
    === Dexterity
    #("+1 Reflex", "+1 Initiative").join(linebreak())

    #colbreak()
    === Strength
    #("+1 Fortitude", "+1 to hit on some powers.").join(linebreak())

    #colbreak()
    === Constitution
    #("+1 Fortitude", "+1 Healing Surge", "+2 Health").join(linebreak())
  ]

  #columns(3)[
    === Intelligence
    #("+1 Reflex", "+1 to an effect on some powers.").join(linebreak())

    #colbreak()
    === Wisdom
    #("+1 Willpower", "+1 to hit on some powers.").join(linebreak())

    #colbreak()
    === Charisma
    #("+1 Willpower", "+1 to an effect on some powers.").join(linebreak())
  ]
]
