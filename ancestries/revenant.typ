#import "../helpers/shared.typ";
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let revenantPage() = {
  return [
    #shared.pageTitle(title: "Revenant");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Medium",
        speed: 6,
        vision: "Low-Light",
        languages: "Common, one other",
      )

      = Ancestry Traits
      == Unnatural Vitality
      When you drop to 0 hit points or fewer and are subjected to the dying condition, you can choose to be dazed, instead of falling unconscious. You make death saving throws as normal, and if you fail one, you fall unconscious instead of being dazed.
      == Past Life
      Select a race other than revenant. You are also considered a member of that race for the purpose of meeting prerequisites, such as feat or paragon path prerequisites.
      == Undead
      You are considered an undead creature for the purpose of effects that relate to the undead keyword. You are also considered a living creature.
      == Dark Reaping
      You gain the Dark Reaping power.

      #powers.power(
        title: "Dark Reaping",
        description: "You use one death as the seed to sow more destruction.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.free,
        target: none,
        offenseStat: none,
        defenseStat: none,
        trigger: "A creature within 5 squares of you is reduced to 0 hit points",
        additionalRows: (
          [*Effect:* One creature of your choice that you hit with an attack before the end of your next turn takes extra necrotic damage equal to 1d8 + your main characteristic.],
        ),
        traits: "Necrotic",
      );

      #colbreak();
      #image("../images/revenant.jpeg", height: 300pt)
    ]

    #pagebreak();
    = Revenant Feats
    #columns(2)[
      #shared.choiceBox("Spectral Reaping")
      You ignore insubstantial damage with all damage from an attack with which you deal the necrotic damage from your dark reaping racial power.

      #shared.choiceBox("Past Soul")
      You gain the racial power of the race you chose with your Past Life racial feature (if that race has more than one racial power, choose one of the powers, and you gain only that one). During each encounter, you can use either that power or dark reaping, not both.

      #shared.choiceBox("Flashback of a Past Life")
      Before you roll initiative, you can take a -10 penalty to your roll. If you do so, you gain a +2 bonus to attack rolls and checks until the end of your first turn.

      #shared.choiceBox("Empowered Reaping")
      You gain a +2 feat bonus to the damage dealt by your dark reaping. This bonus increases to +4 at 11th level and +6 at 21st level.

      #colbreak();

      #shared.choiceBox("Death's Quickening")
      If you drop to 0 or fewer hit points and choose to remain conscious due to Unnatural Vitality, you can take a minor action in addition to the standard action Unnatural Vitality allows.

      #shared.choiceBox("Death's Blessing")
      You no longer need to eat, drink, or breathe, you are no longer considered a living creature.

      #shared.choiceBox("Dark Feasting")
      When you deal damage with your dark reaping, you gain temporary hit points equal to the extra necrotic damage dealt to the target.

      #shared.choiceBox("Chill of the Grave")
      Your dark reaping racial power deals cold and necrotic damage.
    ]
  ]
}
