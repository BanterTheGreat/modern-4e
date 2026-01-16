#import "../../helpers/powers.typ" as powers;

#let strengthUtilities() = {
  return [
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
        [*Effect*: You move your speed + 4. During this movement, you ignore difficult terrain and gain a +5 power bonus to Strength checks you make as part of the move.],
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

    #powers.power(
      title: "Incredible Stride",
      bonusTitle: "3 Strength | Level 10",
      description: "You move with amazing swiftness.",
      type: powers.powerType.daily,
      traits: "Stance",
      range: "Personal",
      action: powers.actionType.minor,
      additionalRows: (
        [*Effect*: Until the stance ends, you gain a +4 power bonus to speed.],
      ),
    );
  ]
}
