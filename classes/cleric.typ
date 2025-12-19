#import "../helpers/shared.typ": center-color, choiceBox, edge-color, header-color, header2-color;
#import "../helpers/powers.typ";

#set page(
  paper: "a4",
  margin: (top: 1cm, rest: 2cm),
  fill: rgb("#F0E3C7"),
  background: {
    place(top + left, rect(width: 100%, height: 15%, fill: gradient.linear(edge-color, center-color, angle: 90deg)))
    place(bottom + left, rect(width: 100%, height: 15%, fill: gradient.linear(center-color, edge-color, angle: 90deg)))
    place(top + left, rect(width: 15%, height: 100%, fill: gradient.linear(edge-color, center-color, angle: 0deg)))
    place(top + right, rect(width: 15%, height: 100%, fill: gradient.linear(center-color, edge-color, angle: 0deg)))
  },
)

#show heading.where(level: 1): it => box(align(center)[#box(
  it,
  width: 100%,
  inset: 6pt,
  fill: header-color,
)]);


#align(center)[
  = The Cleric
  _Their prayers burn, and the unholy tremble._
  #linebreak()
  #text(size: 10pt)[Divine Leader]
]

#columns(2)[
  = Proficiencies
  // Your content goes here in 2 columns
  #text(
    table(
      columns: (1fr, 1fr, 1fr),
      stroke: 0.5pt + rgb("#D4C4A0"),
      align: center,
      fill: (col, row) => if calc.rem(col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
      inset: 8pt,
      [
        #box(image("../svgs/armor.svg", height: 2em))
        #linebreak()
        #("Cloth (L)", "Leather (L)", "Hide (L)", "Chainmail (H)").join(linebreak())
      ],
      [
        #box(image("../svgs/sword.svg", height: 2em))
        #linebreak()
        #("Simple Melee", "Simple Ranged").join(linebreak())
      ],
      [
        #box(image("../svgs/magic.svg", height: 2em))
        #linebreak()
        Holy Symbol
      ],
    ),
    size: 10pt,
  );

  = Defenses & Health
  #text(
    table(
      columns: (1fr, 1fr),
      stroke: 0.5pt + rgb("#D4C4A0"),
      align: center,
      fill: (col, row) => if calc.rem(col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
      inset: 8pt,
      [
        #box(image("../svgs/shield.svg", height: 2em))
        #linebreak()
        #("Fortitude: 11", "Will: 13", "Reflex: 11").join(linebreak())
      ],
      [
        #box(image("../svgs/heart.svg", height: 2em))
        #linebreak()
        #("Health: 22", "Health on level-up: 5", "Healing Surges: 7").join(linebreak())
      ],
    ),
    size: 10pt,
  );

  = Abilities
  Your abilities decide what your character will specialise in. Depending on your playstyle, you want to focus on different abilities.
  == Main Ability
  Choose either *Strength* or *Wisdom*, that characteristic has 4 points and is your main characteristic.

  == Assign points
  Assign 6 points to any combination of abilities that aren't your main ability. You can assign a maximum of 4 points to any single ability.

  Most Cleric powers use either *Strength* or *Wisdom* for accuracy, while sometimes benefitting from *Intelligence* or *Charisma* for extra effects.

  #text(
    table(
      columns: (1fr, 1fr, 1fr),
      stroke: 0.5pt + rgb("#D4C4A0"),
      align: left,
      fill: (col, row) => if calc.rem(row + col, 2) == 0 { rgb("#E8DBB7") } else { rgb("#F0E3C7") },
      inset: 8pt,
      [
        #align(center)[=== Dexterity
          #("+1 Reflex", "+1 Initiative").join(linebreak())]
      ],
      [
        #align(center)[=== Strength
          +1 Fortitude]
      ],
      [
        #align(center)[=== Constitution
          #("+1 Fortitude", "+1 Surge", "+2 Health").join(linebreak())]
      ],

      [
        #align(center)[=== Intelligence
          +1 Reflex]
      ],
      [
        #align(center)[=== Wisdom
          +1 Will]
      ],
      [
        #align(center)[=== Charisma
          +1 Will
          #linebreak()
          ‌‌
          #linebreak()
          ‌‌ ]
      ],
    ),
    size: 10pt,
  );

  = Lore
  Some Cleric's specialised in the text of renewal and soothing, while others specialised in conquest and warfare. Choose one of the options below.

  #choiceBox("Healer’s Lore")
  When you let a creature spend a healing surge to regain hit points with one of your cleric powers that has the healing keyword, add your Wisdom to the hit points the recipient regains.

  #choiceBox("Battlepriest's Lore")
  You gain a +2 shield bonus to AC, and you have proficiency with scale armor. In addition, whenever you use a cleric healing power to allow a target to spend a healing surge, that target gains a +2 bonus to attack rolls until the end of your turn.

  = Healing Word
  Using the healing word power, clerics can grant their comrades additional resilience with nothing more than a short prayer.

  #powers.power(
    title: "Healing Word",
    description: "You utter a soothing word that mends wounds of the body and spirit.",
    type: powers.powerType.encounter,
    action: powers.actionType.minor,
    traits: "Healing",
    target: "You or one ally in the burst",
    range: [*Close* burst 5 (10 at 11th level, 15 at 21st level)],
    isSpecial: true,
    additionalRows: (
      text[*Effect*: The target can spend a healing surge and regain 1d6 additional hit points.
        - Level 6: 2d6 additional hit points.
        - Level 11: 3d6 additional hit points.
        - Level 16: 4d6 additional hit points.
        - Level 21: 5d6 additional hit points.
        - Level 26: 6d6 additional hit points.
      ],
      text[*Special:* You can use this power twice per encounter, but only once per round. At 16th level, you can use this power three times per round.],
    ),
  );
]

#set page(columns: 2)

= Channel Divinity
Once per encounter you can invoke divine power, filling yourself with the strength of your patron deity. With the divine strength you invoke you can wield special powers. You can also learn other uses for this feature; for instance, the divinity feats grant characters with access to the Channel Divinity class feature the ability to use additional special powers.
*Regardless of how many different uses for Channel Divinity you know, you can use only one such ability per encounter.* The special ability or power you invoke works just like your other powers. You gain the Favor of the Gods Channel Divinity power.

#powers.power(
  title: "Favor of the Gods",
  description: "When luck runs against you, you beseech the gods for aid to turn chance in your favor.",
  type: powers.powerType.encounter,
  action: powers.actionType.minor,
  traits: "Channel Divinity, Divine",
  target: "One creature in the burst",
  range: [*Close* burst 3],
  additionalRows: (
    text[*Effect*: The next time the target misses with an attack roll before the end of your next turn, it can reroll that attack roll. It must use the new result, even if it is lower.],
  ),
);

Additionally, choose one of the Channel Divinity powers below:

#choiceBox("Punish the Profane")
#powers.power(
  title: "Punish the Profane",
  description: "You channel divine energy into your weapon, causing it to release a burst of radiance when you strike an undead foe.",
  type: powers.powerType.encounter,
  action: powers.actionType.standard,
  traits: "Channel Divinity, Divine, Radiant, Weapon",
  target: "One undead creature",
  range: "Melee weapon",
  offenseStat: powers.offense.strength,
  defenseStat: powers.defense.ac,
  additionalRows: (
    text[*Hit*: 2[W] + Strength radiant damage, and the target is immobilized until the end of your next turn.
      - Level 11: 3[W] damage.
      - Level 21: 4[W] damage.
    ],
    text[*Effect*: Make the secondary attack.],
    text[*Channel Divinity*: You can use only one channel divinity power per encounter],
  ),
)

#colbreak();

#powers.power(
  title: "Punish the Profane Secondary Attack",
  type: powers.powerType.encounter,
  action: powers.actionType.noAction,
  traits: "",
  range: [*Close* burst 3],
  target: "Each undead enemy in the burst other than the primary target",
  offenseStat: powers.offense.strength,
  defenseStat: powers.defense.will,
  additionalRows: (
    text[*Hit*: Charisma radiant damage. In addition, you push the secondary target a number of squares up to 3 + your Charisma],
  ),
  isSpecial: true,
)

#choiceBox("Turn undead")
#powers.power(
  title: "Turn Undead",
  description: "You sear undead foes, push them back, and root them in place.",
  type: powers.powerType.encounter,
  action: powers.actionType.standard,
  traits: "Channel Divinity, Divine, Implement, Radiant",
  target: "Each undead creature in burst",
  range: [*Close* burst 2 (3 at 11th level, 5 at 21st level)],
  offenseStat: powers.offense.wisdom,
  defenseStat: powers.defense.will,
  additionalRows: (
    text[*Hit*: 1d10 + Wisdom radiant damage, and you push the target a number of squares up to 3 + your Charisma. The target is immobilized until the end of your next turn.
      - Level 11: 2d10 + Wisdom radiant damage.
      - Level 21: 3d10 + Wisdom radiant damage.
    ],
    text[*Channel Divinity*: You can use only one channel divinity power per encounter],
  ),
)

#choiceBox("Healer's Mercy")
#powers.power(
  title: "Healer's Mercy",
  description: "Strength flows out from you to your injured comrades, rekindling their resolve to see the battle to its end.",
  type: powers.powerType.encounter,
  action: powers.actionType.standard,
  traits: "Channel Divinity, Divine, Healing",
  target: "Each bloodied ally in the burst",
  range: [*Close* burst 5],
  additionalRows: (
    text[*Effect*: Each target can spend a healing surge. You are weakened until the end of your next turn.],
    text[*Channel Divinity*: You can use only one channel divinity power per encounter],
  ),
);

#pagebreak();

= Divine Technique
You may choose a level 1 or 2 Divine Technique, you master it.

= Powers
You may choose 2 At-Will, 1 Encounter and 2 Daily acolyte Powers.

= Feats
You gain access to the Acolyte feat list 

#pagebreak()

#set page(columns: 1)

#align(center)[
  = Cleric Powers
]

#columns(2)[
  = At-Will
  #link("https://iws.mx/dnd/?list.full.power=%22Cleric%20Attack%201%22%20-%22Cleric%20Attack%201*%22%20At-Will")[
  Link to Level 1 At-Wills
]
  = Encounter
  #link("https://iws.mx/dnd/?list.full.power=%22Cleric%20Attack%201%22%20-%22Cleric%20Attack%201*%22%20%22Encounter%22%20-%22Daily%22")[
  Link to Level 1 Encounters
]

  #link("https://iws.mx/dnd/?list.full.power=%22Cleric%20Attack%203%22%20-%22Cleric%20Attack%203*%22%20%22Encounter%22%20-%22Daily%22")[
  Link to Level 3 Encounters
]
  = Daily

  #link("https://iws.mx/dnd/?list.full.power=%22Cleric%20Attack%201%22%20-%22Cleric%20Attack%201*%22%20%22Daily%22")[
  Link to Level 1 Dailies
]
  = Utility
  #link("https://iws.mx/dnd/?list.full.power=%22Cleric%20Utility%202%22%20-%22Cleric%20Utility%202*%22%20%22Utility%22")[
  Link to Level 2 Utilities
]
]

#pagebreak()

#align(center)[
  = Heroic Cleric Feats
]

#columns(2)[
#choiceBox("Battlepriest's Armanents")
*Requirements: 3 Strength* #linebreak()
You gain proficiency with light shields and with one military weapon of your choice.

#choiceBox("Battle Healer")
When you use your healing word, you regain hit points equal to your Strength.
#choiceBox("Defensive Grace")
*Requirements: Healer's Mercy* #linebreak()
When you use your healer’s mercy, you gain a power bonus equal to your Charisma to all defenses until the end of your next turn.
#choiceBox("Defensive Healing Word")
When you use your healing word, the target also gains a power bonus to all defenses equal to your Charisma against the next attack made against him or her before the end of your next turn.
#choiceBox("Shielding Word")
Targets of your healing word class feature also gain a +2 bonus to all defenses until the start of your next turn.
#choiceBox("Sturdy Faith")
When you use your healing word on an ally, you gain temporary hit points equal to your Constitution.
#choiceBox("Greater Turning")
*Requirements: Turn Undead* #linebreak()
Whenever you miss a target when using turn undead, the target is pushed a number of squares equal to your Charisma. The target takes no damage and is not immobilized.
#choiceBox("Harbinger of Rebirth")
Any ally within 5 squares of you gains a +5 feat bonus to death saving throws.
#choiceBox("Healer's Implement")
When you let a creature spend a healing surge to regain hit points with any of your cleric healing powers, add your holy symbol's enhancement bonus to the hit points the recipient regains.

#colbreak();
#choiceBox("Templar's Domain")
*Requirements: Healer's Lore* #linebreak()
Choose a divine domain that has a 1st level domain feature associated with it, such as the storm or the sun domain of the warpriest. You lose Healer's Lore and gain that 1st level domain feature. If the feature grants powers, you don't gain them.
#choiceBox("Word of Retaliation")
When you use healing word, the target regains extra hit points equal to the number of enemies adjacent to him or her.
#choiceBox("Pacifist Healer")
When you use healing word or a divine power that allows a target to spend a healing surge, the target regains additional hit points equal to 1d6 + your Charisma modifier. Whenever you use said power, until the end of your next turn if you deal damage to a bloodied enemy, you become Dazed. The additional hit points increase to 2d6 + your Charisma modifier at 11th level, and to 3d6 + your Charisma modifier at 21st level.
#choiceBox("Pacifist's Reward")
When you hit with an attack that doesn't deal damage, if you didn't deal any damage on your turn, gain 2 temporary hit points at the end of the turn. The temporary hit points increase to 3 at 11th level, and to 4 at 21st level.


]