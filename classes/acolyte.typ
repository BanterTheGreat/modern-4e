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

      Cloth
      Leather
      Hide
      Chainmail
    ]

    #colbreak()
    #align(center)[
      #box(image("../svgs/sword.svg", height: 2em))
      #linebreak()

      Simple Melee
      Simple Ranged
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

      Fortitude: 	11
      Willpower:	13
      Reflex:		11
    ]
    #colbreak();
    #align(center)[
      #box(image("../svgs/heart.svg", height: 2em))
      #linebreak()

      Health: 22
      Health on level-up: 5
      Healing Surges: 7
    ]
  ]

  = *#underline("Characteristics")*
  == Main Characteristic
  Choose either Strength or Wisdom, that characteristic has 4 points and is your main characteristic.

  == Assign points
  Assign 6 points to any of the characteristics you did not choose as your main characteristics. You can assign a maximum of 4 points to a single characteristic.

  === Dexterity
  When you assign a point to Dexterity you gain:
  - +1 Reflex
  - +1 Initiative Bonus
  - +1 AC when wearing light armor

  === Strength
  When you assign a point to Strength you gain:
  - +1 Fortitude
  - +1 to hit on some powers.

  === Constitution
  When you assign a point to Constitution you gain:
  - +1 Fortitude
  - +1 Healing Surge
  - +2 Health

  === Intelligence
  When you assign a point to Intelligence you gain:
  - +1 Reflex
  - +1 to AC when wearing light armor.
  - +1 to an effect on some powers.

  === Wisdom
  When you assign a point to Wisdom you gain:
  - +1 Willpower
  - +1 to hit on some powers.

  === Charisma
  When you assign a point to Charisma you gain:
  - +1 Willpower
  - +1 to an effect on some powers.
]
