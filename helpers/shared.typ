
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