#import "../helpers/theme.typ" as theme;


#let featsPage() = {
  return [
    #theme.pageTitle(title: "General Feats");
    = Heroic Feats
    #columns(3)[
      #theme.choiceBox("Alchemist")
      You master the Alchemical Synthesis technique, additionally, you learn a
      formula of your level or lower at 1st level, 2nd level, and every even level thereafter.

      *Special*: You can take this feat instead of the Ritual Caster feat granted by your class feature.

      #theme.choiceBox("Alertness")
      You can’t be surprised.

      #theme.choiceBox("Implement Proficiency")
      Choose a kind of implement associated with your source. You can now use that kind of implement.

      #theme.choiceBox("Armor Proficiency")
      You gain proficiency in the next tier of armor. Going from Cloth - Leather - Hide - Chainmail - Scale - Plate.
      #linebreak()
      *Special*: You may take this feat multiple times.

      #theme.choiceBox("Blindfighting Warrior")
      Your melee attacks take no penalties due to partial or total concealment.

      #theme.choiceBox("Blindfighting Warden")
      You do not grant combat advantage to enemies invisible to you. While you are blinded, you do not take the penalty to checks which use your eyes.

      #theme.choiceBox("Bloodied Fleetness")
      While you are bloodied, you gain a +1 bonus to speed.

      #theme.choiceBox("Combat Medic")
      You can administer first aid to stabilize a dying creature as a minor action, instead of a standard action.

      #theme.choiceBox("Coordinated Explosion")
      When you use any implement power that targets creatures in a burst or a blast, you gain a +1 bonus to attack rolls against the power’s targets if at least one ally is within the burst or the blast.

      #theme.choiceBox("Daring Duelist")
      You gain combat advantage against enemies that have no creatures adjacent to them other than you.

      #theme.choiceBox("Defensive Mobility")
      You gain a +2 bonus to AC against opportunity attacks.

      #theme.choiceBox("Disciple of Death")
      You gain a +5 feat bonus to death saving throws.

      #theme.choiceBox("Distant Advantage")
      You gain combat advantage for ranged or area attacks against any enemy flanked by your allies.

      #theme.choiceBox("Durable")
      Your number of healing surges increases by two.

      #theme.choiceBox("Eager Advance")
      You gain a +4 feat bonus to speed on your first turn during an encounter.

      #theme.choiceBox("Escape Artist")
      You can attempt to escape a grab as a minor action, instead of as a move action.

      #theme.choiceBox("Expert Technique-ist")
      You gain a +2 bonus to skill checks that you make while performing a technique.

      #theme.choiceBox("Far Thought")
      Once per day, you can use telepathy for 5 minutes. You can communicate with any creature within 5 squares of you that has a language and that you can see. This telepathy allows for two-way communication.

      #theme.choiceBox("Improved Initiative")
      You gain a +4 feat bonus to initiative.

      #theme.choiceBox("Low-Light Adaptation")
      You gain Low-Light vision.

      #theme.choiceBox("Lucky Start")
      If your initiative is the highest at the start of an encounter, when you make your first attack roll of the encounter you can roll twice and use either result.

      #theme.choiceBox("Resilient")
      You gain a +2 feat bonus to saving throws.

      #theme.choiceBox("Shield Proficiency")
      You gain proficiency in the next tier of shield. Going from Light-Heavy.
      #linebreak()
      *Special*: You may take this feat multiple times.

      #theme.choiceBox("Speed Loader")
      As a free action, you can reload a crossbow you’re wielding that has the load minor weapon property.

      #theme.choiceBox("Unarmored Agility")
      You gain a +2 feat bonus to AC while wearing either cloth armor or no armor.

      #theme.choiceBox("Unfailing Vigor")
      When you roll a 18 or higher on a death saving throw, you can spend a healing surge as if you had rolled a 20.

      #theme.choiceBox("Weapon Proficiency")
      Choose a weapon, you become proficient in that weapon.
      #linebreak()
      *Special*: You may take this feat multiple times.

      #theme.choiceBox("Toughness")
      You gain 5 additional hit points. These additional hit points increase to 10 at 11th level and 15 at 21st level.

      #theme.choiceBox("Technique Mastery")
      Choose a Technique category, once per day, you can ignore the cost of a technique of that category of your level or lower that you have mastered.
      #linebreak()
      *Special*: You may take this feat multiple times, each time you do, select another category.

      #theme.choiceBox("World Serpent's Grasp")
      WWhenever you hit a slowed or immobilized target with an attack, you can knock it prone.
    ]

    = Paragon Feats
    #columns(3)[
      #theme.featBlock(
        title: "Agile Opportunist",
        content: "When you are pulled, pushed, or slid into a square adjacent to an enemy, you can use an immediate reaction to make a melee basic attack against that enemy.",
        prerequisite: "11th level",
      );

      #theme.featBlock(
        title: "Back to the Wall",
        prerequisite: "11th level",
        content: "Whenever you are adjacent to a wall, you gain a +1 bonus to melee attack rolls, melee damage rolls, and AC",
      );

      #theme.featBlock(
        title: "Blood Thirst",
        prerequisite: "11th level",
        content: "You gain a +2 bonus to melee damage rolls against bloodied foes.",
      );

      #theme.featBlock(
        title: "Danger Sense",
        prerequisite: "11th level",
        content: "When you make an initiative check, roll twice and take the higher of the two rolls.",
      );

      #theme.featBlock(
        title: "Devastating Critical",
        prerequisite: "11th level",
        content: "When you score a critical hit, you deal an extra 1d10 damage.",
      );

      #theme.featBlock(
        title: "Empty Vessel",
        prerequisite: "11th level",
        content: "The first time you drop to 0 power points during an encounter, you gain a +2 bonus to attack rolls and a +2 bonus to all defenses until the end of your next turn.",
      );

      #theme.featBlock(
        title: "Expansive Burst",
        prerequisite: "11th level",
        content: "Your close burst and area burst attacks ignore cover, but not superior cover.",
      );

      #theme.featBlock(
        title: "Eyes in the Back of Your Head",
        prerequisite: "11th level",
        content: "Being flanked doesn't cause you to grant combat advantage.",
      );

      #theme.featBlock(
        title: "Fleet-Footed",
        prerequisite: "11th level",
        content: "You gain a +1 feat bonus to your speed.",
      );

      #theme.featBlock(
        title: "Gritty Determination",
        prerequisite: "11th level",
        content: "Whenever you use a daily attack power, you gain temporary hit points equal to one-half your level + your Constitution modifier.",
      );

      #theme.featBlock(
        title: "Improved Second Wind",
        prerequisite: "11th level",
        content: "When you use your second wind, you regain an additional 5 hit points.",
      );

      #theme.featBlock(
        title: "Luck of the Gods",
        prerequisite: "11th level",
        content: "When you roll a natural 20 on an attack roll, skill check, or saving throw, remove all effects on you that a save can end.",
      );

      #theme.featBlock(
        title: "Mettle",
        prerequisite: "11th level",
        content: "When an area or close attack targeting your Fortitude or Will defense misses you and still deals damage on a miss, you take no damage from the attack.",
      );

      #theme.featBlock(
        title: "Opportunistic Withdrawal",
        prerequisite: "11th level",
        content: "While you are adjacent to an enemy granting combat advantage to you, your movement doesn't provoke opportunity attacks from that enemy.",
      );

      #theme.featBlock(
        title: "Opportunity Sidestep",
        prerequisite: "11th level",
        content: "When you hit with an opportunity attack, you can shift 1 square as a free action.",
      );

      #theme.featBlock(
        title: "Overwhelming Critical",
        prerequisite: "11th level",
        content: "Whenever you score a critical hit, you also knock the target prone.",
      );

      #theme.featBlock(
        title: "Point-Blank Shot",
        prerequisite: "11th level",
        content: "If you make a ranged attack against a foe within 5 squares of you, your attack ignores cover and concealment, including superior cover, but not total concealment.",
      );

      #theme.featBlock(
        title: "Quick Recovery",
        prerequisite: "11th level",
        content: "Whenever you spend a healing surge at the end of a short rest or an extended rest, you regain 5 additional hit points.",
      );

      #theme.featBlock(
        title: "Repel Charge",
        prerequisite: "11th level",
        content: "Whenever an enemy makes a charge attack against you, you can make a melee basic attack against that enemy as an opportunity action.",
      );

      #theme.featBlock(
        title: "Roll with It",
        prerequisite: "11th level",
        content: "Whenever an enemy pulls, pushes, or slides you, you can shift 1 square as a free action at the end of the forced movement.",
      );

      #theme.featBlock(
        title: "Unexpected Escape",
        prerequisite: "11th level",
        content: "You gain a +4 bonus to Acrobatics or Athletics checks made to escape a grab and any other effect that allows you to escape. Whenever you successfully escape, you can shift 2 squares.",
      );

      #theme.featBlock(
        title: "Unfailing Courage",
        prerequisite: "11th level",
        content: "When you spend an action point, you can also spend a healing surge.",
      );

      #theme.featBlock(
        title: "Vexing Flanker",
        prerequisite: "11th level",
        content: "While you are flanking an enemy, that enemy grants combat advantage to your allies.",
      );

      #theme.featBlock(
        title: "War Wizardry",
        prerequisite: "11th level",
        content: "Your arcane spells take a –5 penalty on attack rolls against allies, and deal only half their normal damage to allies.",
      );

      #colbreak();

      == Elemental Feats

      #theme.featBlock(
        title: "Icy Heart",
        prerequisite: "11th level",
        content: "You gain a +3 feat bonus to cold damage rolls. This bonus increases to +4 at 21st level. In addition, whenever you take cold damage from an attack, each enemy within 2 squares of you becomes slowed until the end of your next turn.",
      );

      #theme.featBlock(
        title: "Thunder's Rumble",
        prerequisite: "11th level",
        content: "You gain a +3 feat bonus to thunder damage rolls. This bonus increases to +4 at 21st level. In addition, whenever you take thunder damage from an attack, you can push each creature adjacent to you 1 square.",
      );

      #theme.featBlock(
        title: "Resounding Thunder",
        prerequisite: "11th level",
        content: "You can add 1 to the size of any blast or burst that has the thunder keyword.",
      );

      #theme.featBlock(
        title: "Lasting Frost",
        prerequisite: "11th level",
        content: "Once per turn, the first target you hit with a power that has the cold keyword gains vulnerable 5 cold after the attack. The vulnerability lasts until the end of your next turn.",
      );

      #theme.featBlock(
        title: "Lightning Arc",
        prerequisite: "11th level",
        content: "When you score a critical hit with a power that has the lightning keyword, you can choose to treat the attack as a normal hit instead of a critical hit. If you do, choose another target within 10 squares of the original target that was not already targeted or affected by the power. That target takes damage equal to the damage dealt to the original target.",
      );

      #theme.featBlock(
        title: "Lightning Soul",
        prerequisite: "11th level",
        content: "You gain a +3 feat bonus to lightning damage rolls. This bonus increases to +4 at 21st level. In addition, whenever you take lightning damage from an attack, one enemy within 5 squares of you takes 10 lightning damage. This damage increases to 15 at 21st level.",
      );

      #theme.featBlock(
        title: "Fiery Blood",
        prerequisite: "11th level",
        content: "You gain a +3 feat bonus to fire damage rolls. This bonus increases to +4 at 21st level. In addition, whenever you take fire damage from an attack, each enemy adjacent to you takes 5 fire damage. This damage increases to 10 at 21st level.",
      );

      == Divine Feats    

      #theme.featBlock(
        title: "Invigorating Critical",
        prerequisite: "11th level, any divine class",
        content: "The first time you score a critical hit with a divine attack power during an encounter, an ally adjacent to you or adjacent to the target regains hit points equal to 10 + your Wisdom modifier.",
      );

      #theme.featBlock(
        title: "Pervasive Light",
        prerequisite: "11th level, any divine class",
        content: "When you hit a target that has vulnerability to radiant damage with an attack that does not deal radiant damage, you deal extra damage equal to that vulnerability.",
      );

      #theme.featBlock(
        title: "Saving Grace",
        prerequisite: "11th level, any divine class",
        content: "When you succeed on a saving throw, you can choose not to end the effect you saved against and instead allow an ally within 5 squares of you to make a saving throw with a bonus equal to your Wisdom modifier.",
      );

      #theme.featBlock(
        title: "Armored by Faith",
        prerequisite: "11th level, any divine class, Channel Divinity class feature",
        content: "When you use a Channel Divinity power, you gain temporary hit points equal to your Wisdom modifier.",
      );

      #theme.featBlock(
        title: "Darkfoe",
        prerequisite: "11th level, any divine class, Channel Divinity class feature",
        content: "When you use a Channel Divinity power, you and each ally within 10 squares of you gain resistance to necrotic damage equal to 5 + your Wisdom modifier until the start of your next turn.",
      );

      #colbreak();
      == Specialist Feats

      #theme.featBlock(
        title: "Fated Survival",
        prerequisite: "11th level, 2 Charisma",
        content: "When you fail a saving throw, you gain a +2 feat bonus to the next saving throw you make against the same effect.",
      );

      #theme.featBlock(
        title: "Arcane Reach",
        prerequisite: "11th level, 3 Dexterity",
        content: "When using a close arcane attack power, you can choose a square within 2 squares of yours as the origin square. The power still follows the rules for close attacks.",
      );

      #theme.featBlock(
        title: "Evasion",
        prerequisite: "11th level, 3 Dexterity",
        content: "When an area or close attack targeting your AC or Reflex defense misses you but deals damage on a miss, you take no damage from the attack.",
      );

      #theme.featBlock(
        title: "Defensive Advantage",
        prerequisite: "11th level, 4 Dexterity",
        content: "When you have combat advantage against an enemy, you gain a +2 bonus to AC against that enemy's attacks.",
      );

      #theme.featBlock(
        title: "Seize the Moment",
        prerequisite: "11th level, 4 Dexterity",
        content: "During the first round of combat and during surprise rounds, you automatically gain combat advantage over a foe whose initiative result is lower than yours.",
      );

      #theme.featBlock(
        title: "Sly Hunter",
        prerequisite: "11th level, 3 Wisdom",
        content: "You gain a +3 bonus to damage rolls with bow attacks against any target that has no creature within 3 squares of it.",
      );

      #theme.featBlock(
        title: "Uncanny Dodge",
        prerequisite: "11th level, 3 Wisdom",
        content: "Enemies do not gain the normal +2 bonus to attack rolls against you when they have combat advantage. Any other benefits derived from combat advantage still apply.",
      );
    ]

    #pagebreak();

    = Multiclass Feats
    #columns(2)[
      == General
      #theme.choiceBox("Novice Power")
      *Requirements*: Level 4+ #linebreak()
      You can swap one encounter attack power you know for one encounter attack power of the same level or lower from the class you multiclassed into.

      #theme.choiceBox("Intermediate Power")
      *Requirements*: Level 8+ #linebreak()
      You can swap one utility power you know for one utility power of the same level or lower from the class you multiclassed into.

      #theme.choiceBox("Adept Power")
      *Requirements*: Level 10+ #linebreak()
      You can swap one daily attack power you know for one daily attack power of the same level or lower from the class you multiclassed into.

      == Fighter

      #theme.choiceBox("Student of the Sword")
      Choose either one-handed melee weapons or two-handed melee weapons. Once per encounter as a free action, you can add a +1 bonus to the next attack roll you make with a weapon of that category. Whether the attack hits or misses, you mark the target until the end of your next turn.

      #theme.choiceBox("Wrathful Warrior")
      Once per encounter, when you are hit by a melee attack or a close attack, you gain temporary hit points equal to your Constitution modifier.

      #theme.choiceBox("Cyclone Warrior")
      Once per encounter as a free action during your turn, while you are wearing light armor or chainmail and wielding a weapon in each hand, you can gain a +1 bonus to damage rolls with melee or close attacks until the end of your turn. This bonus increases to +2 at 11th level and +3 at 21st level.

      #theme.choiceBox("Brawling Warrior")
      Once per encounter while you wield a weapon in one hand and have nothing in your other hand, you can use a free action during your turn to gain a +1 bonus to an attack roll you just made or a +1 bonus to AC until the start of your next turn.

      #theme.choiceBox("Battle Awareness")
      Once per encounter, whenever an enemy that is adjacent to you shifts or makes an attack that does not include you as a target, you can make a melee basic attack against that enemy as an immediate interrupt.

      == Cleric

      #theme.choiceBox("Initiate of the Faith")
      Once per day, you can use the Cleric’s healing word power. In addition, you can use a holy symbol as an implement.

      #theme.choiceBox("Divine Healer")
      You gain the cleric's Healer's Lore class feature. In addition, you can wield cleric implements.

      == Paladin

      #theme.choiceBox("Soldier of Virtue")
      Once per day, you can use the virtue’s touch power. In addition, you can wield paladin implements.

      #theme.choiceBox("Squire of Righteousness")
      You have proficiency with holy symbols. You gain the defender aura power. You can use righteous radiance as an encounter power.

      #theme.choiceBox("Soldier of the Faith")
      Once per encounter, you can use the Paladin’s divine challenge power.
      In addition, you can use a holy symbol or a holy avenger as an implement.

      == Ranger

      #theme.choiceBox("Warrior of the Wild")
      Once per encounter, you can use the Ranger’s Hunter's Quarry class feature. The target you designate as your quarry remains your quarry until the end of your next turn.

      #theme.choiceBox("Two-Blade Warrior")
      You can wield a one-handed weapon in your off hand as though it were an off-hand weapon.

      == Rogue

      #theme.choiceBox("Ruthless Efficiency")
      You gain the Ruthless Ruffian class feature.

      #theme.choiceBox("Sly Dodge")
      Once per encounter, when an enemy makes an opportunity attack against you, you can add your Charisma modifier to your AC against that attack.

      #theme.choiceBox("Twilight Adept")
      Once per encounter, you can use a free action during your turn to gain the benefit of the Rogue class feature Cunning Sneak until the end of your turn.

      #theme.choiceBox("Sneak of Shadows")
      Once per encounter, you can use the Rogue's Sneak Attack class feature.

      == Warlock

      #theme.choiceBox("Student of Malediction")
      Once per encounter, you can use the Warlock’s Curse class feature. The curse ends the first time you deal the extra damage from Warlock's Curse. In addition, you can wield Warlock implements.

      #theme.choiceBox("Pact Initiate")
      Choose a Warlock pact. You gain the pact's at-will power as an encounter power, and you can pursue the Warlock’s paragon path based on that pact. In addition, you can use a rod, a wand, or a pact blade as an implement.

      == Warlord

      #theme.choiceBox("Resourceful Leader")
      When an ally you can see spends an action point to make an attack, the ally gains a +3 bonus to damage rolls on a hit or gains 3 temporary hit points on a miss. This bonus increases to +5 at 11th level and +7 at 21st level. These temporary hit points increase to 5 at 11th level and 7 at 21st level.

      #theme.choiceBox("Student of Battle")
      Once per day, you can use the Warlord’s inspiring word power.

      #theme.choiceBox("Bravura Leader")
      When an ally you can see spends an action point to attack, that ally can choose to gain a +4 bonus to the attack's damage roll. If the ally chooses to use the bonus, he or she grants combat advantage to the target of the attack until the end of his or her next turn. This bonus increases to +6 at 11th level and +8 at 21st level.

      #theme.choiceBox("Skirmishing Leader")
      When an ally you can see spends an action point to take an extra action, that ally can shift 1 square as a free action before or after the extra action.

      #theme.choiceBox("Insightful Leader")
      When an ally you can see spends an action point to take an extra action, that ally gains a +1 bonus to all defenses until the end of his or her next turn.

      #theme.choiceBox("Inspiring Leader")
      Once per encounter, when an ally who can see you spends an action point to take an extra action, that ally also gains temporary hit points equal to 1 + one-half your level.

      #theme.choiceBox("Tactical Leader")
      Once per encounter, when an ally you can see spends an action point to make an attack, that ally gains a +1 bonus to the attack roll.

      == Wizard

      #theme.choiceBox("Arcane Initiate")
      Choose a 1st-level wizard at-will power. You can use that power once per encounter. In addition, you can use Wizard implements.

      == Avenger

      #theme.choiceBox("Disciple of Divine Wrath")
      You can use the Avenger’s oath of enmity power. The effect lasts until the end of your next turn. In addition, you can wield Avenger implements.

      == Barbarian

      #theme.choiceBox("Barbarian’s Fury")
      Once per day as a free action, you can gain a +2 bonus to damage rolls until the end of the encounter.

      #theme.choiceBox("Rampant Fury")
      You gain the Barbarian’s class feature Rampage.

      == Bard

      #theme.choiceBox("Basic Dilettante")
      Once per day, you can use the Bard’s majestic word power. In addition, you can wield bard implements.

      == Druid

      #theme.choiceBox("Initiate of the Old Faith")
      You gain the Druid's wild shape power. Choose a 1st-level Druid at-will attack power that has the beast form keyword. You can use that power once per encounter. In addition, you can wield Druid implements.

      #theme.choiceBox("Hunting Predator")
      While you are in beast form, you gain a +1 bonus to speed.

      == Invoker

      #theme.choiceBox("Keeper of Divine Secrets")
      Choose a 1st-level Invoker at-will attack power. You can use that power once per encounter. In addition, you can wield Invoker implements.

      == Shaman

      #theme.choiceBox("Spirit Talker")
      You gain the Shaman’s call spirit companion power, but you use it as a standard action. Choose a Companion Spirit option. You gain the at-will Shaman power associated with that option, such as spirit's shield or spirit's fang, as an encounter power. You gain speak with spirits as a daily power. In addition, you can wield Shaman implements.

      #theme.choiceBox("Mending Spirit")
      *Requirements*: Spirit Talker #linebreak()
      You gain the shaman power healing spirit, but you can use it only once per encounter.

      == Sorcerer

      #theme.choiceBox("Arcane Prodigy")
      Once per encounter as a free action, you can gain a +2 bonus to your next damage roll. The bonus increases to +3 at 11th level and +4 at 21st level. In addition, you can wield sorcerer implements.

      #theme.choiceBox("Soul of Sorcery")
      Choose acid, cold, fire, force, lightning, necrotic, poison, psychic, radiant, or thunder. You gain resist 5 to that damage type. In addition, you can wield sorcerer implements.

      == Warden

      #theme.choiceBox("Defender of the Wild")
      Once per encounter as a free action, you can mark each enemy adjacent to you until the end of your next turn.

      #theme.choiceBox("Warden’s Endurance")
      Once per encounter, you can make a saving throw against one effect that a save can end at the start of your turn. On a save, the effect immediately ends, preventing it from affecting you on your current turn. If you fail the saving throw, you still make a saving throw against the effect at the end of your turn.

      == Runepriest

      #theme.choiceBox("Student of Divine Runes")
      Once per day, you can use the Runepriest’s rune of mending power.

      == Artificer

      #theme.choiceBox("Student of Artifice")
      Once per day, you can use the Artificer’s healing infusion power. The infusion you create cannot be replenished.
      In addition, you can wield Artificer’s implements.

      == Swordmage

      #theme.choiceBox("Blade Initiate")
      Once per day, when you are wielding a blade, you can invoke the Swordmage Warding class feature as a minor action. Until the end of the encounter, you gain a +1 bonus to AC (or a +3 bonus to AC if you have one hand free).
      In addition, you can use Swordmage implements.

      #theme.choiceBox("Heart of the Blade")
      You gain the Swordmage’s Swordbond class feature. In addition, you can wield Swordmage’s implements.
    ]
  ]
}
