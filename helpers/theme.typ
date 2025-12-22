
#let edgeColor = rgb("#D4C4A0")
#let centerColor = rgb("#F0E3C700")

#let headerColor = rgb("#D4C4A0")
#let header2Color = rgb("#c9bda3")

#let defaultTableStyle() = {
  return (col, row) => if row == 0 {
    rgb("#D4C4A0")
  } else if calc.rem(row, 2) == 0 {
    rgb("#E8DBB7")
  } else {
    rgb("#F0E3C7")
  }
}

#let choiceBox(content) = {
  block(
    stroke: 0.5pt + rgb("#D4C4A0"),
    radius: 2pt,
    clip: true,
    width: 100%,
    below: 6pt,
  )[
    #box(
      align(center)[
        #box(
          text(content, size: 12pt, weight: "bold"),
          width: 100%,
          inset: 4pt,
          fill: header2Color,
        )
      ],
    )
  ]
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

#let subSectionTitle(title: str, additional: none) = {
  return align(center)[
    #text(heading(title, numbering: "1.", level: 3), size: 16pt);
    #if additional != none [
      #linebreak()
      #additional
    ]
  ]
}

#let classTitle(title: str, additional: none) = {
  return align(center)[
    #text(heading(title, numbering: "1.", level: 3), size: 24pt);
    #if additional != none [
      #additional
    ]
  ]
}

#let transparentBlock(above: auto, below: auto, spacing: none, stroke: none, content: content) = {
  return block(
    stroke: if stroke == none { 0.5pt + edgeColor } else { stroke },
    radius: 4pt,
    clip: true,
    width: 100%,
    above: if (spacing != none) { spacing } else { above },
    below: if (spacing != none) { spacing } else { below },
  )[#content]
}
