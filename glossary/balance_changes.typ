#import "../helpers/theme.typ" as theme;

#let balanceChangesPage() = {
  [
    #theme.pageTitle(title: "Balance Changes");

    #columns(2)[
      = Monster Math
      #theme.quoteBox([
        "WHY WONT YOU DIE!" - Raiden
      ])

      When using monsters, keep in mind to only use creatures from the Monster Manual 3 and Monster Vault unless absolutely neccessary.

      This is because the other monster books suffer from creatures dealing too little damage and having way too much health.

      = Melee Training Feat
      #theme.quoteBox([
        Use another ability modifier besides Str for Melee Basic Attacks. Add only ½ the modifier to the damage roll.
      ])

      All characters gain this feat for free.

      = Baseline Versatile Expertise & Improved Defenses
      #theme.quoteBox([+1 Attack, Fort, Ref, and Will per tier (+1 at 1st, +2at 11th, +3 at 21st])

      Making these two feats baseline abrogates the "feat tax" of having to spend feat points on the objectively best feats in the game.

      = Intrinsic bonuses
      #theme.quoteBox(["What, another magic sword? Add it to the pile"])
      Intrinsic bonuses are the default assumption when playing the game, in order to reduce the loot threatmill effect. See the table to the right for more information.

      If you would receive an item with higher bonuses than your Intrinsic bonus, you may instead use that item's bonuses as normal.

      #colbreak();

      #theme.transparentBlock(content: [
        #block(
          fill: theme.headerColor,
          inset: 10pt,
          [
            #align(center)[
              == Intrinsic bonus by level
            ]

            #theme.transparentBlock(
              stroke: 1pt + rgb("#706853"),
              spacing: 0pt,
              content: [
                #table(
                  columns: 5,
                  stroke: none,
                  align: left,
                  fill: theme.defaultTableStyle(),
                  inset: 6pt,
                  [*Level*], [*Attack & Damage*], [*Crit*], [*AC*], [*Defenses*],
                  [1], [+1], [–], [–], [+1],
                  [2], [+2], [+1d6], [–], [+1],
                  [3], [+2], [+1d6], [–], [+1],
                  [4], [+2], [+1d6], [+1], [+1],
                  [5], [+2], [+1d6], [+1], [+1],
                  [6], [+2], [+1d6], [+1], [+1],
                  [7], [+3], [+2d6], [+1], [+1],
                  [8], [+3], [+2d6], [+1], [+1],
                  [9], [+3], [+2d6], [+2], [+2],
                  [10], [+3], [+2d6], [+2], [+2],
                  [11], [+4], [+2d6], [+2], [+3],
                  [12], [+5], [+3d6], [+2], [+3],
                  [13], [+5], [+3d6], [+2], [+3],
                  [14], [+5], [+3d6], [+3], [+4],
                  [15], [+5], [+3d6], [+3], [+4],
                  [16], [+5], [+3d6], [+3], [+4],
                  [17], [+6], [+4d6], [+3], [+4],
                  [18], [+6], [+4d6], [+3], [+4],
                  [19], [+6], [+4d6], [+4], [+5],
                  [20], [+6], [+4d6], [+4], [+5],
                  [21], [+7], [+4d6], [+4], [+7],
                  [22], [+8], [+5d6], [+4], [+7],
                  [23], [+8], [+5d6], [+4], [+7],
                  [24], [+8], [+5d6], [+5], [+8],
                  [25], [+8], [+5d6], [+5], [+8],
                  [26], [+8], [+5d6], [+5], [+8],
                  [27], [+9], [+6d6], [+5], [+8],
                  [28], [+9], [+6d6], [+5], [+8],
                  [29], [+9], [+6d6], [+6], [+9],
                  [30], [+9], [+6d6], [+6], [+9],
                )
              ],
            );

          ],
        )
      ])
    ]
  ]
}
