#import "../helpers/theme.typ" as theme;
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let halflingPage() = {
  return [
    #theme.subPageTitle(title: "Halfling");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Small",
        speed: 6,
        vision: "Normal",
        languages: "Common, One other",
      )

      = Traits
      == Bold
      You gain a +5 racial bonus to saving throws against fear.
      == Nimble Reaction
      You gain a +2 racial bonus to AC against opportunity attacks.
      == Second Chance
      You gain the Second Chance power.

      #powers.power(
        title: "Second Chance",
        description: "Luck and small size combine to work in your favor as you dodge your enemy’s attack.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.immediateInterrupt,
        target: none,
        trigger: "You are hit by an attack.",
        additionalRows: (
          [*Effect:* The attacker must reroll the attack and use the second roll, even if it is lower.],
        ),
      );

      #colbreak();
      #image("../images/halfling.jpg", height: 400pt)
    ]

    #pagebreak()
    = Halfling Feats
    #columns(2)[
      #theme.choiceBox("Indomitable")
      You gain a +1 feat bonus to Will while bloodied. In addition, the bonus from your Bold racial feature also applies to saving throws against charm effects and ongoing psychic damage.

      #theme.choiceBox("Know When to Fold")
      While you're bloodied, the first time you leave a square on your turn, you don't provoke opportunity attacks from that movement.

      #theme.choiceBox("Rigged Chance")
      The first time you use your second chance racial power in an encounter, you regain the use of the power if the attack still hits you.
      #theme.choiceBox("River-Born Ritualist")
      You have mastered the Animal Messenger and Water Walk rituals, and can perform them as if you had the Ritual Caster feat. You can use these rituals without paying the component cost, each once per day.

      #colbreak();
      
      #theme.choiceBox("Second Step")
      When you use your second chance racial power, and the enemy rerolling its attack is larger than you, you can shift half your speed as a free action after the attack is completed.

      #theme.choiceBox("Nimble Dodge")
      When you make an enemy reroll an attack roll using your second chance racial power, the enemy takes a -5 penalty to the second attack roll and can't score a critical hit on that roll.

      #theme.choiceBox("Bloodied Thriumph")
      When you use second chance while bloodied, you and your allies gain combat advantage against the triggering attacker until the end of your next turn.
    ]
  ]
}