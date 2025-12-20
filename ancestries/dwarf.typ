#import "../helpers/shared.typ";
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let dwarfPage() = {
  return [
    #shared.pageTitle(title: "Dwarf");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Medium",
        speed: 5,
        vision: "Low-light",
        languages: "Common, Dwarven",
      )

      = Ancestry Traits
      == Sturdy
      You ignore any Armor speed penalties and gain +1 healing surges.
      == Stand Your Ground
      When an effect forces you to move, you can move 1 square less than the effect specifies.
      == Dwarven Resilience
      You gain the Dwarven Resilience power.

      #powers.power(
        title: "Dwarven Resilience",
        description: "You quickly catch your breath and carry on.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.minor,
        target: none,
        offenseStat: none,
        defenseStat: none,
        trigger: none,
        additionalRows: (
          [*Effect:* You use your second wind.],
        ),
        traits: none
      );
      
      #colbreak();
      #image("../images/dwarf.jpg", height: 300pt)
    ]

#pagebreak();
      = Dwarf Feats
      #columns(2)[
      #shared.choiceBox("Comeback")
      If you are reduced to 0 hit points or fewer and return to consciousness in the same encounter, you gain a +1 bonus to AC and attack rolls until the end of the encounter.

      #shared.choiceBox("Knock Back")
      When you succeed on a saving throw to avoid being knocked prone, you can knock prone one enemy of size Large or smaller that is adjacent to you.

      #shared.choiceBox("Quick Steps")
      You gain a +1 feat bonus to speed.

            #shared.choiceBox("Fearsome Toughness")
      When you use Dwarven Resilience, each enemy adjacent to you is marked by you until the end of your next turn.

#colbreak();

      #shared.choiceBox("Shield The Fallen")
      When you are adjacent to a bloodied, unconscious, or helpless ally, that ally gains a +2 bonus to saving throws and all defenses. The benefit of this feat doesn't stack if more than one character with Shield the Fallen is adjacent to the same ally.

      #shared.choiceBox("Solid Footing")
      You ignore difficult terrain that is the result of rubble, uneven stone, or earthen construction such as stairs.

      #shared.choiceBox("Bones of Stone")
      Whenever you take a critical hit, roll a d20. If you roll an 11 or higher, the critical hit turns into a normal hit.

      ]
    ]

}
