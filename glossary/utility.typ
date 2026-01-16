#import "../helpers/theme.typ" as theme;
#import "../helpers/powers.typ";

#let utilityPage() = {
  return [
    #theme.pageTitle(title: "Utility");
    #columns(2)[
      = Strength

      #powers.power(
        title: "Bounding Leap",
        bonusTitle: "2 Strength | Level 2",
        description: "As you spring through the air, you tuck in your legs and arms, spinning to eke out a little extra distance.",
        type: powers.powerType.encounter,
        range: [*Personal*],
        action: powers.actionType.move,
        additionalRows: (
          [*Effect*: You make a Strength Check to jump with a +5 power bonus. You are considered to have a running start, and the distance you jump can exceed your speed.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Scrambling Climb",
        bonusTitle: "2 Strength | Level 2",
        description: "You use your forward momentum to help pull yourself upward.",
        type: powers.powerType.encounter,
        range: [*Personal*],
        action: powers.actionType.move,
        additionalRows: (
          [*Effect*: You make a Strength Check to climb with a +5 power bonus. If the check succeeds, you climb a number of squares equal to 2 + your speed.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Talented Athletics",
        bonusTitle: "2 Strength | Level 2",
        description: "You don't always succeed in feats of physicality, but your failures rarely cost you.",
        type: powers.powerType.at-will,
        range: [*Personal*],
        action: powers.actionType.free,
        trigger: "You fail a Strength Check by 5 or more when swimming or climbing.",
        additionalRows: (
          [*Effect*: Treat the Strength check result as if you failed by 4.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Crushing Escape",
        bonusTitle: "2 Strength | Level 6",
        description: "You smash free from your enemy's grasp, sending it reeling and making it susceptible to your next attack.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.free,
        trigger: "You make an escape attempt using Strength.",
        additionalRows: (
          [*Effect*: You gain a power bonus to your Strength check equal to your Strength modifier. If you escape and a creature was grabbing you, that creature gains vulnerable 5 to your attacks until the end of your next turn.],
        ),
      );

      #powers.power(
        title: "Mighty Sprint",
        bonusTitle: "2 Strength | Level 6",
        description: "Your throw yourself forward at a breakneck pace, bounding over obstacles.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.move,
        additionalRows: (
          [*Effect*: You move your speed + 4. During this movement, you ignore difficult terrain and gain a +5 power bonus to Athletics checks you make as part of the move.],
        ),
      );

      #powers.power(
        title: "Sudden Leap",
        bonusTitle: "2 Strength | Level 6",
        description: "You spring around your enemy too quickly for it to strike you.",
        type: powers.powerType.encounter,
        range: "Melee 1",
        action: powers.actionType.move,
        target: "One creature",
        additionalRows: (
          [*Effect*: You make a Strength check against a DC determined by the target's size: 15 (Medium or smaller), 20 (Large), 25 (Huge), or 30 (Gargantuan). If the check succeeds, you jump to another square adjacent to the target, without provoking an opportunity attack from it.],
        ),
      );

      #colbreak();
      = Dexterity

      #powers.power(
        title: "Agile Recovery",
        bonusTitle: "2 Dexterity | Level 2",
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
        title: "Fast Hands",
        bonusTitle: "2 Dexterity | Level 2",
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


      #powers.power(
        title: "Elude Senses",
        bonusTitle: "2 Dexterity | Level 2",
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
        bonusTitle: "2 Dexterity | Level 2",
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
        title: "Dodge Step",
        bonusTitle: "2 Dexterity | Level 6",
        description: "Relying on superior balance and agility, you move in the blink of an eye.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.immediateReaction,
        trigger: "An enemy ends its turn adjacent to you",
        additionalRows: (
          [*Effect*: You shift 1 square.],
        ),
      )

      #powers.power(
        title: "Graceful Maneuver",
        bonusTitle: "2 Dexterity | Level 6",
        description: "You dodge past your enemies with speed and grace.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.move,
        additionalRows: (
          [*Effect*: You shift half your speed.],
        ),
      );

      #powers.power(
        title: "Perfect Balance",
        bonusTitle: "2 Dexterity | Level 6",
        description: "No matter how narrow the path, you have the balance and coordination needed to walk it.",
        type: powers.powerType.at-will,
        range: "Personal",
        action: powers.actionType.move,
        additionalRows: (
          [*Effect*: You move your speed - 2. During this movement, you ignore difficult terrain, and you can move across any horizontal surface that is at least 3 inches wide without making an Acrobatics check.],
        ),
      );

      #powers.power(
        title: "Timely Dodge",
        bonusTitle: "2 Dexterity | Level 6",
        description: "Something out of the corner of your eye causes you to step out of the way of danger.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.immediateInterrupt,
        trigger: "An enemy targets you with an attack.",
        additionalRows: (
          [*Effect*: You shift up to half your speed. The triggering enemy can choose a new target for the attack if you are now out of range.],
        ),
      );

      #powers.power(
        title: "Tumbling Dodge",
        bonusTitle: "2 Dexterity | Level 6",
        description: "You deftly tumble away from a strike.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.immediateInterrupt,
        trigger: "A melee attack hits you",
        additionalRows: (
          [*Effect*: You make a Dexterity check and gain a bonus to all defenses against the triggering attack equal to the check result divided by 10. If the bonus causes the attack to miss, you shift 1 square.],
        ),
      );

      #colbreak();
      = Constitution

      #powers.power(
        title: "Endure Pain",
        bonusTitle: "2 Constitution | Level 2",
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
        bonusTitle: "2 Constitution | Level 2",
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

      #powers.power(
        title: "Inspiring Fortitude",
        bonusTitle: "2 Constitution | Level 2",
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
        title: "Internal Reserves",
        description: "Summoning up reserves of strength, you make a desperate effort to prevail.",
        type: powers.powerType.daily,
        range: "Personal",
        action: powers.actionType.noAction,
        trigger: "You are required to roll a saving throw.",
        additionalRows: (
          [*Effect*: You make the saving throw with a +4 power bonus.],
        ),
      );

      #powers.power(
        title: "Third Wind",
        description: "You have almost endless reserves and can rebound from injuries that would bring down another.",
        type: powers.powerType.daily,
        traits: "Healing",
        range: "Personal",
        action: powers.actionType.minor,
        additionalRows: (
          [*Effect*: You spend a healing surge.],
          [*Special*: As a standard action, an adjacent ally can make a DC 10 Heal check to allow you to use this power without spending an action yourself.],
        ),
      );

      #powers.power(
        title: "Walk It Off",
        description: "You take a deep breath to fight off a lingering wound.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.noAction,
        trigger: "Your turn starts and you have ongoing damage",
        additionalRows: (
          [*Effect*: Make a saving throw against the ongoing damage before you take the damage.],
        ),
      );

      #colbreak();

      = Intelligence

      #powers.power(
        title: "Arcane Senses",
        bonusTitle: "2 Intelligence | Level 2",
        description: "You refocus your eyes to see magic energy invisible to the untrained eye, learning how many magical creatures are nearby.",
        type: powers.powerType.encounter,
        range: [*Personal*],
        action: powers.actionType.minor,
        additionalRows: (
          [*Effect*: You make an Intelligence Skill Check and learn the number of elemental, fey, and shadow creatures that are within a number of squares of you equal to the check result. You don't learn the creatures' locations, but you do learn separate counts for each type.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Studied Casting",
        bonusTitle: "2 Intelligence | Level 2",
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
        title: "Otherworldly Lore",
        bonusTitle: "2 Intelligence | Level 2",
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
        title: "Root Understanding",
        bonusTitle: "2 Intelligence | Level 2",
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

      #powers.power(
        title: "Cave Sight",
        bonusTitle: "2 Intelligence | Level 2",
        description: "You close your eyes, projecting arcane awareness to give you a mental picture of the cavern ahead.",
        type: powers.powerType.daily,
        range: [*Close burst 20*],
        action: powers.actionType.minor,
        additionalRows: (
          [*Effect*: You learn the general layout of terrain features in the burst. You cannot sense through solid objects, such as cave walls, but you do sense around corners and into narrow gaps.

            Additionally, you can make a Wisdom Check to detect hidden creatures, objects, and traps as though you were within 10 squares of them.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Demonic Bargain",
        bonusTitle: "2 Intelligence | Level 6",
        description: "You call on a demonic entity to wreak greater destruction, but you tear part of your own mind in the process.",
        type: powers.powerType.encounter,
        traits: "Arcane, Psychic",
        range: "Personal",
        action: powers.actionType.free,
        trigger: "You roll damage and dislike the result.",
        additionalRows: (
          [*Effect*: You reroll the damage and must use the second result. You then take psychic damage equal to twice your level.],
        ),
      );

      #powers.power(
        title: "Experienced Arcana",
        bonusTitle: "2 Intelligence | Level 6",
        description: "You have discovered how to perform your magic rituals with fewer alchemical reagents than other magicians require.",
        type: powers.powerType.daily,
        range: "Personal",
        action: powers.actionType.free,
        trigger: "You are performing an Arcana technique of one-half your level or lower",
        additionalRows: (
          [*Effect*: If you make an check as part of the technique and dislike the result, you can reroll the check with a +4 power bonus and use either result.],
        ),
      );

      #powers.power(
        title: "Insightful Warning",
        bonusTitle: "2 Intelligence | Level 6",
        description: "As your foe unleashes its attack, you realize that you have read about this sort of danger and shout a warning to your friends.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.immediateInterrupt,
        trigger: "A creature you can see makes an attack roll for an area or a close attack that includes you as a target",
        additionalRows: (
          [*Effect*: You and each ally included as a target of the triggering attack gain a +2 power bonus to all defenses against it.],
        ),
      );

      #powers.power(
        title: "Warp in the Weave",
        bonusTitle: "2 Intelligence | Level 6",
        description: "You spend energy and tap into the web of magic that connects everything, ready to create a few temporary holes.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.immediateInterrupt,
        requirement: "You must have at least 1 healing surge.",
        trigger: "A creature uses a burst or blast power that includes you",
        additionalRows: (
          [*Effect*: You spend a healing surge but regain no hit points. The triggering burst or blast does not target you or your square.],
        ),
      );

      #powers.power(
        title: "Stonecunning",
        bonusTitle: "2 Intelligence | Level 6",
        description: "The subterranean world keeps few secrets from you.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.free,
        trigger: "You would make a Perception check underground",
        additionalRows: (
          [*Effect*: You make a Dungeoneering check in place of the Perception check.],
        ),
      );

      #colbreak();

      = Wisdom
      #powers.power(
        title: "Faith Healing",
        bonusTitle: "2 Wisdom | Level 2",
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

      #powers.power(
        title: "Healer’s Gift",
        bonusTitle: "2 Wisdom | Level 2",
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
        bonusTitle: "2 Wisdom | Level 2",
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
        title: "Stay Back",
        bonusTitle: "2 Wisdom | Level 2",
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
        title: "Dungeoneer's Guidance",
        bonusTitle: "2 Wisdom | Level 6",
        description: "Your survival skills step in to support an ally.",
        type: powers.powerType.encounter,
        range: "Personal",
        action: powers.actionType.immediateInterrupt,
        trigger: "An ally you can see and who can hear you makes an Acrobatics, Athletics, Dungeoneering, Nature, or Perception check and dislikes the result.",
        additionalRows: (
          [*Effect*: Make a Dungeoneering check. The triggering ally can use the result of your check in place of his or her own result.],
        ),
      );

      #powers.power(
        title: "Physician's Care",
        bonusTitle: "2 Wisdom | Level 6",
        description: "Your extensive training helps you get an ally back into the fight.",
        type: powers.powerType.encounter,
        traits: "Healing",
        range: "Melee 1",
        action: powers.actionType.standard,
        target: "You or one ally",
        additionalRows: (
          [*Effect*: The target can spend a healing surge.],
        ),
      );

      #powers.power(
        title: "Swift Recovery",
        bonusTitle: "2 Wisdom | Level 6",
        description: "You address a companion's most critical wounds to get him or her back into the battle.",
        type: powers.powerType.encounter,
        range: "Melee 1",
        action: powers.actionType.minor,
        target: "One ally",
        additionalRows: (
          [*Effect*: The target can use his or her second wind without taking an action to do so.],
        ),
      );

      #colbreak();

      = Charisma

      #powers.power(
        title: "Master Diplomat",
        bonusTitle: "2 Charisma | Level 2",
        description: "Catching a possible faux pas in what you were about to say, you quickly adjust your soothing words and flattery to work more magic than the most powerful spell.",
        type: powers.powerType.encounter,
        range: [*Personal*],
        action: powers.actionType.free,
        trigger: "You make a Charisma Check to persuade and dislike the result",
        additionalRows: (
          [*Effect*: Reroll the Charisma Check. You decide whether to make the reroll before the DM announces the result. You can use whichever result you prefer.],
        ),
        traits: none,
      )

      #powers.power(
        title: "Ominous Threat",
        bonusTitle: "2 Charisma | Level 2",
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
        title: "Soothing Words",
        bonusTitle: "2 Charisma | Level 2",
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
        title: "Serpent’s Tongue",
        bonusTitle: "2 Charisma | Level 2",
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
        title: "Confusing Blather",
        bonusTitle: "2 Charisma | Level 6",
        description: "You spew a stream of nonsense, leaving your enemies puzzled.",
        type: powers.powerType.encounter,
        range: "Close burst 1",
        action: powers.actionType.minor,
        target: "Each enemy in the burst",
        additionalRows: (
          [*Effect*: You make a Charisma check opposed by each target's passive Insight check. If the check succeeds against a target, that target cannot make opportunity attacks against you until the end of your next turn.],
        ),
      );

      #powers.power(
        title: "Faulty Memory",
        bonusTitle: "2 Charisma | Level 6",
        description: "You spin a web of lies that makes someone doubt his or her own recollection.",
        type: powers.powerType.encounter,
        range: "Ranged 10",
        action: powers.actionType.standard,
        target: "One creature that shares a language with you",
        additionalRows: (
          [*Effect*: You make a Bluff check opposed by an Insight check that the target makes as a free action. The target gains a +5 bonus to Insight if the target is unfriendly to the character, or a +10 bonus if the target is hostile. If your check succeeds, you make the target doubt its memory and believe your version of events.],
        ),
      );

      #powers.power(
        title: "Stirring Speech",
        bonusTitle: "2 Charisma | Level 6",
        description: "Reciting your allies' great deeds and talents, you fill them with the confidence they need to win a battle ahead.",
        type: powers.powerType.daily,
        range: "Close burst 5",
        action: powers.actionType.standard,
        requirement: "You must be taking a short rest.",
        target: "Each ally who can hear you in the burst",
        additionalRows: (
          [*Effect*: Until the end of the next encounter, each target gains a +1 bonus to attack rolls and saving throws while not bloodied.],
        ),
      );


    ]

    #pagebreak();

    = Level 6
    #columns(3)[
      HISTORY!
    ]
  ]
}
