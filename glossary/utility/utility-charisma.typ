#import "../../helpers/powers.typ" as powers;

#let charismaUtilities() = {
  return [
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

    #powers.power(
      title: "Demoralize Foe",
      bonusTitle: "2 Charisma | Level 6",
      description: "You spit an ugly threat at your adversary, making it think twice before it attacks you.",
      type: powers.powerType.encounter,
      traits: "Fear",
      range: "Melee 1",
      action: powers.actionType.free,
      trigger: "You hit an enemy with a melee attack",
      target: "The enemy you hit",
      additionalRows: (
        [*Effect*: The target takes a –2 penalty to attack rolls against you until the end of your next turn.],
      ),
    );

    #powers.power(
      title: "Everybody Move",
      bonusTitle: "2 Charisma | Level 6",
      description: "You inspire terror in your enemies.",
      type: powers.powerType.encounter,
      traits: "Fear",
      range: "Close blast 3",
      action: powers.actionType.minor,
      target: "Each enemy in the blast",
      additionalRows: (
        [*Effect*: You push each target 1 square, but not into hindering terrain.],
      ),
    );

    #powers.power(
      title: "Stall Tactics",
      bonusTitle: "3 Charisma | Level 10",
      description: "Your fast talking causes your enemies to hesitate for a crucial moment.",
      type: powers.powerType.daily,
      range: "Ranged sight",
      action: powers.actionType.free,
      trigger: "You roll initiative",
      target: "Each enemy you can see",
      additionalRows: (
        [*Effect*: Each target's initiative is reduced by 10.],
      ),
    );

    #powers.power(
      title: "Befriend",
      bonusTitle: "3 Charisma | Level 10",
      description: "You know the right things to say to make people like you.",
      type: powers.powerType.encounter,
      range: "Ranged 5",
      action: powers.actionType.minor,
      target: "One nonhostile creature that has Intelligence 5 or higher",
      additionalRows: (
        [*Effect*: Until the end of the encounter, you gain a +5 power bonus to Bluff checks and Diplomacy checks against the target.],
      ),
    );

    #powers.power(
      title: "Cry for Mercy",
      bonusTitle: "3 Charisma | Level 10",
      description: "With pleading words and gestures, you discourage your enemies from striking down the wounded.",
      type: powers.powerType.encounter,
      range: "Close burst 5",
      action: powers.actionType.minor,
      target: "You or one ally in the burst; the target must be bloodied",
      additionalRows: (
        [*Effect*: Until the end of your next turn or until the target is no longer bloodied, the target's movement does not provoke opportunity attacks, and the target gains a +4 power bonus to all defenses.],
      ),
    );

    #powers.power(
      title: "Noble Sacrifice",
      bonusTitle: "3 Charisma | Level 10",
      description: "You demand that an enemy face you to distract it from your wounded friend, who is inspired by your sacrifice.",
      type: powers.powerType.encounter,
      traits: "Charm",
      range: "Close burst 3",
      action: powers.actionType.immediateInterrupt,
      trigger: "An enemy within 3 squares of you makes a melee attack roll against your bloodied ally adjacent to you",
      target: "The triggering enemy",
      additionalRows: (
        [*Effect*: The target's attack roll is against you instead of the bloodied ally. If the attack hits you, the ally gains temporary hit points equal to your Charisma modifier.],
      ),
    );

    #powers.power(
      title: "Snap Out of It",
      bonusTitle: "3 Charisma | Level 10",
      description: "A smack across the face brings your ally back to his or her senses.",
      type: powers.powerType.encounter,
      range: "Melee touch",
      action: powers.actionType.minor,
      target: "One ally subject to a dazing, dominating, or stunning effect that a save can end",
      additionalRows: (
        [*Effect*: The target makes a saving throw against the effect.],
      ),
    );
  ]
}
