#import "../helpers/shared.typ";
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let goblinPage() = {
  return [
    #shared.pageTitle(title: "Goblin");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Small",
        speed: 6,
        vision: "Low-Light",
        languages: "Common, Goblin"
      )

      = Traits
      == Slippery
      You gain a +2 racial bonus to your AC against Attack of Opportunities.
      == Goblin Reflexes
      You gain a +1 racial bonus to your Reflex defense.
      == Goblin Tactics
      You gain the Goblin Tactics power.

      #powers.power(
        title: "Goblin Tactics",
        description: "You avoid your enemy's blow and cleverly dodge away.",
        type: powers.powerType.at-will,
        range: "Personal",
        action: powers.actionType.immediateReaction,
        target: none,
        trigger: "An enemy misses you with a melee attack.",
        additionalRows: (
          [*Effect:* You shift 1 square.],
        ),
      );

      #colbreak();
      #image("../images/goblin.png", height: 300pt)
    ]

    = Goblin Feats
    #columns(2)[
      #shared.choiceBox("Ankle Biter")
      You gain a +1 feat bonus to damage rolls against creatures larger than you. This bonus increases to +2 at 11th level and to +3 at 21st level.
      Also, when you score a critical hit against a creature larger than you, the creature takes 1d6 extra damage.

      #shared.choiceBox("Desperate Tactics")
      When you use goblin tactics while bloodied, you can shift up to 2 extra squares.

      #shared.choiceBox("Goblin Feint")
      When you use goblin tactics, you gain combat advantage against the enemy that missed you until the end of your next turn.

      #colbreak();

      #shared.choiceBox("Wrist Biter")
      When you use goblin tactics in response to an adjacent enemy's attack, the enemy takes 1d4 damage right before you shift. This damage increases to 2d4 at 11th level and 3d4 at 21st level.

      #shared.choiceBox("Shadowcreeper")
      When you use Goblin Tactics, you can shift 1 extra square, and you gain partial concealment until the end of your next turn.
    ]
  ]
}
