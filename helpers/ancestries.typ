#let attributes(size: str, speed: int, vision: str, languages: str) = {
  table(
        columns: (1fr, 1fr),
        stroke: 0.5pt + rgb("#D4C4A0"),
        align: left,
        fill: (col, row) => if calc.rem(row + col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
        inset: 8pt,
        [
          #align(center)[
            === Size
            #size
          ]
        ],
        [
          #align(center)[
            === Speed
            #str(speed) squares
          ]
        ],
        [
          
          #align(center)[
            === Vision
            #vision]
          
        ],
        [
          #align(center)[
            === Languages
            #languages
          ]
        ],
      );
}