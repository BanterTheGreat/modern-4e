#import "../helpers/theme.typ";
#import "../helpers/classes.typ";
#import "../helpers/powers.typ";

#let className = "Druid";

#let druidPage() = {
  return [
    #theme.classTitle(
      title: [The #className],
      additional: [ _With a whisper, they summon the fury of the wild_
        #linebreak()
        #text(size: 10pt)[Role]],
    )

    #columns(2)[
      #classes.proficiencies(
        armorProficiencies: (classes.armorProf.cloth, classes.armorProf.leather, classes.armorProf.hide),
        weaponProficiencies: (classes.weaponProf.simpleMelee, classes.weaponProf.simpleRanged),
        implementProficiencies: (classes.implementProf.staff, classes.implementProf.totem),
      );

      #classes.defensesAndHealth(fortitude: 11, will: 12, reflex: 12, health: 22, healthOnLevelUp: 5, healingSurges: 7)

      #classes.abilities(
        mainAbilities: "Wisdom",
        extraAbilities: ("Constitution", "Dexterity"),
        class: className,
      );

      #colbreak();
      = Balance of Nature
      Some Wildcallers favor being in beast form, while others prefer being in humanoid form. However, just as Wildcallers seek balance in the world between divine and primordial forces, Wildcallers pursue balance within their own minds and bodies.

      *You begin with three at-will attack powers.* Throughout your career, *at least one of those powers, and no more than two, must have the beast form keyword.* By this means, you have access to useful attacks in either beast form or humanoid form.

      = Primal Aspect
      Wildcalleric lore speaks of the Primal Beast, the first spirit of the world's noble predators. A formless thing of shadows, fur, feathers, and claws, this creature appears in many Wildcallers' visions, and they speak of channeling the Primal Beast when using their wild shape and beast form powers. As a Wildcaller, you choose which aspect of the Primal Beast you most strongly manifest with your powers.
      Choose one of these options. Your choice provides bonuses to certain Wildcaller powers, as detailed in those powers.

      #theme.choiceBox("Primal Guardian");
      While you are not wearing heavy armor, you can use your *Constitution* in place of your Dexterity or Intelligence to determine your AC.

      #theme.choiceBox("Primal Predator");
      While you are not wearing heavy armor, you gain a +1 bonus to your speed.

      #theme.choiceBox("Primal Swarm");
      While you are in beast form and not wearing heavy armor, melee attacks and ranged attacks deal less damage to you. When you take damage from either type of attack, the damage is reduced by your *Constitution*.

      #colbreak();

      #theme.choiceBox("Primal Wrath");
      While you are not wearing heavy armor, you gain a +1 bonus to the attack rolls of Wildcaller attack powers and Wildcaller paragon path attack powers that have the cold, fire, lightning, or thunder keywords.

      = Wild Shape
      As a Wildcaller, you have the ability to channel the primal energy of beasts into your physical form and transform into a beast. You have an at-will power, wild shape, that allows you to assume the form of a beast, and many Wildcaller powers have the beast form keyword and therefore can be used only while you are in beast form.

      The wild shape power lets you assume a form of your size that resembles a natural or a fey beast, usually a four-legged mammalian predator such as a bear, a boar, a panther, a wolf, or a wolverine. Your beast form might also be an indistinct shape of shadowy fur and claws, an incarnation of the Primal Beast of which all earthly beasts are fractured images. You choose a specific form whenever you use wild shape, and that form has no effect on your game statistics.

      Your choice of Primal Aspect might suggest a specific form you prefer to assume, and certain beast form powers specify changes to your form when you use them. You might also resemble a more exotic beast when you're in beast form: a reptile such as a rage drake or a crocodile, or a fantastic beast such as an owlbear or a bulette.

      #powers.power(
        title: "Wild Shape",
        type: powers.powerType.at-will,
        action: powers.actionType.minor,
        range: [*Personal*],
        isSpecial: true,
        traits: "Polymorph, Primal",
        additionalRows: (
          [
            *Effect:* You change from your humanoid form to beast form or vice versa. When you change from beast form back to your humanoid form, you can shift 1 square. While you are in beast form, you can't use weapon or implement attack powers that lack the beast form keyword, although you can sustain such powers.

            You choose a specific form whenever you use wild shape to change into beast form. The beast form is your size, resembles a natural beast or a fey beast, and normally doesn't change your game statistics. Your equipment becomes part of your beast form, but you drop anything you are holding, except implements you can use. You continue to gain the benefits of the equipment you wear, except a shield.

            You can use the properties and the powers of implements as well as magic items that you wear, but not the properties or the powers of weapons or the powers of wondrous items. While equipment is part of your beast form, it cannot be removed, and anything in a container that is part of your beast form is inaccessible.
          ],
          [
            *Special:* You can use this power once per round.
          ],
        ),
      )

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
      #theme.choiceBox("Strong-Willed Summoning");
      When a creature you summon uses an instinctive action to attack, it gains a +1 bonus to the attack roll.

      #theme.choiceBox("Primal Instinct");
      *Requirements: Primal Guardian* #linebreak();
      When you roll initiative at the start of any encounter, one ally within 5 squares of you can reroll his or her initiative.

      #theme.choiceBox("Watchful Guardian");
      *Requirements: Primal Guardian* #linebreak();
      While you are in beast form, you and each ally adjacent to you gain a +2 feat bonus to attack rolls when making opportunity attacks.

      #theme.choiceBox("Primal Fury");
      *Requirements: Primal Predator* #linebreak();
      You gain a +1 bonus to attack rolls with primal powers against bloodied enemies.

      #theme.choiceBox("Predator’s Burst");
      *Requirements: Primal Predator* #linebreak();
      When you charge while you are in beast form, you gain a +2 bonus to speed and a +1 bonus to the damage rolls of the charge attack.

      #theme.choiceBox("Stinging Swarm");
      *Requirements: Primal Swarm* #linebreak();
      Once per round when an enemy damages you with a melee attack while you are in beast form, that enemy grants combat advantage to you until the end of your next turn.

      #theme.choiceBox("Ruthless Killer");
      *Requirements: Grasping Claws Power* #linebreak();
      When you hit a target with the grasping claws power, instead of slowing the target you can instead choose for the target to be immobilized until the end of your next turn. If you are ever not adjacent to the target, the immobilized effect ends.

      #colbreak();

      #theme.choiceBox("Patient Hunter");
      *Requirements: Pounce Power* #linebreak();
      When you hit a target with an attack using the pounce power, the target grants combat advantage until the end of your next turn.

      #theme.choiceBox("Unstoppable Beast");
      *Requirements: Savage Rend Power* #linebreak();
      When you hit a target with the savage rend power, you can shift 1 square into the space occupied by your target after you slide it.

      #theme.choiceBox("Agile Form");
      When you use wild shape to change from your humanoid form to beast form, you shift 1 square.

      #theme.choiceBox("Cheetah’s Speed");
      While you are in beast form and you are bloodied, you gain a +4 feat bonus to speed when you charge or run.

      #theme.choiceBox("Enraged Boar Form");
      While you are in beast form, you gain a +1 bonus to attack rolls and a +2 bonus to damage rolls with charge attacks.

      #theme.choiceBox("Turtle’s Shell");
      While you are in beast form, any time you take the total defense action or use your second wind, you gain resist 5 to all damage until the end of your next turn.
    ]
  ]
}
