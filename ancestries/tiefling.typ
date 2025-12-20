#import "../helpers/shared.typ";
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";


#let tieflingPage() = {
  return [
    #shared.pageTitle(title: "Tiefling");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Medium",
        speed: 6,
        vision: "Low-Light",
        languages: "Common, one other",
      )

      = Ancestry Traits
      == Bloodhunt
      You gain a +1 racial bonus to attack rolls against bloodied foes.
      == Fire Resistance
      You have resist fire 5 + one-half your level.
      == Infernal Wrath
      You gain the Infernal Wrath power.

      #powers.power(
        title: "Infernal Wrath",
        description: "You call upon the hellfire burning in your soul to punish your enemy.",
        type: powers.powerType.encounter,
        range: "Close burst 10",
        action: powers.actionType.free,
        target: "The triggering enemy in the burst",
        offenseStat: "Main Characteristic",
        defenseStat: none,
        trigger: "An enemy within 10 squares of you hits you.",
        additionalRows: (
          [*Effect:* The target takes 1d6 + Main Characteristic fire damage.
            - Level 11: 2d6 + Main Characteristic fire damage.
            - Level 21: 3d6 + Main Characteristic fire damage.
          ],
        ),
        traits: "Fire",
      );

      #colbreak();
      #image("../images/tiefling.webp", height: 300pt)
    ]

    #pagebreak();

    = Tiefling Feats
    #columns(2)[


      #shared.choiceBox("Bloodhunter's Dread")
      When you hit a bloodied foe, the target takes a -2 penalty to attack rolls against you until the end of your next turn.

      #shared.choiceBox("Bloodseeker")
      You gain a +2 bonus to damage rolls against bloodied enemies marked by you.


      #shared.choiceBox("Imperious Majesty")
      When you hit a creature that has not yet acted in an encounter with an attack, it takes a penalty to attack rolls against you equal to your Main Characteristic until the end of your next turn.

      #shared.choiceBox("Mammon's Theft of Health")
      When you use your Second Wind, you can choose for an ally within 5 squares of you to lose a healing surge. If you do, you regain extra hit points equal to your healing surge value.

      #shared.choiceBox("Tail Slide")
      When you shift, you can also slide an ally adjacent to your starting square 1 square.

      #colbreak();

      #shared.choiceBox("Renewed Wrath")
      Whenever you use your Second Wind or spend an Action Point, you regain the use of your Infernal Wrath.

      #shared.choiceBox("Hellish Defiance")
      When you use Infernal Wrath, the target provokes opportunity attacks from your allies when it attacks you until the end of its next turn.


      #shared.choiceBox("Infernal Warrior")
      When an enemy scores a critical hit against you, you can use your Infernal Wrath power even if you have already used the power this encounter.

      #shared.choiceBox("Unbalancing Wrath")
      The target of your Infernal Wrath grants combat advantage to your allies until the end of the target’s next turn.
    ]
  ]
}

