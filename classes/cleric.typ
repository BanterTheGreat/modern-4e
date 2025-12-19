#let edge-color = rgb("#D4C4A0")
#let center-color = rgb("#F0E3C700")

#let header-color = rgb("#D4C4A0")
#let header2-color = rgb("#dfd3b6")

#let choiceBox(content) = {
  return box(
    align(center)[
      #box(
        text(content, size: 12pt, weight: "bold"),
        width: 100%,
        inset: 4pt,
        fill: header2-color,
      )
    ],
  );
}

#show heading.where(level: 1): it => box(align(center)[#box(
  it,
  width: 100%,
  inset: 6pt,
  fill: header-color,
)]);


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
  = The Cleric
  _Their prayers burn, and the unholy tremble._
  #linebreak()
  #text(size: 10pt)[Divine Leader]
]

#columns(2)[
  = Proficiencies
  // Your content goes here in 2 columns
  #text(table(
    columns: (1fr, 1fr, 1fr),
    stroke: 0.5pt + rgb("#D4C4A0"),
    align: center,
    fill: (col, row) => if calc.rem(col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
    inset: 8pt,
    [
      #box(image("../svgs/armor.svg", height: 2em))
      #linebreak()
      #("Cloth (L)", "Leather (L)", "Hide (L)", "Chainmail (H)").join(linebreak())
    ],
    [
      #box(image("../svgs/sword.svg", height: 2em))
      #linebreak()
      #("Simple Melee", "Simple Ranged").join(linebreak())
    ],
    [
      #box(image("../svgs/magic.svg", height: 2em))
      #linebreak()
      Holy Symbol
    ]
  ), size: 10pt);

  = Defenses & Health
  #text(table(
    columns: (1fr, 1fr),
    stroke: 0.5pt + rgb("#D4C4A0"),
    align: center,
    fill: (col, row) => if calc.rem(col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
    inset: 8pt,
    [
      #box(image("../svgs/shield.svg", height: 2em))
      #linebreak()
      #("Fortitude: 11", "Willpower: 13", "Reflex: 11").join(linebreak())
    ],
    [
      #box(image("../svgs/heart.svg", height: 2em))
      #linebreak()
      #("Health: 22", "Health on level-up: 5", " Surges: 7").join(linebreak())
    ]
  ), size: 10pt);

  = Abilities
  Your abilities decide what your character will specialise in. Depending on your playstyle, you want to focus on different abilities.
  == Main Ability
  Choose either *Strength* or *Wisdom*, that characteristic has 4 points and is your main characteristic.

  == Assign points
  Assign 6 points to any combination of abilities that aren't your main ability. You can assign a maximum of 4 points to any single ability.

  Most Cleric powers use either *Strength* or *Wisdom* for accuracy, while sometimes benefitting from *Intelligence* or *Charisma* for extra effects.

  #text(table(
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
      #("+1 Fortitude", "+1 Surge", "+2 Health").join(linebreak())]
    ],

    [
      #align(center)[=== Intelligence
      +1 Reflex]
    ],
    [
      #align(center)[=== Wisdom
      +1 Willpower]
    ],
    [ 
      #align(center)[=== Charisma
      +1 Willpower
      #linebreak()
      ‌‌ 
      #linebreak()
      ‌‌ ]
    ],
  ), size: 10pt);

  = Lore
  Some Cleric's specialised in the text of renewal and soothing, while others specialised in conquest and warfare. Choose one of the options below.

  #choiceBox("Healer’s Lore")
  When you let a creature spend a healing surge to regain hit points with one of your cleric powers that has the healing keyword, add your Wisdom to the hit points the recipient regains.

  #choiceBox("Battlepriest's Lore")
  You gain a +2 shield bonus to AC, and you have proficiency with scale armor. In addition, whenever you use a cleric healing power to allow a target to spend a healing surge, that target gains a +2 bonus to attack rolls until the end of your turn.

  = Healing Word
  Using the healing word power, clerics can grant their comrades additional resilience with nothing more than a short prayer.
]