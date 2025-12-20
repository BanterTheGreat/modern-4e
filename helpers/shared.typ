
#let edgeColor = rgb("#D4C4A0")
#let centerColor = rgb("#F0E3C700")

#let headerColor = rgb("#D4C4A0")
#let header2Color = rgb("#dfd3b6")

#let defaultTableStyle() = {
  return (col, row) => if row == 0 {
      rgb("#D4C4A0")
    } else if calc.rem(row, 2) == 0 {
      rgb("#E8DBB7")
    } else {
      rgb("#F0E3C7")
    };
}

#let choiceBox(content) = {
  return box(
    align(center)[
      #box(
        text(content, size: 12pt, weight: "bold"),
        width: 100%,
        inset: 4pt,
        fill: header2Color,
      )
    ],
  )
}

#let pageTitle(title: str, additional: none) = {
  return align(center)[
    #text(heading(title, numbering: "1.", level: 1), size: 16pt);
    #if additional != none [
      #linebreak()
      #additional
    ]
  ]
}

#let subPageTitle(title: str, additional: none) = {
  return align(center)[
    #text(heading(title, numbering: "1.", level: 2), size: 16pt);
    #if additional != none [
      #linebreak()
      #additional
    ]
  ]
}
