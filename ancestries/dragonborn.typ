#import "../helpers/shared.typ";
#import "../helpers/powers.typ";
#import "../helpers/ancestries.typ";

#let dragonbornPage() = {
  return [
    #shared.subPageTitle(title: "Dragonborn");

    #columns(2)[
      = Attributes

      #ancestries.attributes(
        size: "Medium",
        speed: 6,
        vision: "Normal",
        languages: "Common, Draconic",
      )

      = Traits
      == Dragonborn Scales
      Choose either Acid, Cold, Fire, Lightning, Necrotic, Poison or Radiant. You have resistance to the chosen damage type equal to 5+ one-half your level.
      == Draconic Heritage
      You gain a bonus to your healing surge value equal to your Constitution.
      == Dragonborn Powers
      Your capabilities as a Dragonborn give you one of the following powers, choose one of the powers below.

      #colbreak();
      #image("../images/dragonborn.png", height: 300pt)
      ]

      #columns(2)[
      #shared.choiceBox("Dragon Breath")

      #powers.power(
        title: "Dragon Breath",
        description: "As you open your mouth with a roar, the deadly power of your draconic kin blasts forth to engulf your foes.",
        type: powers.powerType.encounter,
        range: "Close blast 3",
        action: powers.actionType.minor,
        target: "Each creature in the blast",
        offenseStat: "Main Ability",
        defenseStat: "Reflex",
        bonusAttackText: [You gain a +2 bonus to the attack roll. 
        - Level 11: The bonus increases to +4. 
        - Level 21: The bonus increases to +6.],
        trigger: none,
        additionalRows: (
          [*Hit:* 1d6 + Main Ability damage.
          - Level 11: 2d6 + Main Ability damage.
          - Level 21: 3d6 + Main Ability damage.],
          [*Special:* The damage type is the same as the type you choose for Dragonborn Scales.],
        ),
        traits: "Varies"
      );

      #colbreak();
      #shared.choiceBox("Dragonfear")

      #powers.power(
        title: "Dragonfear",
        description: "Your presence causes your enemies to quake and tremble.",
        type: powers.powerType.encounter,
        range: "Close burst 5 (increase to close burst 10 at 21st level)",
        action: powers.actionType.minor,
        target: "Each enemy in the burst",
        offenseStat: "Main Ability",
        defenseStat: "Will",
        bonusAttackText: [You gain a +2 bonus to the attack roll. 
        - Level 11: The bonus increases to +4. 
        - Level 21: The bonus increases to +6.],
        trigger: none,
        additionalRows: (
          [*Hit:* The target takes a -2 penalty to attack rolls and grants combat advantage until the end of your next turn.],
        ),
        traits: "Fear",
      );
    ]

    #pagebreak();

    = Dragonborn Feats
    #columns(2)[
      #shared.choiceBox("Blood of Dragons")
      *Requirements:* Dragonfear #linebreak();
      You gain a +2 bonus to all defenses against fear attacks, or a +4 if the attacker is a dragon.

      #shared.choiceBox("Draconic Guardian")
      *Requirements:* Dragonfear #linebreak();
      When you hit a creature with dragonfear, you can mark it until the end of your next turn.

      #shared.choiceBox("Adaptable Breath")
      *Requirements:* Dragon Breath #linebreak();
      Choose a type of damage your dragon breath doesn't already deal from among acid, cold, fire, lightning, or poison, necrotic, radiant.
      When you use your dragon breath racial power, you can choose to use this damage type rather than the normal damage dealt by the power. Only one damage type applies for a given dragon breath attack.
      
      *Special:* You can take this feat more than once. Each time you select this feat, choose another damage type for your dragon breath power that you don't already have for it.

      #colbreak();

      #shared.choiceBox("Bolstering Breath")
      *Requirements:* Dragon Breath #linebreak();
      Your dragon breath power targets enemies in the area, instead of all creatures in the area.
      In addition, allies in the area of your dragon breath gain a +1 bonus to attack rolls until the end of your next turn.

      #shared.choiceBox("Enlarged Dragon Breath")
      *Requirements:* Dragon Breath #linebreak();
      When you use the dragon breath power, you can choose to make it blast 5 instead of blast 3.

      #shared.choiceBox("Hurl Breath")
      *Requirements:* Dragon Breath #linebreak();
      When you use your dragon breath, you can choose to make it an area burst 2 within 10 squares instead of a close blast 3.

      #shared.choiceBox("Surprising Breath")
      *Requirements:* Dragon Breath #linebreak();
      When you hit a creature with your dragon breath, you gain combat advantage against that creature until the start of your next turn.
    ]
  ]
}