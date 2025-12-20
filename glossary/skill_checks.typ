#import "../helpers/shared.typ";

#let skillChecksPage() = {
  return [
    #shared.pageTitle(title: "Skill Checks");

    Whenever an adventurer tries to do something while outside of combat, the GM may call for a Skill Check. The GM will say what Ability fits the action the most and then the adventurer rolls a 1D20 + half the value of said Ability and any background or title bonus should they apply.

    Whenever the GM calls for a skill check should decide on the DC, depending on the roll the following happens:

    - If you roll a natural 20 you succeed and something especially good happens.
    - If your roll is at least the DC + 5, you succeed perfectly with no downside.
    - If your roll meets the DC but not DC + 5, you succeed but pay a cost (for example you take longer, break something, or create a new problem).
    - If your roll is below the DC you fail the task.
    - If your roll is at least 5 points below the DC (roll ≤ DC - 5) or you roll a natural 1, you fail catastrophically and something negative occurs.

    = DC By Level
    #table(
      columns: (1fr, 1fr, 1fr, 1fr),
      stroke: 0.5pt + rgb("#D4C4A0"),
      align: left,
      fill: (col, row) => shared.defaultTableStyle()(col, row),
      inset: 8pt,
      [*Level*],
      [*Easy*],
      [*Normal*],
      [*Hard*],

      [1], [7], [12], [17],
      [2], [8], [13], [18],
      [3], [8], [13], [18],
      [4], [9], [14], [19],
      [5], [9], [14], [19],
      [6], [10], [15], [20],
      [7], [10], [15], [20],
      [8], [11], [16], [21],
      [9], [11], [16], [21],
      [10], [12], [17], [22],
    )
  ]
}