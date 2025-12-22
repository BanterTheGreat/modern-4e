#import "../helpers/theme.typ" as theme;
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let elfPage() = {
  return [
    #theme.subPageTitle(title: "Elf");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Medium",
        speed: 7,
        vision: "Low-light",
        languages: "Common, Elven",
      )

      = Ancestry Traits
      == Wild Step
      You ignore difficult terrain when you shift.
      == Group Awareness
      You grant allies within 5 squares of you a +1 racial bonus to initiative.
      == Elf Powers
      You gain either the Elven Accuracy or the Subtle Step power, choose one of the powers below:

      #colbreak();
      #image("../images/elf.png", height: 300pt)
    ]

    #columns(2)[
      #theme.choiceBox("Elven Accuracy");

      #powers.power(
        title: "Elven Accuracy",
        description: "With an instant of focus, you take careful aim at your foe and strike with the legendary accuracy of the elves.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.free,
        target: none,
        offenseStat: none,
        defenseStat: none,
        trigger: "You make an attack roll and dislike the result.",
        additionalRows: (
          [*Effect:* Reroll the attack roll. Use the second roll, even if it's lower.],
        ),
        traits: none
      );

      #colbreak();
      #theme.choiceBox("Subtle Step");
      #powers.power(
        title: "Subtle Step",
        description: "Wild elves train for battle from the time they can walk, and their teachers place early emphasis on evasion and escape.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.move,
        target: none,
        offenseStat: none,
        defenseStat: none,
        additionalRows: (
          [*Effect:* You shift up to your speed.],
        ),
        traits: none
      );

    ]

#pagebreak()
      = Elf Feats
      #columns(2)[
      #theme.choiceBox("Elven Luck")
      *Requirements:* Elven Accuracy #linebreak();
      When you use your elven accuracy power, you gain a +1d4 bonus to the reroll.

      #theme.choiceBox("Opportunistic Accuracy")
      *Requirements:* Elven Accuracy #linebreak();
      If you use your elven accuracy racial power to reroll an opportunity attack and the second roll misses, you do not expend the power.

      #theme.choiceBox("Elven Precision")
      *Requirements:* Elven Accuracy #linebreak();
      When you use the elven accuracy power, you gain a +2 to the new attack roll.


      #theme.choiceBox("Shimmering Elf")
      *Requirements:* Elven Accuracy #linebreak();
      Immediately after you use elven accuracy, you can teleport up to 2 squares as a free action.

      #colbreak();
      
      #theme.choiceBox("Elven Sidestep")
      When you move, the first square of your movement does not provoke opportunity attacks from enemies you have marked.

      #theme.choiceBox("Eyes of the Forest")
      Each ally affected by your Group Awareness trait doesn’t take the -2 penalty for attacking an enemy that has partial concealment.

      #theme.choiceBox("Elven Empathy")
      When one of your allies within 10 squares of you spends a healing surge to regain hit points, he or she regains 1 additional hit point. The additional hit points gained increase to 2 at 11th level, and 3 at 21st level.

      #theme.choiceBox("Master Communicator")
      You master the Comprehend Languages ritual. In addition, you can perform it once per day without paying its component cost.
    ]
  ]
}


