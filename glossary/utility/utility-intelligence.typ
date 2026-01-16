#import "../../helpers/powers.typ" as powers;

#let intelligenceUtilities() = {
  return [
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
      trigger: "You would make a Wisdom check underground to perceive your surroundings",
      additionalRows: (
        [*Effect*: You make an Intelligence check in place of the Wisdom check.],
      ),
    );

    #powers.power(
      title: "Swift Recovery",
      bonusTitle: "2 Intelligence | Level 6",
      description: "When your ally struggles to recall an important fact, you supply a story to nudge him or her onto the right path.",
      type: powers.powerType.encounter,
      range: "Close burst 5",
      action: powers.actionType.immediateReaction,
      trigger: "An ally within 5 squares of you makes a knowledge check and dislikes the result",
      target: "The triggering ally in the burst",
      additionalRows: (
        [*Effect*: The target rerolls the knowledge check and uses either result.],
      ),
    );

    #powers.power(
      title: "City Dweller",
      bonusTitle: "2 Intelligence | Level 6",
      description: "Your familiarity with cities tells you what will support your weight and helps you perceive things that are out of place.",
      type: powers.powerType.daily,
      range: "Personal",
      action: powers.actionType.free,
      trigger: "You would make an Dexterity, Strength or Wisdom check in an urban environment while not trying to recall knowledge",
      additionalRows: (
        [*Effect*: You make a Streetwise check in place of the Dexterity, Strength or Wisdom check.],
      ),
    );

    #powers.power(
      title: "Slow Pursuit",
      bonusTitle: "2 Intelligence | Level 6",
      description: "You knock over obstacles, take difficult paths, drop rubbish, and do anything else you can think of to slow your enemies' pursuit.",
      type: powers.powerType.encounter,
      range: "Personal",
      action: powers.actionType.move,
      requirement: "You must be in an urban environment",
      additionalRows: (
        [*Effect*: You move your speed. At one point during the movement, you create an area of difficult terrain in a close blast 3. The difficult terrain lasts until the end of the encounter.],
      ),
    );


    #powers.power(
      title: "Trap Sense",
      bonusTitle: "3 Intelligence | Level 10",
      description: "As the trap springs, your experience in dealing with such hazards lets you step aside and leave a foe at the trap's mercy.",
      type: powers.powerType.encounter,
      range: "Personal",
      action: powers.actionType.immediateInterrupt,
      trigger: "A trap or a hazard makes a melee or a ranged attack roll against you",
      additionalRows: (
        [*Effect*: You gain a +4 power bonus to all defenses against the attack. If the attack misses you, the trap repeats the attack as a free action against an enemy adjacent to you.],
      ),
    );

    #powers.power(
      title: "Lessons of History",
      bonusTitle: "3 Intelligence | Level 10",
      description: "As you watch your allies, you draw upon past lessons to shout out a few pointers.",
      type: powers.powerType.daily,
      range: "Close burst 5",
      action: powers.actionType.minor,
      requirement: "You must have at least 1 healing surge.",
      target: "Each ally in the burst",
      additionalRows: (
        [*Effect*: You spend a healing surge but regain no hit points. Each target can regain one expended encounter utility power of level 10 or lower.],
      ),
    );

    #powers.power(
      title: "Tactician's Measure",
      bonusTitle: "3 Intelligence | Level 10",
      description: "The enemies' movements are similar to those used in a skirmish you once studied. You use knowledge of it to outmaneuver a foe.",
      type: powers.powerType.encounter,
      range: "Melee 1",
      action: powers.actionType.immediateReaction,
      trigger: "An enemy enters a square adjacent to you or to an ally adjacent to you",
      target: "You or the ally",
      additionalRows: (
        [*Effect*: The target shifts 1 square and gains a +2 bonus to all defenses until the end of your next turn.],
      ),
    );

    #powers.power(
      title: "Navigate Crowds",
      bonusTitle: "3 Intelligence | Level 10",
      description: "A life spent in the city trained you to maneuver through crowds.",
      type: powers.powerType.encounter,
      range: "Personal",
      action: powers.actionType.move,
      additionalRows: (
        [*Effect*: You shift your speed. During this movement, you can move through enemies' spaces.],
      ),
    );
  ]
}
