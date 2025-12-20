#import "../helpers/shared.typ";
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let koboldPage() = {
  return [
    #shared.pageTitle(title: "Kobold");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Small",
        speed: 6,
        vision: "Darkvision",
        languages: "Common, Draconic",
      )

      = Ancestry Traits
      == Trap Sense
      You gain a +2 bonus to defenses against traps.
      == Kobold Scales
      Choose either Acid, Cold, Fire, Lightning, Necrotic, Poison or Radiant. You have resistance to the chosen damage type equal to 5+ one-half your level.
      == Shifty Maneuver
      You gain the Shifty Maneuver power.

      #powers.power(
        title: "Shifty Maneuver",
        description: "You call on your natural ability to dodge danger.",
        type: powers.powerType.at-will,
        range: "Personal",
        action: powers.actionType.minor,
        target: none,
        offenseStat: none,
        defenseStat: none,
        additionalRows: (
          [*Effect:* You shift 1 square.],
        ),
        traits: none,
      );

      #colbreak();
      #image("../images/kobold.webp", height: 300pt)
    ]

    = Feats
    #columns(2)[
      #shared.choiceBox("Kobold in a Corner")
      You gain a +1 bonus to damage rolls against creatures that have combat advantage against you. This bonus increases to +2 at 11th level and +3 at 21st level.

      #shared.choiceBox("Strength in Numbers")
      You gain a bonus to melee rolls against a target equal to the number of allies adjacent to it.

      #colbreak();

      #shared.choiceBox("Trap Safety")
      A trap will never accidentally trigger while you fail a Skill Check to disarm it.

      #shared.choiceBox("Group Sneak")
      Allies within 5 squares of you have a +2 on Skill Checks to sneak or hide.
    ]
  ]
}




