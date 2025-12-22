#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Rogue";

#let roguePage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: [ _TODO_
        #linebreak()
        #text(size: 10pt)[Martial Striker]],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (classes.armorProf.cloth, classes.armorProf.leather, classes.armorProf.lightShield),
        weaponProficiencies: (
          classes.weaponProf.dagger,
          classes.weaponProf.handCrossbow,
          classes.weaponProf.shortSword,
          classes.weaponProf.sling,
        ),
        implementProficiencies: (),
      );

      #classes.defensesAndHealth(fortitude: 12, will: 12, reflex: 15, health: 22, healthOnLevelUp: 5, healingSurges: 6)

      #classes.abilities(
        mainAbilities: "Dexterity",
        extraAbilities: ("Constitution", "Strength", "Charisma"),
        class: className,
      );

      #colbreak();
      = First Strike
      At the start of every encounter, you have combat advantage against any creatures that have not yet acted in that encounter.

      = Sneak Attack
      When you make an attack with a light blade, a hand crossbow, a shortbow, or a sling and hit an enemy granting combat advantage to you, that enemy takes extra damage based on your level. You can deal this extra damage only once per turn.


      #table(
        columns: (1fr, 1fr),
        stroke: 0.5pt + rgb("#D4C4A0"),
        align: left,
        fill: (col, row) => theme.defaultTableStyle()(col, row),
        inset: 4pt,
        [*Level*], [*Extra Damage*],
        [1–10], [2d6],
        [11–20], [3d6],
        [21–30], [5d6],
      )

      = Rogue Tactics
      You gain one of the benefits described below, depending on your choice of Scoundrel Tactics. Your choice also provides additional benefits to certain scoundrel powers, as detailed in those powers' descriptions.

      #theme.choiceBox("Artful Dodger");
      You gain a bonus to AC against opportunity attacks. The bonus equals your *Charisma*.

      #theme.choiceBox("Brutal Scoundrel");
      You gain a bonus to Sneak Attack damage. The bonus equals your *Strength*.

      #theme.choiceBox("Cunning Sneak");
      You don't take a penalty to checks to sneak or hide for moving more than 2 squares, and you take a –5 penalty instead of a -10 penalty to Stealth checks for running.

      If you end your movement at least 3 squares away from your starting position, you can make a check to sneak or hide to become hidden if you have any concealment or any cover, except for cover provided by intervening allies.

      #block(
        [
          #theme.choiceBox("Ruthless Ruffian");
          You are proficient with the club and the mace, and you can use those weapons with Sneak Attack or any rogue power or rogue paragon path power that normally requires a light blade. If you use a club or a mace to deliver an attack that has the rattling keyword, add your *Strength* to the damage roll.
        ],
        breakable: false,
      );

      = Rogue Weapon Talent
      Choose one of the options below:

      #theme.choiceBox("Rogue Weapon Talent");
      You gain a +1 bonus to weapon attack rolls with daggers.

      #theme.choiceBox("Sharpshooter Talent");
      You gain a +1 bonus to either crossbows or slings.

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
      #theme.choiceBox("Press the Advantage");
      *Requirements: 3 Charisma* #linebreak();
      If you score a critical hit while you have combat advantage, you gain combat advantage against the target until the end of your next turn.

      #theme.choiceBox("Speedy Response");
      If you are hit by an opportunity attack while moving, you gain a +1 bonus to speed for that move. This benefit is cumulative if you are hit multiple times.

      #theme.choiceBox("Surprising Charge");
      When you make a charge attack against a target that is granting combat advantage to you, the attack deals 1[W] extra damage if you hit with a light blade.

      #theme.choiceBox("Dirty Fighting");
      You gain a +4 bonus to melee weapon damage rolls against surprised enemies.

      #theme.choiceBox("Into the Fray");
      During the surprise round and the first round of an encounter, you gain a +1 bonus to your speed and to your melee attack rolls.

      #theme.choiceBox("Opportunity Knocks");
      Whenever you hit with an opportunity attack, or when an enemy misses you with an opportunity attack, the enemy you hit or the enemy that missed you grants combat advantage to you until the end of your next turn.

      #theme.choiceBox("Risky Shift");
      Whenever you shift, you can shift 1 additional square. If you do so, you grant combat advantage until the start of your next turn.

      #theme.choiceBox("Two-Fisted Shooter");
      You can treat the hand crossbow as an off-hand weapon, and you can reload it one-handed as a free action. When you score a critical hit and have a loaded hand crossbow in your off hand, you can make a ranged basic attack with that weapon as a free action.

      #theme.choiceBox("Versatile Duelist");
      You gain proficiency with all one-handed, military heavy blades. If a rogue power requires you to wield a light blade, you can use that power with a one-handed heavy blade and can also deal your Sneak Attack damage while using a one-handed heavy blade with that power.

      #theme.choiceBox("Reckless Scramble");
      *Requirements: Artful Dodger*
      When a power lets you shift, you can instead choose to move that distance + 2 squares.

      #theme.choiceBox("Aggressive Assault");
      *Requirements: Brutal Scoundrel*
      At the beginning of an encounter, whenever you hit a target that has not yet acted, you slide that target 1 square.

      #theme.choiceBox("Brutal Wound");
      *Requirements: Brutal Scoundrel*
      When your attack deals ongoing damage and you deal Sneak Attack damage to the target, add 1 to the ongoing damage for every die of Sneak Attack damage dealt.

      #theme.choiceBox("Improved Cunning Sneak");
      *Requirements: Cunning Sneak*
      When you make a Stealth check to become hidden using your Cunning Sneak class feature, you must end a move action at least 2 squares away from your starting position instead of 3.

      #theme.choiceBox("Ruthless Injury");
      *Requirements: Ruthless Ruffian*
      When you use a club or a mace to make a sneak attack that causes the target to become blinded, immobilized, slowed, or weakened, that target takes a –2 penalty to saving throws against any of those conditions.

      #theme.choiceBox("Backstabber");
      The extra damage dice from your Sneak Attack class feature increase from d6s to d8s.

      #theme.choiceBox("Underhanded Tactics");
      Whenever you deal Sneak Attack damage, you can forgo rolling 1 die of that damage to impose a -2 penalty to the target's attack rolls until the end of your next turn.

      #theme.choiceBox("Blade and Buckler");
      The shield bonus to defenses from your light shield increase to +2.

      #theme.choiceBox("Buckler Duelist");
      If a rogue power gives you a power bonus to defenses and you wield a light shield, increase that bonus by 1.

      #theme.choiceBox("Swashbuckling Specialist");
      While wielding a rapier, if you are the only creature adjacent to the target you may use your sneak attack damage even if you do not have combat advantage against the target with this attack.

      #theme.choiceBox("Brutal Teamwork");
      You gain a +2 bonus to damage rolls when you are adjacent to at least one ally.
      
      #theme.choiceBox("Surprise Knockdown");
      *Requirements: 3 Strength*
      If you score a critical hit while you have combat advantage, you knock the target prone.

    ]
  ]
}
