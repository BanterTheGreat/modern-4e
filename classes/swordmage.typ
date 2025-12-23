#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Swordmage";

#let swordmagePage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: ["If my magic fails me, my blade will not."],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (classes.armorProf.cloth, classes.armorProf.leather),
        weaponProficiencies: (
          classes.weaponProf.simpleMelee,
          classes.weaponProf.militaryLightBlade,
          classes.weaponProf.militaryHeavyBlade,
        ),
        implementProficiencies: (classes.implementProf.lightBlade, classes.implementProf.heavyBlade),
      );

      #classes.defensesAndHealth(fortitude: 11, will: 13, reflex: 15, health: 25, healthOnLevelUp: 6, healingSurges: 8)

      #classes.abilities(
        mainAbilities: "Intelligence",
        extraAbilities: ("Constitution", "Strength"),
        class: className,
      );

      #colbreak();
      = Swordbond
      By spending 1 hour of meditation with a chosen light or heavy blade, you forge a special bond with the weapon. As a standard action, you can call your bonded weapon to your hand from up to 10 squares away.

      You can forge a bond with a different blade using the same meditation process (for instance, if you acquire a new blade that has magical abilities). If you forge a bond with a different blade, the old bond dissipates.

      If your bonded weapon is broken or damaged, you can spend 1 hour of meditation to recreate the weapon from a fragment. (This process automatically destroys any other fragments of the weapon in existence, so you can't use it to create multiple copies of a broken weapon.)

      = Spellwarden Warden
      While you are conscious and wielding either a light blade or a heavy blade, you maintain a field of magical force around you.
      This field provides a +1 bonus to AC, or a +3 bonus if you are wielding a blade in one hand and have your other hand free (not carrying a shield, an off-hand weapon, a two-handed weapon, or anything else).

      = Spellwarden Aegis
      You can place a magical warding upon a foe, allowing you to respond to the foe's attacks against your allies with a counterassault or a timely protection. Choose one Aegis and gain its benefit.

      #colbreak();

      #theme.choiceBox("Aegis of Assault")
      You can use the Aegis of assault power to teleport to the side of the attacker and respond with an attack of your own.

      #powers.power(
        title: "Aegis of Assault",
        type: powers.powerType.at-will,
        action: powers.actionType.minor,
        range: [*Close* burst 2],
        target: "One creature in the burst",
        traits: "Arcane, Teleportation",
        additionalRows: (
          [
            *Effect:* You mark the target. The target remains marked until you use this power against another target. If you mark other creatures using other powers, the target is still marked. A creature can be subject to only one mark at a time. A new mark supersedes a mark that was already in place.

            If your marked target makes an attack that doesn't include you as a target, it takes a –2 penalty to attack rolls. If that attack hits and the marked target is within 10 squares of you, you can use an immediate reaction to teleport to a square adjacent to the target and make a melee basic attack against it. If no unoccupied space exists adjacent to the target, you can't use this immediate reaction.
          ],
        ),
      );

      #theme.choiceBox("Aegis of Ensnarement")
      You can use the Aegis of ensnarement power to teleport a marked creature to any space adjacent to you.

      #powers.power(
        title: "Aegis of Ensnarement",
        type: powers.powerType.at-will,
        action: powers.actionType.minor,
        range: [*Close* burst 2],
        target: "One creature in the burst",
        traits: "Arcane, Teleportation",
        additionalRows: (
          [
            *Effect:* You mark the target. The target remains marked until you use this power against another target. If you mark another creature using other powers, the target is still marked.

            Until the mark ends, if the target makes any attack that does not include you as a target, it takes a -2 penalty to the attack roll.

            If a target marked by this power is within 10 squares of you when it hits with an attack that does not include you as a target, you can use an immediate reaction after the target's entire attack is resolved to teleport the target to any space adjacent to you. In addition, the target grants combat advantage to all creatures until the end of your next turn. If no unoccupied space exists adjacent to you, you can't use this immediate reaction, and the target doesn't grant combat advantage as a result of this effect.
          ],
        ),
      );

      #colbreak();

      #theme.choiceBox("Aegis of Shielding")
      You can use the Aegis of shielding power to reduce the damage dealt to an ally by an attack.

      #powers.power(
        title: "Aegis of Shielding",
        type: powers.powerType.at-will,
        action: powers.actionType.minor,
        range: [*Close* burst 2],
        target: "One creature in the burst",
        traits: "Arcane, Teleportation",
        additionalRows: (
          [
            *Effect:* You mark the target. The target remains marked until you use this power against another target. If you mark other creatures using other powers, the target is still marked. A creature can be subject to only one mark at a time. A new mark supersedes a mark that was already in place.

            If your marked target makes an attack that doesn't include you as a target, it takes a –2 penalty to attack rolls. If that attack hits and the marked target is within 10 squares of you, you can use an immediate interrupt to reduce the damage dealt by that attack to any one creature by an amount equal to 5 + your *Constitution* modifier.
            At 11th level, reduce the damage dealt by 10 + your *Constitution* modifier. At 21st level, reduce the damage dealt by 15 + your *Constitution* modifier.
          ],
        ),
      );

      = Powers
      You may choose 2 At-Will, 1 Encounter and 2 Daily #className Powers.

      = Feats
      You gain access to the #className feat list
    ]

    #pagebreak()

    #set page(columns: 1)

    #classes.powerLinks(className: className);

    #pagebreak()

    #align(center)[
      = Heroic #className Feats
    ]

    #columns(2)[
      #theme.choiceBox("Improved Spellwarden Shielding");
      While you are wearing cloth armor, leather armor, or no armor, the bonus to AC from your Swordmage Warding increases by 1.

      #theme.choiceBox("Ensnarement")
      *Requirements: Aegis of Ensnarement* #linebreak();
      When you use aegis of ensnarement to teleport an enemy, that enemy is also slowed until the end of your next turn.

      #theme.choiceBox("Retributive Shield")
      *Requirements: Aegis of Shielding* #linebreak();
      When you use your aegis of shielding power, you gain a +2 bonus to the next attack roll made before the end of your next turn against the foe that triggered the aegis of shielding immediate interrupt.

      #theme.choiceBox("Escalating Assault")
      *Requirements: Aegis of Assault* #linebreak();
      Each time you make a melee basic attack granted by your aegis of assault power, you gain a cumulative +1 bonus on future attack rolls made for the melee basic attacks granted by this power (up to a maximum bonus of +3). This bonus resets to 0 at the end of the encounter or if you are rendered unconscious.

      #colbreak();

      #theme.choiceBox("Aegis Accuracy")
      If a target marked by your Swordmage Aegis makes an attack and doesn't include you as a target, you gain a +1 bonus to attack rolls against the marked creature until the end of your next turn.

      #theme.choiceBox("Aegis Vitality")
      Whenever a creature marked by your Swordmage Aegis makes an attack that does not include you as a target, you gain 3 temporary hit points.
      Increase the temporary hit points to 5 at 11th level, and to 8 at 21st level.

      #theme.choiceBox("Combat Casting")
      When you use a melee swordmage attack power and hit an enemy, your ranged and area swordmage attack powers don't provoke opportunity attacks until the end of your next turn.

      #theme.choiceBox("Extended Teleportation")
      Whenever you teleport with a swordmage or swordmage paragon path power, add 1 to the distance you can teleport.

      #theme.choiceBox("Improved Swordbond")
      You can call your bonded weapon to your hand from up to 20 squares away with a minor action.
    ]
  ]
}
