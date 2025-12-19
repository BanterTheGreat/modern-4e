#let at-will-color = rgb("#a5d676")
#let encounter-color = rgb("#f38e83")
#let daily-color = rgb("#413f3f")
#let utility-color = rgb("#5e84b4")

#let powerType = (
  at-will: "At-will",
  encounter: "Encounter",
  daily: "Daily",
  utility: "Utility",
)

#let actionType = (
  standard: "Standard Action",
  move: "Move Action",
  minor: "Minor Action",
  free: "Free Action",
  reaction: "Reaction",
  noAction: "No Action",
)

#let attackType = (
  default: "Default",
  primary: "Primary Attack",
  secondary: "Secondary Attack",
)

#let offense = (
  strength: "Strength",
  dexterity: "Dexterity",
  constitution: "Constitution",
  wisdom: "Wisdom",
  intelligence: "Intelligence",
  charisma: "Charisma",
)

#let defense = (
  ac: "AC",
  will: "Will",
  reflex: "Reflex",
  fortitude: "Fortitude",
)

#let createAttack = (offense: str, defense: str) => {
  return (
    offense: offense,
    defense: defense,
    display: () => offense + " vs. " + defense
  )
}

#let power = (title: str, description: none, type: powerType, range: content, traits: str, action: actionType, target: none, offenseStat: none, defenseStat: none, additionalRows: (content), isSpecial: false, attackType: attackType.default) => {
  
  let color = (
    "At-will": at-will-color,
    "Encounter": encounter-color,
    "Daily": daily-color,
    "Utility": utility-color
  ).at(type, default: at-will-color)

  let targetLabel = (
    "Primary Attack": "Primary Target:",
    "Secondary Attack": "Secondary Target:",
    "Default": "Target:",
  ).at(attackType, default: "Target:")

  return text(
    table(
      columns: 1fr,
      stroke: 0.5pt + rgb("#D4C4A0"),
      align: left,
      fill: (col, row) => if row == 0 { color } else {
        if calc.rem(row, 2) == 0 { rgb("#F0E3C7") } else { rgb("#E8DBB7") }
      },
      inset: 6pt,
      [
        #text(weight: 700, size: 11pt)[#title]
      ],
      ..if description != none { ([_#text(description)_],) } else { () },
      [
        *#type#if isSpecial [ (Special)]   ✦     #traits* #linebreak()
        *#action* #h(10%) #range #if target != none [ #linebreak()
        *#targetLabel* #target]#if offenseStat != none and defenseStat != none [ #linebreak()
        *Attack:* #offenseStat vs. #defenseStat]
      ],
      ..additionalRows
    ),
    size: 10pt,
  );
}