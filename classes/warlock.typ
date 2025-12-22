#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Warlock";

#let warlockPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: [ _Bound by pact, driven by power, feared by all._
        #linebreak()
        #text(size: 10pt)[Arcane Striker]],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (
          classes.armorProf.cloth,
          classes.armorProf.leather,
          classes.armorProf.hide,
          classes.armorProf.chainmail,
        ),
        weaponProficiencies: (classes.weaponProf.simpleMelee, classes.weaponProf.simpleRanged),
        implementProficiencies: (classes.implementProf.rod, classes.implementProf.wand, classes.implementProf.tome),
      );

      #classes.defensesAndHealth(fortitude: 11, will: 12, reflex: 15, health: 22, healthOnLevelUp: 5, healingSurges: 6)

      #classes.abilities(
        mainAbilities: ("Charisma", "Constitution"),
        extraAbilities: "Intelligence",
        class: className,
      );

      #colbreak();
      = Warlock's Curse
      You can use the Warlock's Curse Power.

      #powers.power(
        title: "Warlock's Curse",
        type: powers.powerType.at-will,
        range: [Special],
        target: "The enemy nearest to you that you can see",
        action: powers.actionType.minor,
        traits: [Curse],
        isSpecial: true,
        additionalRows: (
          [
            *Effect:*  You place a Warlock's Curse on the enemy. If you hit a cursed enemy with an attack, you deal +1d6 damage. You decide whether to apply the extra damage after making the damage roll. You can deal this extra damage to each enemy only once per turn.

            A Warlock's Curse remains in effect until the end of the encounter or until the cursed enemy drops to 0 hit points or fewer.
            You can't place a Warlock's Curse on a creature that is already affected by your or another character's Warlock's Curse.

            *Level 11:*	+2d6 damage. #linebreak()
            *Level 21:*	+3d6 damage. #linebreak()
          ],
          [*Special:*  You can only use Warlock's Curse once per turn.],
        ),
      )

      = Eldritch Attack
      Warlocks may specialise in blade or blast, choose one of the options below:

      #theme.choiceBox("Eldritch Blast")
      You specialize at ranged combat, firing bolts of eldritch energy at your foes. You learn the Eldritch Blast power.
      #powers.power(
        title: "Eldritch Blast",
        description: "You fire a bolt of dark, crackling eldritch energy at your foe.",
        type: powers.powerType.at-will,
        range: [*Ranged* 10],
        target: "One creature",
        action: powers.actionType.standard,
        offenseStat: "Charisma or Constitution",
        defenseStat: powers.defense.reflex,
        traits: [Arcane, Implement],
        isSpecial: true,
        additionalRows: (
          [
            *Hit:* 1d10 + Charisma or Constitution damage. #linebreak()

            *Level 21:* 2d10 + Charisma or Constitution damage.
          ],
        ),
      );

      #block(
        [
          #theme.choiceBox("Eldritch Strike")
          You specialize at melee combat, using your eldritch power to drive back your foes. You learn the Eldritch Strike power.
          #powers.power(
            title: "Eldritch Strike",
            description: "The dire power of your attack drives your enemy before you.",
            type: powers.powerType.at-will,
            range: [*Melee* weapon],
            target: "One creature",
            action: powers.actionType.standard,
            offenseStat: "Charisma or Constitution",
            defenseStat: powers.defense.ac,
            traits: [Arcane, Weapon, Basic],
            additionalRows: (
              [
                *Hit:* 1[W] + Charisma or Constitution damage, and you slide the target 1 square. #linebreak()

                *Level 21:* 2[W] + Charisma or Constitution.
              ],
              [
                *Special:* This power counts as a melee basic attack.
              ],
            ),
          );
        ],
        breakable: false,
      );

      = Eldritch Pact
      You have forged a pact with mysterious entities that grant you your arcane powers. Choose one pact. The pacts presented in the Player's Handbook are the fey pact, the infernal pact, and the star pact. Other products present additional pacts. The pact you choose determines the following Warlock abilities:
      - *At-Will Spells:* Your pact determines one of the at-will spells you know.
      - *Pact Boon:* Each pact includes a pact boon. The pact boon is a granted power you can use to further hex your enemies.

      The pact you take also provides bonuses to certain Warlock powers. Individual powers detail the effects (if any) your Eldritch Pact selection has on them. Choose one of the following pacts:
      #theme.choiceBox("Dark Pact")
      You have forged a pact with the dark beings that lurk in the shadows of the drow civilization. Spells of darkness, poison, madness, and spite fill your mind. You might turn your powers to noble ends, but you always face the temptation to enhance your spells by hurting your friends—just a little.

      #colbreak();
      == Darkspiral Aura
      You gain the Darkspiral Aura power.

      #powers.power(
        title: "Darkspiral Aura",
        description: "As your cursed enemies fall in battle, your Darkspiral Aura grows in power. You can unleash it on an enemy, blasting its mind and body.",
        type: powers.powerType.at-will,
        range: [*Special*],
        action: powers.actionType.immediateInterrupt,
        trigger: "When an enemy under your Warlock's Curse makes a melee attack or a ranged attack against you",
        traits: [Arcane, Necrotic, Psychic],
        additionalRows: (
          [
            *Effect:* When an enemy under your Warlock's Curse is reduced to 0 hit points or fewer, add 1 to your Darkspiral Aura. Your Darkspiral Aura has a starting value of 0, and it resets to 0 when you take a short rest or an extended rest.
          ],
          [
            *Hit:* 1d6 necrotic and psychic damage to that enemy for each point of your Darkspiral Aura's current value. #linebreak()

            *Level 11:* 1d8 damage. #linebreak()
            *Level 21:* 1d10 damage.
          ],
          [
            *Special:* If this attack deals less than 12 damage, the value of your Darkspiral Aura becomes 0.

            If this attack deals 12 damage or more, you can cause the enemy to be weakened for its attack (which means the attack deals half damage), and the value of your Darkspiral Aura becomes 1.
          ],
        ),
      );

      == Spiteful Glamor
      You gain the Spiteful Glamor at-will spell.
      #powers.power(
        title: "Spiteful Glamor",
        description: "The mere sight of you is anathema to your enemy.",
        type: powers.powerType.at-will,
        range: [*Ranged* 10],
        target: "One creature",
        action: powers.actionType.standard,
        offenseStat: "Charisma",
        defenseStat: powers.defense.will,
        traits: [Arcane, Implement, Psychic],
        isSpecial: true,
        additionalRows: (
          [
            *Hit:* 1d8 + Charisma psychic damage, or 1d12 + Charisma psychic damage to a target at maximum hit points. #linebreak()

            *Level 21:* 2d8 + Charisma damage, or 2d12 + Charisma to a target at maximum hit points.
          ],
        ),
      )
    ]

    #pagebreak()

    #set page(columns: 2)

    #theme.choiceBox("Elemental Pact")
    The ELemental Chaos's power lured you into forging a pact with one of the inscrutable primordials. You reached into the rolling Plane Below and stole its power. Your magic is wild and random, changing to suit the powers you serve. The elemental power fueling your spells surprised your enemies with the seemingly random energy you can loose against them.

    == Elemental Affinity
    After short or extended rest, roll a d10 to determine your current elemental affinity. You can choose the damage type when you use your second wind, but the type changes again when you rest.

    #table(
      columns: (1fr, 1fr),
      stroke: 0.5pt + rgb("#D4C4A0"),
      align: left,
      fill: (col, row) => theme.defaultTableStyle()(col, row),
      inset: 4pt,
      [*D10*], [*Affinity*],
      [1-2], [Acid],
      [3-4], [Cold],
      [5-6], [Fire],
      [7-8], [Lightning],
      [9-10], [Thunder],
    )

    On your turn, when you use an arcane attack power that deals force, necrotic, poison, or psychic damage, you can change the damage type to match that of your current elemental affinity. Your elemental affinity's damage type replaces each instance of force, necrotic, poison, and psychic damage that the power deals.

    == Accursed Affinity
    You gain the Accursed Affinity pact boon.

    #powers.power(
      title: "Accursed Affinity",
      type: powers.powerType.at-will,
      range: [*Close* Burst 20],
      action: powers.actionType.immediateReaction,
      trigger: "An enemy under your Warlock's Curse is reduced to 0 hit points or fewer",
      additionalRows: (
        [
          *Effect:* The next enemy you place your Warlock's Curse on gains vulnerable 5 to the damage type matching your current elemental affinity. This vulnerability is cumulative with the enemy's existing vulnerability to the same damage type, if any, and lasts until the curse ends.

          *Level 11:* Vulnerable 10. #linebreak()
          *Level 21:* Vulnerable 15.
        ],
      ),
    );

    #block(
      [
        == Chromatic Bolt
        You gain the chromatic bolt power.

        #powers.power(
          title: "Chromatic Bolt",
          description: "You loose a crackling bolt of raw chaos against your foes.",
          type: powers.powerType.at-will,
          range: [*Ranged* 10],
          target: "One creature",
          action: powers.actionType.standard,
          offenseStat: "Charisma",
          defenseStat: powers.defense.reflex,
          traits: [Arcane, Elemental, Implement, Psychic, Basic],
          additionalRows: (
            [
              *Hit:* 1d6 + Charisma psychic damage, and one creature within 5 squares of the target takes psychic damage equal to your *Constitution*. #linebreak()

              *Level 21:* 2d6 + Charisma psychic damage, and one creature within 10 squares of the target takes psychic damage equal to your *Constitution*.
            ],
          ),
        );

      ],
      breakable: false,
    );

    #theme.choiceBox("Fey Pact")
    You have forged a bargain with ancient, amoral powers of the Feywild. Some are primitive earth spirits, grim and menacing; some are capricious wood, sky, or water spirits; and others are incarnations of seasons or natural forces who roam the faerie realm like wild gods. They bestow magic that ranges from feral and savage to wondrous and enchanting.

    == Misty Step
    You have the Misty Step pact boon

    #powers.power(
      title: "Misty Step",
      description: "You instantly transform into silver mist that streams a short distance and reforms, allowing you to flee or maneuver to set up a deadly attack.",
      type: powers.powerType.at-will,
      range: [*Close* Burst 20],
      action: powers.actionType.free,
      trigger: "An enemy under your Warlock's Curse is reduced to 0 hit points or fewer",
      additionalRows: (
        [
          *Effect:* You teleport a number of squares up to your *Intelligence*. Once per turn, you may then deal Force damage equal to half your level     your *Intelligence* to one adjacent creature.

          *Level 11:* One or two adjacent creatures. #linebreak()
          *Level 21:* Any number of adjacent creatures.
        ],
      ),
    );

    #block(
      [
        == Eyebite
        You know the eyebite spell

        #powers.power(
          title: "Eyebite",
          description: "You glare at your enemy, and your eyes briefly gleam with brilliant colors. Your foe reels under your mental assault, and you vanish from his sight.",
          type: powers.powerType.at-will,
          range: [*Ranged* 10],
          target: "One or two creatures",
          action: powers.actionType.standard,
          offenseStat: powers.offense.charisma,
          defenseStat: powers.defense.will,
          traits: [Arcane, Charm, Implement, Psychic],
          additionalRows: (
            [
              *Hit:* 1d6 + Charisma psychic damage, and if you had combat advantage against the target you are invisible to the target until the start of your next turn. #linebreak()

              *Level 21:* 2d6 + Charisma damage.
            ],
          ),
        );

      ],
      breakable: false,
    );

    #theme.choiceBox("Infernal Pact")
    Long ago a forgotten race of devils created a secret path to power and taught it to the tieflings of old to weaken their fealty to Asmodeus. In his wrath, Asmodeus destroyed the scheming devils and struck their very names from the memory of all beings—but you dare to study their perilous secrets anyway.

    == Infernal Patronage
    You have the Infernal Patronage pact boon

    #powers.power(
      title: "Infernal Patronage",
      type: powers.powerType.at-will,
      range: [*Close* Burst 20],
      action: powers.actionType.free,
      traits: [Arcane],
      trigger: "An enemy in range under your Warlock's Curse is reduced to 0 hit points or less.",
      additionalRows: (
        [
          *Effect:* You gain the following benefits
          - *Dark One's Blessing:* You gain temporary hit points equal to your level + your *Intelligence*. These temporary hit points disappear at the end of your next extended rest.
          - *Soul Pyre:* If the triggering enemy was not a minion, you may then make a _Soul Pyre_ attack.
        ],
      ),
    );

    #powers.power(
      title: "Soul Pyre",
      description: "You unleash a burst of hellish flames from the location where your cursed enemy fell.",
      type: powers.powerType.at-will,
      range: [*Close* burst 1 centered on the triggering enemy],
      action: powers.actionType.noAction,
      target: "Each creature in burst",
      traits: [Arcane, Fire],
      isSpecial: true,
      additionalRows: (
        [
          *Effect:* Half your level + *Intelligence* fire damage. #linebreak()

          *Level 21:* Close burst 2.
        ],
        [
          *Special:* You may use Soul Pyre once per turn.
        ],
      ),
    );

    == Hellish Rebuke
    You gain the Hellish Rebuke spell

    #powers.power(
      title: "Hellish Rebuke",
      description: "You point your finger, and your foe is scoured in hellish flames stoked by your own anger and pain. If you are injured, the flames burst into life one more time before they fade away.",
      type: powers.powerType.at-will,
      range: [*Ranged* 10],
      target: "One creature",
      action: powers.actionType.standard,
      offenseStat: "Constitution",
      defenseStat: powers.defense.reflex,
      traits: [Arcane, Fire, Implement],
      additionalRows: (
        [
          *Hit:* 1d8 + Constitution fire damage. The first time you take damage before the end of your next turn, the target takes 1d8 + Constitution fire damage. #linebreak()

          *Level 21:* 2d8 + Constitution damage and extra damage.
        ],
      ),
    );

    #theme.choiceBox("Star Pact")
    You have mastered the astrologer's art, learning the secret names of the stars and gazing into the Far Realm beyond, gaining great power thereby. You can call upon powers that madden or terrify your enemies, manipulate chance and fate, or scour your foes with icy banes and curses drawn from beyond the night sky.

    == Fate of the Void
    You have the Fate of the Void pact boon.

    #powers.power(
      title: "Fate of the Void",
      description: "Your curse intermingles with the lost vitality of a cursed enemy to reveal a glimpse of the future to you.",
      type: powers.powerType.at-will,
      range: [*Close* Burst 20],
      action: powers.actionType.free,
      traits: [Arcane],
      trigger: "An enemy in range under your Warlock's Curse is reduced to 0 hit points or less.",
      requirement: [You must not have more charges of Glimpses of the Void than your *Intelligence* (minimum 1).],
      additionalRows: (
        [
          *Effect:* You gain a charge of Glimpse of the Void.

          Whenever you make an attack, before making any attack rolls or applying any effects of the power, you may choose to spend any number of charges of Glimpse of the Void to enhance the power.

          - If you spend one charge of Glimpse of the Void, you gain combat advantage and a bonus to damage rolls with the power equal to your *Intelligence*.
          - For each additional charge you spend, you gain an additional +1 bonus to attack rolls and an additional +2 bonus to damage rolls with the power.

          Whenever you make an ability check, skill check, or saving throw, before making the roll, you may choose to spend any number of charges of Glimpse of the Void to enhance the roll.

          - If you spend one charge of Glimpse of the Void, you gain a +2 bonus to the roll.
          - For each additional charge you spend, you gain an additional +1 bonus to the roll.

          *Level 11:* Increase the additional bonus to damage rolls when spending additional charges to +3. #linebreak()
          *Level 21:* Increase the additional bonus to damage rolls when spending additional charges to +4.
        ],
      ),
    );

    Whenever you complete a short or extended rest and have charges of Glimpse of the Void remaining, you gain temporary hit points equal to your *Intelligence* for each charge. All of your charges of Glimpse of the Void then dissipate. These temporary hit points disappear at the end of your next extended rest.

    == Dire Radiance
    You gain the Dire Radiance power.

    #powers.power(
      title: "Dire Radiance",
      description: "You cause a shaft of brilliant, cold starlight to lance down from above, bathing your foe in excruciating light. The nearer he moves toward you, the brighter and more deadly the light becomes.",
      type: powers.powerType.at-will,
      range: [*Ranged* 10],
      target: "One creature",
      action: powers.actionType.standard,
      offenseStat: "Charisma or Constitution",
      defenseStat: powers.defense.fortitude,
      traits: [Arcane, Fear, Implement, Radiant],
      additionalRows: (
        [
          *Hit:* 1d6 + Charisma or Constitution radiant damage. The first time the target moves closer to you on its next turn, it takes 1d6 + Charisma or Constitution damage. This is a fear effect.

          *Level 21:* 2d6 + Charisma or Constitution damage.
        ],
      ),
    );

    = Prime Shot
    If none of your allies are nearer to your target than you are, you receive a +1 bonus to ranged attack rolls against that target.

    = Shadow Walk
    On your turn, if you move at least 3 squares away from where you started your turn, you gain concealment until the end of your next turn.

    = Powers
    You may choose 1 Encounter and 2 Daily Warlock Powers.

    = Feats
    You gain access to the #className feat list

    #pagebreak()

    #set page(columns: 1)

    #classes.powerLinks(className: className, skipAtWill: true);

    #pagebreak()

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Starfire Womb")
      *Requirements: 2 Charisma*
      When you deal damage with a power that has the radiant or fear keyword, immediately roll a saving throw to relieve a condition of your choice from which you are suffering.

      #theme.choiceBox("Improved Fate of the Void")
      *Requirements: 2 Constitution or Charisma, Star Pact*
      Your Fate of the Void grants an additional +1 bonus to the d20 roll.

      #theme.choiceBox("Sacrifice to Caiphon")
      *Requirements: 2 Constitution*
      When you attack with a Warlock encounter power that has targets and you miss all targets, then you can deal damage to yourself equal to the level of the power. If you do, you immediately recover the power.

      #theme.choiceBox("Improved Dark One’s Blessing")
      *Requirements: 3 Constitution, Infernal Pact*
      Your Dark One's Blessing now gives you 3 additional temporary hit points.

      #theme.choiceBox("Allegiance to the Daughter")
      *Requirements: Infernal Pact*
      Whenever you reduce an enemy you have cursed to 0 hit points with a Warlock attack, the enemy's space fills with hellfire until the end of your next turn. Any creature that enters or starts its turn within the square takes fire damage equal to 5 + one-half your level.

      #theme.choiceBox("Glasya’s Rebuke")
      *Requirements: Infernal Pact*
      Each time a target takes damage from hellish rebuke because you took damage, one enemy within 5 squares of the target also takes 5 fire damage.

      #theme.choiceBox("Improved Misty Step")
      *Requirements: 2 Intelligence, Fey Pact*
      Your Misty Step now allows you to teleport an additional 2 squares.

      #theme.choiceBox("Bloodied Boon")
      You can choose to gain your pact boon when an enemy you curse is first bloodied. If you do, you remove your curse from that enemy.

      #theme.choiceBox("Primed Curse")
      The bonus to attack rolls granted by Prime Shot increases to +2 if the target is also cursed by you.

      #theme.choiceBox("Cursed Shot")
      When determining who is nearest for the purposes of the Prime Shot class feature, you ignore all allies adjacent to you, as well as allies who are helpless, stunned, dominated, unconscious, or petrified.

      #theme.choiceBox("Empowering Shadows")
      When you have concealment from your Shadow Walk, you gain a +1 bonus to damage rolls.

      #theme.choiceBox("Brutal Curse")
      When you roll your Warlock's Curse damage, reroll any die that displays a 1 until you have a result of 2 or higher.

      #theme.choiceBox("Prolonged Curse")
      When you hit a target with a Warlock attack that deals ongoing damage, increase the ongoing damage by 1 point per Warlock's Curse die you roll.

      #theme.choiceBox("Killing Curse")
      The extra damage dice from your Warlock's Curse class feature increase from d6s to d8s.

      #theme.choiceBox("Curse of Displacement")
      When you score a critical hit against the target of your Warlock's Curse, you teleport the target 3 squares as a free action.

      #theme.choiceBox("Exultant Shadow Step")
      When you score a critical hit against the target of your Warlock's Curse, you can teleport 4 squares as a free action.

      #theme.choiceBox("Warlock’s Sight")
      You don't take the normal -2 penalty to attack rolls if your target has cover or concealment as long as your target is cursed by you.

      #block(
        [
          #theme.choiceBox("Yorgrix’s Brutality")
          *Requirements: Dark Pact*
          When you damage a creature with a Warlock attack power while that creature is taking ongoing damage, the creature takes 2 extra poison damage. The extra damage increases to 4 at 11th level and to 6 at 21st level.

        ],
        breakable: false,
      );

      #theme.choiceBox("Cruel Whimsy")
      *Requirements: Fey Pact*
      When an enemy fails a saving throw against an effect bestowed by one of your Warlock powers, you can shift 1 square as a free action.

      #theme.choiceBox("Ulban’s Flare")
      *Requirements: Star Pact*
      When you hit a creature with dire radiance and you have concealment or total concealment from that target, the target takes 2 extra damage and a -2 penalty to attack rolls until the end of your next turn. The extra damage increases to 4 at 11th level and to 6 at 21st level.
    ]
  ]
}
