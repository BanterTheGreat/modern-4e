#import "theme.typ";

#let at-will-color = rgb("#a6d37b")
#let encounter-color = rgb("#e6958c")
#let daily-color = rgb("#969090")
#let utility-color = rgb("#5e84b4")

#let powerType = (
  at-will: "At-Will",
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
  immediateInterrupt: "Immediate Interrupt",
  immediateReaction: "Immediate Reaction",
  opportunity: "Opportunity Action",
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
  mainCharacteristic: "Main Characteristic",
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
    display: () => offense + " vs. " + defense,
  )
}

#let power = (
  title: str,
  description: none,
  type: powerType,
  range: content,
  traits: none,
  action: actionType,
  target: none,
  bonusAttackText: none,
  offenseStat: none,
  defenseStat: none,
  additionalRows: (content),
  isSpecial: false,
  attackType: attackType.default,
  trigger: none,
  requirement: none,
) => {
  let color = (
    "At-will": at-will-color,
    "Encounter": encounter-color,
    "Daily": daily-color,
    "Utility": utility-color,
  ).at(type, default: at-will-color)

  let targetLabel = (
    "Primary Attack": "Primary Target:",
    "Secondary Attack": "Secondary Target:",
    "Default": "Target:",
  ).at(attackType, default: "Target:")

  return block(
    [#text(
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
          *#type#if isSpecial [ (Special)]#if traits != none [   ✦     #traits]* #linebreak()
          *#action* #h(10%) #range #if target != none [ #linebreak()
            *#targetLabel* #target]
          #if requirement != none [#linebreak() *Requirement:* #requirement #linebreak()]
          #if trigger != none [#linebreak()   *Trigger:* #trigger #linebreak()]
          #if offenseStat != none and defenseStat != none [ #linebreak()
            *Attack:* #offenseStat vs. #defenseStat#if bonusAttackText != none [.]]
          #if bonusAttackText != none [ #bonusAttackText ]
        ],
        ..additionalRows
      ),
      size: 9pt,
    )],
    breakable: false,
  )
}
