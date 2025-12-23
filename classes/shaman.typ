#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Shaman";

#let shamanPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: ["I am the voice of the wilds, the spirit's chosen."],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (classes.armorProf.cloth, classes.armorProf.leather),
        weaponProficiencies: (classes.weaponProf.simpleMelee, classes.weaponProf.simpleRanged),
        implementProficiencies: (classes.implementProf.staff, classes.implementProf.totem),
      );

      #classes.defensesAndHealth(fortitude: 12, will: 16, reflex: 11, health: 22, healthOnLevelUp: 5, healingSurges: 7)

      #classes.abilities(
        mainAbilities: "Wisdom",
        extraAbilities: ("Constitution", "Intelligence"),
        class: className,
      );

      #colbreak();
      = Companion Spirit
      As part of your initiation as a shaman, you acquired a spirit companion, a primal spirit that accompanies and assists you.

      You gain the Call Spirit Companion power, which allows you to call this spirit to your side. Your spirit companion must be present to use Shaman powers with the Spirit keyword.

      == The Spirit Keyword
      Spirit is an effect type. You can use a power with the Spirit keyword only if your spirit companion is present in the encounter. If a Spirit power includes “Spirit” in its range, you determine line of sight and line of effect from the spirit companion's space, which is the power's origin square, rather than your own.

      #powers.power(
        title: "Call Spirit Companion",
        action: powers.actionType.minor,
        type: powers.powerType.at-will,
        traits: "Conjuration, Primal",
        range: [*Close* burst 20 (50 at 21st level)],
        requirement: "Your spirit companion must not be present.",
        additionalRows: (
          [
            *Effect:* You conjure your spirit companion in an unoccupied square in the burst. The spirit lasts until you fall unconscious or until you dismiss it as a minor action.

            The spirit occupies 1 square. Enemies cannot move through its space, but allies can. When you take a move action, you can also move the spirit a number of squares equal to your speed.

            The spirit can be targeted by melee or ranged attacks, although it lacks hit points. Whenever your spirit companion is targeted by a melee or ranged attack you make a saving throw, with a +2 bonus if the attacker is a minion. On a failure, the spirit disappears, and you take damage equal to 5 + one-half your level. Otherwise, the spirit is unaffected by the attack.
          ],
        ),
      )

      In addition, choose one of the following Companion Spirit options. Your choice provides your spirit companion with an aura and at-will opportunity action attack. Your choice also provides bonuses to certain Shaman powers, as detailed in those powers.

      #theme.choiceBox("Elemental Spirit")
      You draw on elemental spirits inhabiting the earth to give you strength and fuel the raw power of your evocations.

      == Spirit Boon
      Your spirit companion has an aura 1, expanding to an aura 2 at 21st level. Your allies gain a +2 bonus to saving throws while within the aura. In addition, if your spirit companion is not present at the start of your turn, you can summon it once during that turn as a free action.

      == Spirit Attack
      You gain the Spirit’s Wrath power

      #powers.power(
        title: "Spirit’s Wrath",
        description: "Burning hatred drives your spirit to smash into your enemy.",
        action: powers.actionType.opportunity,
        type: powers.powerType.at-will,
        traits: "Elemental, Implement, Primal, Spirit, Varies",
        range: [*Melee* spirit 1],
        trigger: "An enemy leaves a square adjacent to your spirit companion without shifting.",
        offenseStat: "Wisdom",
        defenseStat: "Reflex",
        target: "The triggering enemy",
        additionalRows: (
          [
            *Hit:* 1d6 + Wisdom modifier acid, cold, fire, lightning, or thunder damage, and the target grants combat advantage until the end of your next turn.

            *Level 21:* 2d6 + Wisdom modifier damage.
          ],
        ),
      )

      #theme.choiceBox("Protector Spirit")
      You draw on the strength of the bear or a similar protective spirit to defend and bolster your allies.

      == Spirit Boon
      Your spirit companion has an aura 1, expanding to an aura 2 at 21st level. Your allies regain additional hit points equal to your *Constitution* modifier whenever they recover hit points within the aura.

      In addition, you may use your *Constitution* modifier in place of your Dexterity or Intelligence modifier to determine your AC.

      == Spirit Attack
      You gain the Spirit's Shield power.

      #powers.power(
        title: "Spirit’s Shield",
        description: "Your spirit companion bats at a foe that drops its guard, and a nearby draws healing energy from the spirit.",
        action: powers.actionType.opportunity,
        type: powers.powerType.at-will,
        traits: "Healing, Implement, Primal, Spirit",
        range: [*Melee* spirit 1],
        trigger: "An enemy leaves a square adjacent to your spirit companion without shifting.",
        offenseStat: "Wisdom",
        defenseStat: "Reflex",
        target: "The triggering enemy",
        additionalRows: (
          [
            *Hit:* Wisdom modifier + enhancement bonus damage.
          ],
          [
            *Effect:* One ally within 5 squares of your spirit companion regains hit points equal to your Wisdom modifier.

            *Level 21:* One ally within 10 squares of your spirit companion. The damage and healing are equal to twice your Wisdom modifier.
          ],
        ),
      )

      #theme.choiceBox("Stalker Spirit")
      You call on the stealth and cunning of the panther or a similar stalking spirit to empower and position your allies.

      == Spirit Boon
      Your spirit companion has an aura 1, expanding to an aura 2 at 21st level. Your allies gains a bonus to damage rolls equal to your *Intelligence* modifier against bloodied enemies within the aura.

      == Spirit Attack
      You gain the Spirit’s Fangs power

      #powers.power(
        title: "Spirit’s Fangs",
        description: "When an enemy drops its guard, your spirit companion leaps on it, claws and fangs bared.",
        action: powers.actionType.opportunity,
        type: powers.powerType.at-will,
        traits: "Implement, Primal, Spirit",
        range: [*Melee* spirit 1],
        trigger: "An enemy leaves a square adjacent to your spirit companion without shifting.",
        offenseStat: "Wisdom",
        defenseStat: "Reflex",
        target: "The triggering enemy",
        additionalRows: (
          [
            *Hit:* 1d10 + Wisdom modifier damage. #linebreak();
            *Level 21:* 2d10 + Wisdom modifier damage.
          ],
        ),
      )

      #theme.choiceBox("Watcher Spirit")
      You call on the swiftness and piercing vision of a hawk or similar bird spirit to incite and oversee your allies.

      == Spirit Boon
      Your spirit companion has an aura 1, expanding to an aura 2 at 21st level. Enemies within the aura do not benefit from partial concealment or cover, though they still benefit from total concealment or superior cover. In addition, your allies can treat any enemy within the aura as their nearest enemy.

      == Spirit Attack
      You gain the Spirit's Prey power.

      #powers.power(
        title: "Spirit’s Prey",
        description: "Your spirit companion lashes out at a moving foe, and an ally uses the distraction to fire on that enemy.",
        action: powers.actionType.opportunity,
        type: powers.powerType.at-will,
        traits: "Primal, Spirit",
        range: [*Melee* spirit 1],
        trigger: "An enemy leaves a square adjacent to your spirit companion without shifting.",
        target: "The triggering enemy",
        additionalRows: (
          [
            *Effect:* One ally within 10 squares of your spirit companion can make a basic attack against the target as a free action. This basic attack deals extra damage equal to your *Dexterity* modifier.

            *Level 21:* One ally within 20 squares.
          ],
        ),
      )

      #theme.choiceBox("World Speaker Spirit")
      You call on the wisdom and patience of a giant turtle or similar spirit of longevity to guide and protect your allies.

      == Spirit Boon
      Your spirit companion has an aura 1, expanding to an aura 2 at 21st level. Any ally who provokes an opportunity attack from an enemy within the aura gains a bonus equal to your *Constitution* modifier to all defenses against that attack.
      In addition, you may use your *Constitution* modifier in place of your *Dexterity* or *Intelligence* modifier to determine your AC.

      == Spirit Attack
      You gain the World Speaker's Command power.

      #powers.power(
        title: "World’s Speaker Command",
        description: "The voices and growls of primal spirits cascade on your foe, stopping it in its tracks.",
        action: powers.actionType.opportunity,
        type: powers.powerType.at-will,
        traits: "Implement, Primal, Spirit",
        range: [*Melee* spirit 1],
        trigger: "An enemy leaves a square adjacent to your spirit companion without shifting.",
        offenseStat: "Wisdom",
        defenseStat: "Will",
        target: "The triggering enemy",
        additionalRows: (
          [
            *Hit:* The target stops moving and must use a different action to resume moving. #linebreak();
          ],
          [
            *Effect:* You can slide one other creature within 3 squares of your spirit companion 1 square.

            *Level 21:* You can slide one other creature within 5 squares of your spirit companion up to 2 squares.
          ],
        ),
      )

      = Healing Spirit
      You gain the healing spirit power. Through this power, you grant your allies additional resilience with a short evocation of primal power.

      #powers.power(
        title: "Healing Spirit",
        action: powers.actionType.minor,
        type: powers.powerType.encounter,
        traits: "Healing, Primal",
        range: [*Close* burst 5 (10 at 11th level, 15 at 21st level)],
        isSpecial: true,
        target: "You or one ally in the burst",
        additionalRows: (
          [
            *Effect:* The target can spend a healing surge. If the target does so, one ally adjacent to your spirit companion, other than the target, regains hit points equal to your Wisdom modifier.

            *Level 6:* +1d6 hit points. #linebreak();
            *Level 11:* +2d6 hit points. #linebreak();
            *Level 16:* +3d6 hit points. #linebreak();
            *Level 21:* one ally within 2 squares of your spirit companion other than the target regains Wisdom + 4d6 hit points. #linebreak();
            *Level 26:* one ally within 2 squares of your spirit companion other than the target regains Wisdom + 5d6 hit points.
          ],
          [
            *Special:* You can use this power twice per encounter, but only once per round. At 16th level, you can use this power three times per encounter, but only once per round.
          ],
        ),
      )

      #colbreak();

      = Primal Attunement
      You are attuned to various parts of nature, choose 3 of the powers below.

      #theme.choiceBox("Air Spirit")
      #powers.power(
        title: "Air Spirit",
        description: "With a flick of your fingers, the air stirs before you to lift objects with ease.",
        action: powers.actionType.minor,
        type: powers.powerType.at-will,
        traits: "Conjuration, Primal",
        range: [*Ranged* 5 (10 at 21st level)],
        additionalRows: (
          [
            *Effect:* You conjure an air spirit in an unoccupied square within range. The spirit lasts until the end of your next turn or until you use this power again. When the spirit appears, it can pick up or manipulate an object weighing 20 pounds or less.

            As a minor action, you cause the spirit to pick up or manipulate a different object of the specified weight. As a move action, you move the spirit up to 5 squares. As a free action, you cause the spirit to drop an object it is holding.

            As a minor action, you cause the spirit to shed bright light in a 4-square radius. You can extinguish this light as a free action.
          ],
          [
            *Sustain Minor:* The spirit persists until the end of your next turn.
          ],
        ),
      )

      #theme.choiceBox("Call the Spirits")
      #powers.power(
        title: "Call the Spirits",
        description: "The greatest of the primal spirits boast a level of power that you can only dream of one day gaining access to. However, even the least of the spirits can prove useful in your everyday life.",
        action: powers.actionType.standard,
        type: powers.powerType.at-will,
        traits: "Primal",
        range: [*Close* burst 5 (10 at 21st level)],
        additionalRows: (
          [
            *Effect:* You use this power to produce one of the following effects:

            - Cause one candle, torch, lantern, or campfire in the burst to burn more brightly, increasing the radius of its illumination by 1.
            - Open or close a door in the burst that is not latched, locked, or stuck.
            - Create a light gust of wind that can blow small, unattended objects in the burst that weigh less than 1 pound to any other location in the burst.
            - Create sparks from your fingertips that can light one candle, torch, or campfire in the burst.
          ],
          [
            *Special:* Nothing you do with this power can deal damage or hinder another creature's actions. This power cannot duplicate the effect of any other power.
          ],
        ),
      )

      #theme.choiceBox("Senses of the Wild");
      #powers.power(
        title: "Senses of the Wild",
        description: "You close your eyes, so that you might sense the upheavals in the balance of nature that otherwise cannot be seen.",
        action: powers.actionType.minor,
        type: powers.powerType.at-will,
        traits: "Primal",
        range: [*Close* burst 5 (10 at 21st level)],
        additionalRows: (
          [
            *Effect:* You use this power to produce one of the following effects:

            - Automatically detect the presence of a disease or a diseased plant or creature in the burst.
            - Detect the presence or absence of a type of mundane plant or animal of your choice in the burst.
            - Until the end of the current turn, gain a +5 power bonus to checks to detect poison or hazards that deal poison damage in the burst.
            - Sense the presence of corpses in the burst.
          ],
        ),
      )

      #theme.choiceBox("Verdant Touch")
      #powers.power(
        title: "Verdant Touch",
        description: "You lay your hands on the flora that surrounds you, granting it a momentary semblance of life as it shifts and grows at your command.",
        action: powers.actionType.minor,
        type: powers.powerType.encounter,
        traits: "Primal",
        range: [*Close* burst 1 (2 at 11th level, 3 at 21st level)],
        additionalRows: (
          [
            *Effect:* You can turn difficult terrain in the burst into normal terrain until the end of your next turn, but only if the terrain is composed of grass, underbrush, vines, or similar growth and was not created by a power.

            You can also use this power to cause plants in the burst to blossom with flowers and to cause small plants or grass in the burst to begin growing in barren terrain.
          ],
        ),
      );

      #colbreak();
      #theme.choiceBox("Vine Rope")
      #powers.power(
        title: "Vine Rope",
        description: "With a twist of your hands, you draw a fast-growing vine from the ground before you, then watch as it weaves itself into a resilient rope.",
        action: powers.actionType.minor,
        type: powers.powerType.at-will,
        traits: "Primal",
        range: [*Personal*],
        additionalRows: (
          [
            *Effect:* You draw a vine from the ground that is up to 50 feet in length. The vine functions as a silk rope and lasts until the end of the encounter or until you use this power again. You can cause the vine to vanish as a minor action.

            *Level 11:* The vine is up to 500 feet in length. #linebreak();
            *Level 21:* The vine is up to 5000 feet in length.
          ],
        ),
      );

      = Shadow Walk
      On your turn, if you move at least 3 squares away from where you started your turn, you gain concealment until the end of your next turn.

      = Powers
      You may choose 2 At-Will, 1 Encounter and 2 Daily #className Powers.

      = Feats
      You gain access to the #className feat list

      #colbreak();
      #classes.powerLinks(className: className);
    ]

    #pagebreak()

    #set page(columns: 1)


    #pagebreak()

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Bloodthirsty Spirit")
      *Requirements: Watcher Spirit* #linebreak();
      Your Spirit's Prey power may grant an ally a charge attack in place of a basic attack. The ally making the charge attack gains a power bonus to their speed during the charge equal to your Dexterity modifier.
      
      #theme.choiceBox("Intolerable Command")
      *Requirements: World Speaker Spirit* #linebreak();
      Creatures hit by your World Speaker's Command power take psychic damage equal to your Constitution modifier and are additionally deafened and slowed until the end of your next turn. Your World Speaker's Command power gains the Psychic keyword.

      #theme.choiceBox("Invigorating Spirit")
      Whenever you use Healing Spirit, each ally adjacent to your spirit companion can shift 1 square as a free action. At 21st level and above, each ally may shift up to 2 squares as a free action instead.

      #theme.choiceBox("Mobile Spirit")
      Whenever you take a move action, you can also move your spirit companion a number of squares equal to your speed + 4. At 11th level and above, this increases to your speed + 5, and at 21st level and above, this increases to your speed + 6.

      #theme.choiceBox("Precise Fangs")
      *Requirements: Stalker Spirit* #linebreak();
      Your Spirit's Fangs power deals extra damage equal to your Intelligence modifier and deals half damage on a miss.

      #theme.choiceBox("Protector Spirit Adept")
      Your allies gain a +1 power bonus to all defenses while within the spirit boon aura of your spirit companion.

      #theme.choiceBox("Protector's Shield")
      *Requirements: Protector Spirit* #linebreak();
      When you hit with your spirit's shield power, the attack instead deals 1d8 + your Wisdom modifier damage. At 21st level and above, this increases to 2d8 + your Wisdom modifier damage.

      #colbreak();

      #theme.choiceBox("Rejuvenating Spirit")
      When you use Healing Spirit, the target can make a saving throw.

      #theme.choiceBox("Resilient Spirit")
      Your spirit companion gains a +2 bonus to all defenses.

      #theme.choiceBox("Retributive Spirit")
      Whenever your spirit companion is destroyed, the creature that destroyed it takes a –2 penalty to all defenses until the end of your next turn.

      #theme.choiceBox("Revelation of the Spirit")
      *Requirements: Watcher Spirit* #linebreak();
      Enemies hit by your Shaman spirit attacks cannot benefit from partial cover or concealment (though they still benefit from superior cover or total concealment) until the end of your next turn.

      #theme.choiceBox("Sentinel Spirit")
      *Requirements: Protector or Watcher Spirit* #linebreak();
      Allies gain a +2 bonus to attack rolls when making opportunity attacks while within the spirit boon aura of your spirit companion.
    ]
  ]
}
