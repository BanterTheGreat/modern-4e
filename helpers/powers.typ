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
)

#let power = (title: str, description: str, type: powerType, action: actionType, target: str, additionalRows: (content), isSpecial: false) => {
  
  let color = (
    "At-will": at-will-color,
    "Encounter": encounter-color,
    "Daily": daily-color,
    "Utility": utility-color
  ).at(type, default: at-will-color)

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
      [
        _#text(description)_
      ],
      [
        *#type#if isSpecial [ (Special)]   ✦     Healing* #linebreak()
        *#action* #h(10%) *Close* burst 5 (10 at 11th level, 15 at 21st level) #linebreak()
        *Target:* #target
      ],
      ..additionalRows
    ),
    size: 10pt,
  );
}