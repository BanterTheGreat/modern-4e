#import "../helpers/shared.typ";
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let warforgedPage() = {
  return [
    #shared.subPageTitle(title: "Warforged");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Medium",
        speed: 6,
        vision: "Normal",
        languages: "Common, Any",
      )

      = Ancestry Traits
      == Warforged Mind
      You have a +1 racial bonus to your Will.
      == Warforged Resilience
      You have a +2 racial bonus to saving throws against ongoing damage. Also, when you make a death saving throw, you can take the better result of your die roll or 10.
      == Warforged Resolve
      You gain the Warforged Resolve power.

            #powers.power(
        title: "Warforged Resolve",
        description: "It's difficult to take you down, even when you're faltering.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.minor,
        target: none,
        offenseStat: none,
        defenseStat: none,
        additionalRows: (
          [*Effect:* You gain a number of temporary hit points equal to 3 + one-half your level and can make a saving throw against one effect on you that deals ongoing damage. If you are bloodied, you also regain hit points equal to 3 + one-half your level.],
        ),
        traits: "Healing",
      );

      #colbreak();
      #image("../images/warforged.png", height: 300pt)
    ]

    #pagebreak();
      = Warforged Feats
    #columns(2)[

      #shared.choiceBox("Alchemical Affinity")
      Once per attack when you hit an enemy using a consumable alchemical item attack power, you gain temporary hit points equal to your Constitution.

      #shared.choiceBox("Alchemical Blood")
      Choose a damage type—acid, cold, fire, lightning, necrotic, poison, or thunder. When you use an attack power or alchemical item attack power with that keyword, you gain a +1 feat bonus to the damage roll. The bonus increases to +2 at 11th level and to +3 at 21st level.
      While you have any temporary hit points, you gain an additional +1 bonus to your damage rolls with alchemical item attack powers.

      #colbreak();

      #shared.choiceBox("Improved Warforged Resolve")
      When you use your warforged resolve racial power, you gain 5 extra temporary hit points.

      #shared.choiceBox("Warforged Tactics")
      You gain a +1 bonus to melee attack rolls against an enemy that is adjacent to an ally.


      #shared.choiceBox("Immutability")
      Requirement: Improved Warforged Resolve #linebreak();
      When you use your warforged resolve racial power, you can make a saving throw against any effect instead of only against an effect that deals ongoing damage. You gain a +2 feat bonus to that saving throw.
    ]
  ]
}



