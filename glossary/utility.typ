#import "../helpers/theme.typ" as theme;
#import "../helpers/powers.typ";

#let utilityPage() = {
  return [
    #theme.pageTitle(title: "Utility");
    = Level 2
    #columns(2)[
      #powers.power(
        title: "Agile Recovery",
        description: "With a quick leap, you are back on your feet and ready to act.",
        type: powers.powerType.at-will,
        range: [*Personal*],
        action: powers.actionType.minor,
        additionalRows: (
          [*Effect*: You stand up.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Arcane Senses",
        description: "You refocus your eyes to see magic energy invisible to the untrained eye, learning how many magical creatures are nearby.",
        type: powers.powerType.encounter,
        range: [*Personal*],
        action: powers.actionType.minor,
        additionalRows: (
          [*Effect*: You make an arcane Skill Check and learn the number of elemental, fey, and shadow creatures that are within a number of squares of you equal to the check result. You don't learn the creatures' locations, but you do learn separate counts for each type.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Studied Casting",
        description: "You catch an error at the last moment, correcting a malformed glyph before it can ruin your technique.",
        type: powers.powerType.daily,
        range: [*Personal*],
        action: powers.actionType.free,
        trigger: "You make a skill check to perform a magical technique and dislike the result.",
        additionalRows: (
          [*Effect*: Reroll the check with a +4 power bonus. You must use the second result.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Cave Sight",
        description: "You close your eyes, projecting arcane awareness to give you a mental picture of the cavern ahead.",
        type: powers.powerType.daily,
        range: [*Close burst 20*],
        action: powers.actionType.minor,
        additionalRows: (
          [*Effect*: You learn the general layout of terrain features in the burst. You cannot sense through solid objects, such as cave walls, but you do sense around corners and into narrow gaps.

            Additionally, you can make a Perception check to detect hidden creatures, objects, and traps as though you were within 10 squares of them.],
        ),
        traits: none,
      )

      #colbreak()

      #powers.power(
        title: "Bounding Leap",
        description: "As you spring through the air, you tuck in your legs and arms, spinning to eke out a little extra distance.",
        type: powers.powerType.encounter,
        range: [*Personal*],
        action: powers.actionType.move,
        additionalRows: (
          [*Effect*: You make a Skill Check to jump with a +5 power bonus. You are considered to have a running start, and the distance you jump can exceed your speed.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Scrambling Climb",
        description: "You use your forward momentum to help pull yourself upward.",
        type: powers.powerType.encounter,
        range: [*Personal*],
        action: powers.actionType.move,
        additionalRows: (
          [*Effect*: You make an Skill Check to climb with a +5 power bonus. If the check succeeds, you climb a number of squares equal to 2 + your speed.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Talented Athletics",
        description: "You don't always succeed in feats of physicality, but your failures rarely cost you.",
        type: powers.powerType.at-will,
        range: [*Personal*],
        action: powers.actionType.free,
        trigger: "You fail a Skill Check by 10 or more when swimming or climbing.",
        additionalRows: (
          [*Effect*: Treat the skill check result as if you failed by 9.],
        ),
        traits: none,
      )

      #powers.power(
        title: "False Bravado",
        description: "Your apparent courage makes your enemy think twice about pressing its attack.",
        type: powers.powerType.at-will,
        range: [*Personal*],
        action: powers.actionType.minor,
        additionalRows: (
          [*Effect*: You are no longer marked.],
        ),
        traits: none,
      )

          #powers.power(
      title: "Faith Healing",
      description: "Your prayers help an ally recover from injury.",
      type: powers.powerType.daily,
      range: [*Melee touch*],
      target: "One creature",
      action: powers.actionType.standard,
      additionalRows: (
        [*Effect*: The target can spend a healing surge.],
      ),
      traits: "Healing",
    )
    ]

    #set page(columns: 2)

    #powers.power(
      title: "Serpent’s Tongue",
      description: "Your lie twists in your foe's mind like a snake, allowing you to hide the venom behind your next words.",
      type: powers.powerType.encounter,
      range: [*Personal*],
      action: powers.actionType.free,
      trigger: "You fail a Skill Check to lie against a creature",
      additionalRows: (
        [*Effect*: You gain a +5 power bonus to the next
          Social Skill Check you make against that creature before the end of your next turn.],
      ),
      traits: none,
    )

    #powers.power(
      title: "Master Diplomat",
      description: "Catching a possible faux pas in what you were about to say, you quickly adjust your soothing words and flattery to work more magic than the most powerful spell.",
      type: powers.powerType.encounter,
      range: [*Personal*],
      action: powers.actionType.free,
      trigger: "You make a skill check to persuade and dislike the result",
      additionalRows: (
        [*Effect*: Reroll the skill check. You decide whether to make the reroll before the DM announces the result. You can use whichever result you prefer.],
      ),
      traits: none,
    )

    #powers.power(
      title: "Soothing Words",
      description: "The battle done, your allies turn to you for words of encouragement and support.",
      type: powers.powerType.daily,
      range: [*Close burst 5*],
      target: "Each ally who can hear you in the burst",
      requirement: "You must be taking a short rest",
      action: powers.actionType.standard,
      additionalRows: (
        [*Effect*: When each target spends one or more healing surges at the end of the short rest, he or she regains additional hit points equal to your Charisma.],
      ),
      traits: none,
    )

        #powers.power(
      title: "Inspiring Fortitude",
      description: "Inspired by your resilience, your allies find the will to overcome challenges.",
      type: powers.powerType.daily,
      range: [*Close burst 5*],
      target: "Each ally in the burst",
      requirement: "Your second wind must be available for you to use",
      action: powers.actionType.standard,
      additionalRows: (
        [*Effect*: You use your second wind, and each target gains temporary hit points equal to 10 + your Constitution.],
      ),
      traits: none,
    )

    #colbreak()

    #powers.power(
      title: "Otherworldly Lore",
      description: "Something about the aberrant horror's movements strikes a chord; you know just how to fight it.",
      type: powers.powerType.encounter,
      range: [*Close burst 5*],
      target: "One aberrant creature you can see in the burst",
      action: powers.actionType.minor,
      additionalRows: (
        [*Effect*: You make a monster knowledge check to determine the target's resistances and vulnerabilities. If the check succeeds, you or one ally who can hear you gains a +4 power bonus to his or her next attack roll against the target before the end of your next turn.],
      ),
      traits: none,
    )

    #powers.power(
      title: "Stay Back",
      description: "You sweep your torch or lantern around you to dazzle enemies accustomed to total darkness.",
      type: powers.powerType.encounter,
      range: [*Personal*],
      requirement: "You must be carrying a light source",
      action: powers.actionType.minor,
      additionalRows: (
        [*Effect*: Until the end of your next turn, enemies in the squares illuminated by the light source you are carrying take a -2 penalty to attack rolls.],
      ),
      traits: none,
    )

    #powers.power(
      title: "Endure Pain",
      description: "You grin and bear it, shrugging off the pain of a new wound.",
      type: powers.powerType.daily,
      range: [*Personal*],
      trigger: "You are hit by an attack",
      action: powers.actionType.immediateInterrupt,
      additionalRows: (
        [*Effect*: Until the end of your next turn, you gain resistance to all damage equal to 5 + your Constitution.],
      ),
      traits: none,
    )
    #powers.power(
      title: "Grit and Spittle",
      description: "Drawing on pure stubbornness, you're ready see your way through disaster.",
      type: powers.powerType.encounter,
      range: [*Personal*],
      requirement: "You must have at least 1 healing surge.",
      action: powers.actionType.minor,
      additionalRows: (
        [*Effect*: You spend a healing surge but regain no hit points. You make a saving throw against every effect on you that a save can end.],
      ),
      traits: none,
    )

    #pagebreak();

    #powers.power(
      title: "Inspiring Fortitude",
      description: "Inspired by your resilience, your allies find the will to overcome challenges.",
      type: powers.powerType.daily,
      range: [*Close burst 5*],
      target: "Each ally in the burst",
      requirement: "Your second wind must be available for you to use",
      action: powers.actionType.standard,
      additionalRows: (
        [*Effect*: You use your second wind, and each target gains temporary hit points equal to 10 + your Constitution.],
      ),
      traits: none,
    )

    #powers.power(
      title: "Healer’s Gift",
      description: "You tend to a fallen comrade and stave off death's touch.",
      type: powers.powerType.encounter,
      range: [*Melee 1*],
      target: "One dying creature",
      action: powers.actionType.standard,
      additionalRows: (
        [*Effect*: The target can spend a healing surge.],
      ),
      traits: "Healing",
    )

    #powers.power(
      title: "Iron Resurgence",
      description: "Though your hands do little to comfort the wounded, you ensure that an injury will not keep an ally out of the battle.",
      type: powers.powerType.encounter,
      range: [*Melee 1*],
      target: "You or one ally; must be bloodied and have at least two healing surges remaining",
      action: powers.actionType.minor,
      additionalRows: (
        [*Effect*: The target loses a healing surge and can then spend one or two healing surges. The target also gains temporary hit points equal to half his or her healing surge value.],
      ),
      traits: "Healing",
    )

    

    #powers.power(
      title: "Root Understanding",
      description: "Your studies in history have exposed you to a variety of languages, which sometimes allows you to understand a language in which you aren't fluent.",
      type: powers.powerType.daily,
      range: [*Personal*],
      action: powers.actionType.free,
      trigger: "You see or hear a language you don't understand.",
      additionalRows: (
        [*Effect*: You can understand, read, speak, and write the triggering language until the end of the encounter.],
      ),
      traits: none,
    )

    #colbreak()

    #powers.power(
      title: "Ominous Threat",
      description: "You draw your enemy's attention to rest squarely on you.",
      type: powers.powerType.encounter,
      range: [*Melee 1*],
      action: powers.actionType.free,
      trigger: "You hit an enemy with a melee attack",
      target: "The enemy you hit",
      additionalRows: (
        [*Effect*: You mark the target until the end of your next turn. In addition, one ally marked by the target is no longer marked.],
      ),
      traits: none,
    )

    #powers.power(
      title: "Elude Senses",
      description: "You slip past the notice of creatures that have adapted to life underground.",
      type: powers.powerType.encounter,
      range: [*Personal*],
      action: powers.actionType.minor,
      additionalRows: (
        [*Effect*: Until the end of your next turn, creatures can't use darkvision, blindsight, or tremorsense to detect you. You can be detected with other senses as normal.],
      ),
      traits: none,
    )


    #powers.power(
      title: "Failed Diplomacy",
      description: "Negotiations are breaking down and will end in bloodshed. You realize this fact a split-second before your enemies do.",
      type: powers.powerType.daily,
      range: [*Close burst 5*],
      target: "You and each ally in the burst",
      action: powers.actionType.free,
      trigger: "You and your allies roll initiative.",
      additionalRows: (
        [*Effect*: Each target gains a +2 power bonus to the initiative check. In addition, the target has combat advantage against all enemies until the end of his or her next turn.],
      ),
      traits: none,
    )

    #powers.power(
      title: "Fast Hands",
      description: "Your fingers blur as you manipulate objects faster than the eye can follow.",
      type: powers.powerType.at-will,
      range: [*Personal*],
      action: powers.actionType.free,
      additionalRows: (
        [*Effect*: You draw or sheathe a weapon, pick up an item in your space or adjacent to it, or retrieve or stow an item
        ],
        [*Special*: You can use this power only once per round.],
        ),
      traits: none,
    )
    #pagebreak();
  ]
}