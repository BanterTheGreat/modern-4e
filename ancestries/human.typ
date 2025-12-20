#import "../helpers/shared.typ";
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let humanPage() = {
  return [
    #shared.subPageTitle(title: "Human");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Medium",
        speed: 6,
        vision: "Normal",
        languages: "Common + 1",
      )

      = Ancestry Traits
      == Determination
      You gain an additional Action Point at the start of the session.
      == All-Rounded
      You gain a +1 racial bonus to Fortitude, Reflex & Will.
      == Heroic Effort
      You gain the Heroic Effort power.

      #colbreak();
      #image("../images/human.png", height: 300pt)
    ]

    #columns(2)[
      #powers.power(
        title: "Heroic Effort",
        description: "Your grim focus and unbridled energy means that failure is not an option.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.noAction,
        target: none,
        offenseStat: none,
        defenseStat: none,
        trigger: "You or an ally miss with an attack or fail a saving throw.",
        additionalRows: (
          [*Effect:* The target gains a +3 racial bonus to the attack roll or the saving throw.],
        ),
        traits: none,
      );

    ]
    #pagebreak();

    = Human Feats
    #columns(2)[
      #shared.choiceBox("Action Surge")
      You gain a +3 bonus to attack rolls you make when spending an action point.

      #shared.choiceBox("Human Perseverance")
      You gain a +1 feat bonus to saving throws.


      #shared.choiceBox("Human Resolve")
      You gain 3 + one-half your level temporary hit points whenever you spend an Action Point.

      #shared.choiceBox("Stubborn Survivor")
      You gain a +2 bonus to saving throws whenever you have no action points remaining.


      #shared.choiceBox("Die Hard")
      When you have failed two death saving throws since your last rest, you gain a +5 feat bonus to death saving throws and can spend a healing surge on a result of 15 or higher. If you have no healing surges, your condition does not change.

      #colbreak();

      #shared.choiceBox("Quick To Action")
      You gain a +2 bonus to Initiative. In addition, you gain a +1 bonus to saving throws while bloodied.

      #shared.choiceBox("Action Recovery")
      When you spend an action point, you can immediately make a saving throw against each effect on you that a save can end.

      #shared.choiceBox("Avenging Spirit")
      When an ally you can see or hear is reduced to 0 hit points or fewer, you gain an action point, this action point is lost at the end of your turn.

      #shared.choiceBox("Still a Threat")
      While you are dazed, you can still flank enemies and take opportunity actions.
    ]
  ]
}
