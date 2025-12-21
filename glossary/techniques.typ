#import "../helpers/theme.typ" as theme;

#let techniqueEntry(
  level: int,
  title: str,
  time: str,
  duration: str,
  cost: str,
  keywords: (str),
  description: content,
) = {
  return block(
    [
      #let keywordContent = if type(keywords) == array { keywords.join(", ") } else {
        keywords
      }

      #theme.choiceBox(title);

      *Level:* #str(level) #linebreak()
      *Time:* #time #linebreak()
      *Duration:* #duration #linebreak()
      *Cost:* #cost #linebreak()
      *Keywords:* #keywordContent #linebreak()

      #description
    ],
    breakable: false,
  )
}


#let techniquesPage() = {
  return [
    #theme.pageTitle(title: "Techniques");
    Techniques are various manouvers and rituals your character is able to perform which provide various boosts and benefits.

    == Gaining Techniques
    At level 2 and every other even level after, you may gain a technique. This technique has to be of your level or lower.

    == Learning additional Techniques
    To learn additional techniques, you must train for at least 8 hours with a character who has mastered it and is at least 6 levels higher than the minimum level to use the technique; or train for at least 1 week with a character who has mastered it, regardless of their level; or to study a manual or other text that describes the technique for 8 hours. You must also meet the technique’s level requirement.

    == Performing a Technique
    Once you’ve mastered a technique, you can use it. Each technique takes time to perform—usually a significant amount, preventing them from being used during combat. Additionally, each technique has some costs, typically healing surges but sometimes also materials (which are consumed) and foci (which are reusable), paid at the end of the usage time of the technique.

    Some techniques require skill checks; you make the check at the end of the usage time, and cannot take 10 on the check.

    #pagebreak();

    #theme.subPageTitle(title: "Crafting Techniques")

    #columns(2)[
      #techniqueEntry(
        level: 1,
        title: "Alchemical Creation",
        time: "Special",
        duration: "Instantaneous",
        cost: "The item's value in reagents",
        keywords: "Creation",
        description: "You create an alchemical item of level no higher than yours that you possess the formula for. The time required depends on the specific formula.",
      );

      #techniqueEntry(
        level: 1,
        title: "Brew Potion",
        time: "1 hour",
        duration: "Until consumed",
        cost: "Price of the potion or elixir created",
        keywords: "Creation",
        description: "You create a potion or an elixir of your level or lower.",
      );

      #techniqueEntry(
        level: 1,
        title: "Temporary Patch",
        time: "10 minutes",
        duration: "24 hours",
        cost: "1 healing surge",
        keywords: "Creation",
        description: "You temporarily repair a single nonmagical object that fits within a 10-foot cube. It functions normally for the duration, then completely breaks again the next time someone attempts to use it.",
      );

      #techniqueEntry(
        level: 5,
        title: "Seal Death’s Door",
        time: "1 minute",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: "Warding",
        description: "You sustain yourself with tinctures and elixirs, gaining a +2 power bonus to death saving throws while this technique remains active.",
      );

      #techniqueEntry(
        level: 5,
        title: "Prosthetic Genius",
        time: "6 hours",
        duration: "Instantaneous",
        cost: "100 gp (see text)",
        keywords: ("Creation", "Restoration"),
        description: "You create a prosthetic replacement that restores the lost limb, organ, or function. The exact form, materials, and required tools depend on your training: a character trained in Thievery might craft intricate clockwork limbs, one trained in Arcana could produce necromantic simulacra or animated prosthetics, and a character trained in Religion might craft rune-scribed blessed steel replacements. Consult the GM for material requirements and any additional checks.",
      );

      #techniqueEntry(
        level: 6,
        title: "Superior Supply",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge, plus the item’s value (in coin)",
        keywords: "Exploration",
        description: "While rifling through a well-stocked pack or container for the usage time, you recover an item you previously purchased (nonmagical adventuring gear) and pull it from the pack. Deduct the item's cost from your wealth when you retrieve it.",
      );

      #techniqueEntry(
        level: 12,
        title: "Enhanced Durability",
        time: "1 hour",
        duration: "Instantaneous",
        cost: "10% of the target’s value",
        keywords: "Creation",
        description: "You reinforce a Huge or smaller inanimate object, increasing the DC of Strength skill checks to destroy it by +10 and granting it Resist 10 to all damage. Blades enhanced this way do not dull, and inscriptions in stone resist erosion for a century. If you are at least 21st level, ignore the size limit.",
      );

      #techniqueEntry(
        level: 20,
        title: "Artisan’s Foresight",
        time: "Any amount of time (see text)",
        duration: "Until discharged",
        cost: "Any amount of materials (see text) plus 1 committed healing surge",
        keywords: "Creation",
        description: "You spend time and resources developing a secret project. As a standard action outside of combat, you may reveal the results: instantly and retroactively craft any object you could construct using any combination of techniques you know and the time and resources invested. Any excess materials beyond what is needed appear in your workshop (or equivalent); any excess time is lost. The final object may be placed on your person or left anywhere out of sight that you’ve visited since using the technique, as desired. Consult the GM for specifics about required materials and limits.",
      );

      #techniqueEntry(
        level: 21,
        title: "Destined Delivery",
        time: "1 hour",
        duration: "As long as necessary",
        cost: "1 healing surge",
        keywords: ("Creation", "Divination"),
        description: "While crafting an object, you can bind its fate to a specific individual. By some providential means, the object will eventually find its way into that individual’s hands, though you cannot control the exact events that lead to it. Strongly defined heroic or anti‑heroic actions can still disrupt this destiny.",
      );

      #techniqueEntry(
        level: 21,
        title: "Resistant Preparation",
        time: "1 hour",
        duration: "Instantaneous",
        cost: "10% of the target’s value",
        keywords: "Creation",
        description: "You reinforce a Huge or smaller inanimate object so that it resists magical and supernatural transformations to its form. The protection is highly durable, but a sustained magical effect applied continuously for a week can overcome it.",
      );

      #techniqueEntry(
        level: 30,
        title: "Permanency",
        time: "Special",
        duration: "Permanent",
        cost: "An additional 200% of the target’s value",
        keywords: "Creation",
        description: "Use this technique as part of creating an object to make it effectively eternal; the technique requires the same time as the object's creation. Objects made permanent do not degrade from normal time or weather and resist mundane wear; only direct destructive force or massive environmental damage can destroy them. Any object created this way is unmistakably recognized as your work.",
      );
    ]

    #pagebreak();

    #theme.subPageTitle(title: "Magic Techniques")

    #columns(2)[
      #theme.subSectionTitle(title: "Arcane");

      #techniqueEntry(
        level: 1,
        title: "Arcane Mark",
        time: "1 minute",
        duration: "Permanent",
        cost: "None",
        keywords: "Creation",
        description: "You touch an object and mark it with your personal sigil. The sigil is normally invisible; it can be revealed with a Skill Check to detect magic.",
      );

      #techniqueEntry(
        level: 1,
        title: "Magic Mouth",
        time: "10 minutes",
        duration: "Until discharged or dismissed",
        cost: "1 committed healing surge",
        keywords: ("Communication", "Exploration"),
        description: "You bind a spoken message into a surface you touch and set a trigger condition. When the condition is met, a mouth appears on the surface and speaks the message, discharging the ritual. You may use a small silver-and-ruby mouth (100 gp) as a focus: if used the cost is reduced to 1 healing surge, and the focus must remain within 20 squares of any mouth bound to it.",
      );

      #techniqueEntry(
        level: 1,
        title: "Silence",
        time: "10 minutes",
        duration: "24 hours",
        cost: "1 healing surge",
        keywords: "Warding",
        description: "You ward a room or a close burst 4 area against sound. Creatures attempting to listen into the area from outside suffer a –10 penalty to Perception checks to do so.",
      );

      #techniqueEntry(
        level: 1,
        title: "Floating Disk",
        time: "10 minutes",
        duration: "24 hours",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: [You create a disk of force 3 feet in diameter and 1 inch thick that floats a foot above the ground and carries what you place on it. It moves at your speed, either by your command as a move action or to remain within 5 squares of you if uncommanded. If you spend two consecutive rounds more than 5 squares from it, the effect ends. Maximum load by Arcana check result:

          - 9 or lower: 250 lb
          - 10 or higher: 500 lb
          - 25 or higher: 1000 lb
          - 40 or higher: 2000 lb
        ],
      );

      #techniqueEntry(
        level: 1,
        title: "Unseen Servant",
        time: "10 minutes",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Creation", "Hospitality"),
        description: "You conjure an invisible, Medium unseen servant of force that obeys simple commands, moves at your speed, can lift up to 100 pounds, performs basic repetitive tasks (cleaning, camp chores, moving objects), never tires, and cannot attack or be attacked. It cannot move more than 20 squares from you and does not occupy space.",
      );

      #techniqueEntry(
        level: 2,
        title: "Animate Rope",
        time: "1 minute",
        duration: "1 minute",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: "Choose a rope within 20 squares. The rope animates and follows your simple commands (coil, uncoil, knot, etc.). It cannot carry or pull weight besides its own while animated. Command actions: knotting — standard action; move up to 6 squares along a horizontal/vertical surface — move action.",
      );

      #techniqueEntry(
        level: 2,
        title: "Explosive Runes",
        time: "1 minute",
        duration: "Until discharged",
        cost: "2 healing surges",
        keywords: "Warding",
        description: "You inscribe runes that trigger a trap when read. You may set a password that allows safe reading. The trap makes an attack in a close burst 2 using your level + 4 vs. Reflex, dealing 4d4 + half your level force damage on a hit and half on a miss. An Arcana or Thievery check with DC = your Arcana check result + 5 can disable the trap.",
      );

      #techniqueEntry(
        level: 2,
        title: "Pyrotechnics",
        time: "1 minute",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: "Creation",
        description: "You conjure small aerial explosions in colors and shapes you choose; you may change color/shape once per minute. Effects are visible 1 mile by day and 10 miles by night.",
      );

      #techniqueEntry(
        level: 3,
        title: "Inner Archive",
        time: "1 minute",
        duration: "Until dismissed",
        cost: "1 committed healing surge per book or 3 scrolls",
        keywords: "Warding",
        description: "You store written works (books, scrolls, etc.) in an extradimensional space within your mind. The physical texts vanish while stored and reappear upon your death or when you spend 1 minute resummoning them.",
      );

      #techniqueEntry(
        level: 3,
        title: "Project Reflection",
        time: "10 minutes",
        duration: "Until discharged or dismissed",
        cost: "1 committed healing surge",
        keywords: "Deception",
        description: [You create an intangible illusion of yourself that looks, smells, and sounds like you but cannot move more than 20 squares from its origin. Program the illusion with simple actions to trigger under set circumstances. Your Skill Check sets the Insight DC to discern the illusion and determines programmable actions:

          - 19 or lower: minor + move
          - 20+: add a standard
          - 30+: add a second minor + move
          - 40+: add a second standard

          The illusion disappears one round after all programmed actions complete.
        ],
      );

      #techniqueEntry(
        level: 4,
        title: "Arcane Lock",
        time: "1 minute",
        duration: "Permanent",
        cost: "1 healing surge",
        keywords: "Warding",
        description: "You magically seal a door, window, gate, or similar barrier. You may permit up to ten specific individuals, accept a verbal password, or allow a visual category of creatures to ignore the seal. Opening without permission uses a DC = your Skill Check + 5.",
      );

      #techniqueEntry(
        level: 4,
        title: "Dark Light",
        time: "1 minute",
        duration: "1 day",
        cost: "1 healing surge",
        keywords: ("Deception", "Exploration"),
        description: "You create a floating ball of shadow that accompanies you and produces dim light in a 6-square radius; colors do not appear (shades of gray). Only creatures inside the area can see the ball or its light.",
      );

      #techniqueEntry(
        level: 4,
        title: "Eavesdropper's Foil",
        time: "10 minutes",
        duration: "4 hours",
        cost: "1 healing surge",
        keywords: "Warding",
        description: "You ward up to a close burst 3 around yourself against eavesdropping, imposing a –10 penalty to Perception checks to listen in on communications within the area. The ward moves with you.",
      );

      #techniqueEntry(
        level: 5,
        title: "Hallucinatory Item",
        time: "10 minutes",
        duration: "24 hours",
        cost: "1 healing surge",
        keywords: "Deception",
        description: [You create an immobile, intangible illusion of one inanimate object that appears real. Your Skill Check result determines the Recognition DC and size limit:

          - 19 or lower: Small
          - 20+: Medium
          - 30+: Large
          - 40+: Huge
        ],
      );

      #techniqueEntry(
        level: 5,
        title: "Object Reading",
        time: "1 hour",
        duration: "5 minutes",
        cost: "1 healing surge",
        keywords: "Divination",
        description: [Hold an object and view past images from its history (owner, forger, recent events). Your Check result determines the amount of images shown:

          - 9 or lower: 1 image
          - 10+: 2 images
          - 20+: 3 images
          - 30+: 5 images
        ],
      );

      #techniqueEntry(
        level: 6,
        title: "Sending",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Communication", "Exploration"),
        description: "You send a message of up to 25 words to a person you know; they receive it mentally and may respond the same way. DC required for the Arcana check depends on distance: within 10 miles — automatic; within 100 miles — DC 10; within 500 miles — DC 20; within 1,000 miles — DC 30; farther or different plane — DC 40.",
      );

      #techniqueEntry(
        level: 8,
        title: "Shadow Bridge",
        time: "5 minutes",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: "You form a solid bridge of shadow that must connect to solid surfaces at both ends. Maximum length equals your Skill Check result in squares; maximum width is 1 square per 10 points of your Check result.",
      );

      #techniqueEntry(
        level: 9,
        title: "Magic Map",
        time: "10 minutes",
        duration: "Special",
        cost: "1 healing surge, foci (crystal plumb-bob worth ≥100 gp, map ≤50×50 miles)",
        keywords: ("Divination", "Finding"),
        description: [Holding the plumb-bob above the map, if your chosen target is within the depicted area the plumb-bob points to their location and follows movement. Targets may be a creature you have a personal possession or body part from, the most valuable hoard in the area, a named object type, or a specific object you've seen. The duration is limited by your Skill Check:

          - 19 or lower: 1 round;
          - 20–29: 10 rounds;
          - 30–39: 10 minutes
          - 40+: 1 hour.

            Accuracy limited by map quality.
        ],
      );

      #techniqueEntry(
        level: 10,
        title: "Chains of Force",
        time: "5 minutes",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: "Binding",
        description: [You bind a helpless creature within 5 squares in chains of arcane force. The Escape DC equals your Skill Check + 5. A target of your level or lower cannot teleport while chained.],
      );

      #techniqueEntry(
        level: 12,
        title: "Passwall",
        time: "10 minutes",
        duration: "1 minute",
        cost: "1 healing surge",
        keywords: ("Exploration", "Travel"),
        description: "You create a passage through solid material one square wide and one square high. Depth of passage = one square per 5 points of your Skill Check result. A creature caught when the passage closes takes 5d10 damage and is ejected out the nearest end.",
      );

      #techniqueEntry(
        level: 12,
        title: "Seeming",
        time: "10 minutes",
        duration: "Until dismissed (see text)",
        cost: "1 committed healing surge",
        keywords: "Deception",
        description: "You create magical disguises for yourself and up to eight allies, disguising you as nonspecific humanoids of the same size category. Your Skill Check sets the Recognition DC by sight (or sound if applicable). Disguises are intangible, so discrepancies are revealed by touch. Any ally moving more than 5 squares from you loses the disguise.",
      );

      #techniqueEntry(
        level: 14,
        title: "Telepathic Bond",
        time: "10 minutes",
        duration: "Special",
        cost: "1 healing surge",
        keywords: ("Communication", "Exploration"),
        description: [You and up to eight allies gain telepathic communication regardless of language, distance, or plane. The duration of which depends on the result of the Skill Check:
          - 9 or lower: 10 minutes;
          - 10–19: 30 minutes;
          - 20–29: 1 hour;
          - 30–39: 3 hours;
          - 40+: 8 hours.
        ],
      );

      #techniqueEntry(
        level: 14,
        title: "View Location",
        time: "1 hour",
        duration: "Special",
        cost: "1 healing surge and a focus (crystal ball or mirror) worth ≥1,000 gp",
        keywords: "Scrying",
        description: "You view and hear a previously visited location as if standing there with darkvision; you can use Perception normally. Sensor lasts 1 round per 10 points of your Skill Check result. The sensor is nearly invisible; a Perception check DC = 10 + your level reveals the shimmer.",
      );

      #techniqueEntry(
        level: 16,
        title: "Greater Sending",
        time: "10 minutes",
        duration: "Special",
        cost: "2 healing surges",
        keywords: ("Communication", "Exploration"),
        description: "Functions like Sending but you treat your Skill Check result as 40 for the purpose of distance/resolution.",
      );

      #techniqueEntry(
        level: 16,
        title: "Stasis Shell",
        time: "1 hour",
        duration: "Until moved more than 5 squares in a round",
        cost: "2 healing surges",
        keywords: "Warding",
        description: "You seal a nonliving object in a thin quintessence shell, halting its passage of time and preventing degradation while the shell holds. The shell ends if the target is moved more than 5 squares in a round.",
      );

      #techniqueEntry(
        level: 20,
        title: "Trace Scrying",
        time: "30 minutes",
        duration: "Until dismissed or discharged",
        cost: "1 committed healing surge",
        keywords: ("Divination", "Scrying", "Warding"),
        description: "When a scrying sensor perceives you, you become aware and may attempt to destroy or trace it. Destroying the sensor ends the scry unless its creator is higher level than you. Tracing requires a Skill Check with a –10 penalty and lets you observe the sensor's creator for 1 round per 5 points of your Skill Check result.",
      );

      #techniqueEntry(
        level: 25,
        title: "Soul Gem",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "4 healing surges and a focus (black sapphire) worth ≥25,000 gp",
        keywords: ("Binding", "Necromancy"),
        description: "You trap a creature's soul (died within last 8 hours) into the focus, preventing its return to life without the focus. The focus holds one soul at a time and can be reused after the soul is freed.",
      );

      #techniqueEntry(
        level: 30,
        title: "Raise Land",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "4 healing surges plus 1 committed healing surge",
        keywords: "Creation",
        description: [You raise the ground in an area around you into the sky. Skill Check result determines radius and height; depth affected is half the radius. Check limits:

          - 24 or lower: up to 20-square radius
          - 25+: 200-square radius
          - 30+: 1-mile radius
          - 40+: up to 10-mile radius

          If kept active continuously for a year and a day, the effect becomes permanent and no committed surge is required.
        ],
      );

      #theme.subSectionTitle(title: "Primal");
      #techniqueEntry(
        level: 1,
        title: "Animal Messenger",
        time: "10 minutes",
        duration: "Special",
        cost: "1 healing surge",
        keywords: ("Communication", "Exploration", "Handling"),
        description: [Choose a non-hostile Tiny animal (such as a sparrow, raven, fox, or carp) and whisper a message of up to 25 words to it, plus a recipient and location. The animal moves toward that location, avoiding danger, and searches for the recipient. Upon finding them, it delivers your message, then returns to its natural behavior. The duration is determined by your Skill Check result:
          - 19 or lower: 6 hours
          - 20 or higher: 12 hours
          - 30 or higher: 18 hours
          - 40 or higher: 24 hours
        ],
      );

      #techniqueEntry(
        level: 1,
        title: "Banish Vermin",
        time: "10 minutes",
        duration: "Special",
        cost: "1 healing surge",
        keywords: ("Hospitality", "Warding"),
        description: [Ward an area up to burst 5 to be anathema to all natural Tiny or smaller vermin, who leave the area and will not re-enter for the duration. The duration is determined by your Skill Check result:
          - 9 or lower: 3 days
          - 10 or higher: 1 week
          - 20 or higher: 2 weeks
          - 40 or higher: 1 month
        ],
      );

      #techniqueEntry(
        level: 1,
        title: "Create Campsite",
        time: "10 minutes",
        duration: "8 hours",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: [You assemble and conceal a 5-square radius campsite, filling gaps in your gear with raw materials from the environment. You and your allies clear the area, set up camp, and prepare food and water. At the end of the duration, you can break down the campsite and conceal evidence of your stay in another 10 minutes. The campsite is well-hidden; the DC to find it is equal to your Skill Check result.],
      );

      #techniqueEntry(
        level: 1,
        title: "Purify Water",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: [Make a Skill Check to purify an amount of water depending on the result:
          - 9 or lower: 1 square
          - 10 or higher: 2 squares
          - 20 or higher: 4 squares
          - 35 or higher: 10 squares
        ],
      );

      #techniqueEntry(
        level: 1,
        title: "Traveler’s Camouflage",
        time: "10 minutes",
        duration: "10 hours",
        cost: "1 committed healing surge",
        keywords: "Deception",
        description: [You and any present allies gain a bonus to Stealth checks while traveling, and creatures tracking you take the same penalty to their Skill Checks. These benefits don’t apply during combat. Your Skill Check result determines the bonus/penalty:
          - 19 or lower: ±2
          - 20 or higher: ±3
          - 30 or higher: ±4
        ],
      );

      #techniqueEntry(
        level: 2,
        title: "Water Walk",
        time: "10 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Exploration", "Storm", "Travel"),
        description: "You or an ally can move on water as if it were solid ground; rapids and rough water count as difficult terrain. The target can choose to immerse or swim instead of walking on the surface.",
      );

      #techniqueEntry(
        level: 3,
        title: "Affect Normal Fire",
        time: "1 minute",
        duration: "8 hours",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: [You can manipulate nonmagical flames within 10 squares as a minor action, creating any of the following effects:
          - Change a fire’s light from bright to dim or vice versa.
          - Double the radius of light a fire produces.
          - Prevent a fire that would produce dim light from producing any light at all as it burns.
          - Extinguish 1 square of nonmagical fire.
          The effect ends when you take an extended rest.
        ],
      );

      #techniqueEntry(
        level: 3,
        title: "Summon Winds",
        time: "10 minutes",
        duration: "8 hours",
        cost: "1 healing surge",
        keywords: ("Exploration", "Storm"),
        description: "You summon a stiff breeze that follows you. If directed into a sailing vessel’s sails, the breeze increases its speed by 2 miles per hour.",
      );

      #techniqueEntry(
        level: 4,
        title: "Travelers’ Feast",
        time: "1 hour",
        duration: "24 hours",
        cost: "1 healing surge",
        keywords: ("Exploration", "Hospitality"),
        description: "You conjure or locate enough food and water to feed five Medium or Small creatures or two Large creatures for 24 hours.",
      );

      #techniqueEntry(
        level: 6,
        title: "Clear the Path",
        time: "30 minutes",
        duration: "Permanent",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: "Remove all debris, rubble, and other detritus from an area burst 3 within 10 squares. Has no effect on solid earth or rock, manufactured structures, traps, or magical barriers.",
      );

      #techniqueEntry(
        level: 6,
        title: "Commune with Nature",
        time: "30 minutes",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: "Divination",
        description: [You can ask primal spirits, beasts, or plants yes-or-no questions about the natural surroundings within 1 mile. Make a Skill Check; you can ask one question plus one more for every 10 points of the check result. The spirits answer honestly.],
      );

      #techniqueEntry(
        level: 6,
        title: "Earthen Ramparts",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Creation", "Warfare"),
        description: [You channel the earth into defensive mounds, creating a wall 2 within 10 squares, 2 squares high. One side is sloped (difficult terrain), the rest are sheer cliffs (DC 20 to climb). For every 10 points of your Skill Check result, create an additional such wall.],
      );

      #techniqueEntry(
        level: 6,
        title: "Find the Path",
        time: "1 hour",
        duration: "Until you reach your destination",
        cost: "1 committed healing surge",
        keywords: ("Divination", "Exploration", "Finding", "Travel"),
        description: "Name a destination (visited or specific known place). You know the shortest route toward it, and a group you lead travels 10 extra miles per day while heading there.",
      );

      #techniqueEntry(
        level: 8,
        title: "Water Breathing",
        time: "10 minutes",
        duration: "Special",
        cost: "1 committed healing surge",
        keywords: "Exploration",
        description: [Up to eight creatures gain the ability to breathe and speak underwater, and their gear is protected from water damage. Does not grant swimming ability. The duration is determined by your Skill Check result:
          - 14 or lower: 1 hour
          - 15 or higher: 2 hours
          - 20 or higher: 4 hours
          - 25 or higher: 8 hours
          - 30 or higher: Until dismissed
        ],
      );

      #techniqueEntry(
        level: 9,
        title: "Tranquil Water",
        time: "10 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: "You still the water around you, reducing the DC to swim within 5 squares of you to 10.",
      );

      #techniqueEntry(
        level: 10,
        title: "Trailblaze",
        time: "10 minutes",
        duration: "8 hours",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: "The wilderness moves aside to let you pass, clearing a path 4 squares wide up to 10 squares ahead and behind you, then closing in your wake. You ignore reductions to overland speed from natural terrain, and the DC to track your party increases by 5.",
      );

      #techniqueEntry(
        level: 12,
        title: "Create Oasis",
        time: "30 minutes",
        duration: "Instantaneous",
        cost: "4 healing surges",
        keywords: "Creation",
        description: [You alter groundwater flow, creating a permanent spring. In desert terrain, it produces 10 gallons of water per day; in other terrains, 50 gallons per hour. If the terrain allows, a pond or creek may form.],
      );

      #techniqueEntry(
        level: 12,
        title: "Earth Glide",
        time: "30 minutes",
        duration: "10 hours",
        cost: "1 healing surge",
        keywords: ("Exploration", "Travel"),
        description: "You and all allies within 5 squares gain overland burrow 5, allowing underground travel at 2.5 miles per hour if not taking other actions. You cannot take any action other than burrowing until you return to the surface.",
      );

      #techniqueEntry(
        level: 14,
        title: "Waterborn",
        time: "10 minutes",
        duration: "Special",
        cost: "1 committed healing surge",
        keywords: "Exploration",
        description: [As Water Breathing, but also grants a swim speed equal to land speed and immunity to cold and pressure of the deep ocean.],
      );

      #techniqueEntry(
        level: 18,
        title: "Stone Speech",
        time: "10 minutes",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: ("Communication", "Divination"),
        description: "You can speak with stones, both natural and worked. They can relate anything they’ve touched or secrets hidden behind or beneath them, with perfect memory for at least a century.",
      );

      #techniqueEntry(
        level: 26,
        title: "Command Island",
        time: "1 hour",
        duration: "24 hours",
        cost: "5 healing surges",
        keywords: ("Exploration", "Travel"),
        description: "You can command an island you are standing on to move in any direction at 1 mile per hour. The island continues for half a mile after you leave, slowing to a stop over an hour. The movement persists for up to 24 hours from initiation.",
      );

      #techniqueEntry(
        level: 30,
        title: "Climate",
        time: "1 hour",
        duration: "10 minutes",
        cost: "4 healing surges plus 1 committed healing surge",
        keywords: ("Exploration", "Storm"),
        description: [You dramatically alter the climate within a 2-mile radius (e.g., desert to snowstorm, rainforest to badlands, summer to winter, or create a monsoon). You cannot directly control specific weather, but the area shifts to the new climate. If maintained for a year and a day, the change becomes permanent and you no longer need to commit a healing surge.],
      );

      #theme.subSectionTitle(title: "Divine");
      #techniqueEntry(
        level: 1,
        title: "Bodily Purity Meditation",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Warding"),
        description: "You gain a +2 power bonus to checks against poisons, diseases, and curses. If you would lose a healing surge as a result of failing a check against a poison, disease, or curse, you can immediately dismiss this technique to avoid losing a healing surge.",
      );

      #techniqueEntry(
        level: 2,
        title: "Blessed Light",
        time: "1 minute",
        duration: "24 hours",
        cost: "1 healing surge",
        keywords: "Divination",
        description: [A Medium or smaller object you touch sheds bright light in a 20-square radius. Any invisible undead creature with level less than or equal to your Skill check result – 10 is illuminated; it retains total concealment, but the square it's located in is revealed.],
      );

      #techniqueEntry(
        level: 2,
        title: "Last Words",
        time: "10 minutes",
        duration: "See text",
        cost: "1 healing surge",
        keywords: ("Divination", "Necromancy"),
        description: [You hear the last words spoken by a creature whose corpse or skull you touch. Your Skill check determines how far before their death you can hear:
          - 19 or lower: 2 rounds
          - 20 or higher: 4 rounds
          - 30 or higher: 6 rounds
          - 40 or higher: 1 minute
        ],
      );

      #techniqueEntry(
        level: 2,
        title: "Spirit Messenger",
        time: "10 minutes",
        duration: "See text",
        cost: "1 healing surge",
        keywords: ("Communication", "Exploration"),
        description: [You name a creature and summon a tiny spirit to deliver a message of up to 10 words to the target. The spirit travels tirelessly at 7 miles per hour over any terrain. Your Skill check result determines how long the spirit travels before giving up:
          - 19 or lower: 12 hours
          - 20 or higher: 1 day
          - 30 or higher: 1 week
          - 40 or higher: limitless duration
        ],
      );

      #techniqueEntry(
        level: 3,
        title: "Oracle’s Thread",
        time: "1 minute",
        duration: "8 hours",
        cost: "1 healing surge",
        keywords: ("Communication", "Exploration"),
        description: "Your movement leaves a magical track behind you that can be seen and followed only by you and up to six allies of your choice (who do not necessarily need to participate in the ritual; you can specify people you know well instead).",
      );

      #techniqueEntry(
        level: 3,
        title: "Trace Undead",
        time: "10 minutes",
        duration: "See text",
        cost: "1 healing surge",
        keywords: ("Divination", "Finding", "Necromancy"),
        description: [You touch a destroyed undead creature and follow its magic back to its creator or controller, learning the distance and direction. Your Skill check result determines the range:
          - 19 or lower: 1,000 feet
          - 20 or higher: 5 miles
          - 30 or higher: 100 miles
          - 40 or higher: anywhere on the same plane
        ],
      );

      #techniqueEntry(
        level: 4,
        title: "Hand of Fate",
        time: "10 minutes",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: "Divination",
        description: "Propose up to three possible courses of action; a translucent blue hand appears and indicates the most rewarding course of action or inaction, based on the likely results of the next hour. The hand judges based on reward rather than risk, favoring high-reward options unless risks are comparable.",
      );

      #techniqueEntry(
        level: 5,
        title: "Daylight",
        time: "1 minute",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: "Exploration",
        description: "You shed bright light in a 30-square radius, and magical darkness effects of a level less than yours within that radius create no darkness.",
      );

      #techniqueEntry(
        level: 5,
        title: "Spirit Grounding",
        time: "1 minute",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: ("Binding", "Necromancy"),
        description: "You force an immaterial haunt or similar spirit into physical form, allowing it to communicate, attack, and be attacked directly (though it may still be incorporeal and take reduced damage). Must be used within the area the target haunts and may require other protective measures.",
      );

      #techniqueEntry(
        level: 6,
        title: "Deathly Shroud",
        time: "10 minutes",
        duration: "Special",
        cost: "1 healing surge",
        keywords: "Deception",
        description: [All creatures, except for undead with Intelligence 10 or higher, perceive you as undead. Powers and wards that affect undead also affect you. The duration is determined by your check result:
          - 14 or less: 1 hour
          - 15 or higher: 2 hours
          - 20 or higher: 4 hours
          - 25 or higher: 8 hours
          - 30 or higher: 24 hours
        ],
      );

      #techniqueEntry(
        level: 6,
        title: "Speak with Dead",
        time: "10 minutes",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: ("Divination", "Necromancy"),
        description: [Ask the corpse of an intelligent creature with an intact face questions, which it will answer honestly. The corpse knows what the creature knew in life and anything that’s occurred within its sight since its death. You can ask one question per 10 points of your skill check result. Exceptional creatures may require a skill challenge to get answers.],
      );

      #techniqueEntry(
        level: 9,
        title: "Dismiss",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Binding",
        description: [You return a willing or helpless extraplanar creature to its home plane. It appears in whatever location on that plane it most considers home, or a random safe location. If you are at least 21st level, you can make a skill check and target up to a number of creatures equal to your check result.],
      );

      #techniqueEntry(
        level: 11,
        title: "Disciple’s Blessing",
        time: "1 hour",
        duration: "24 hours",
        cost: "1 healing surge",
        keywords: "Training",
        description: "You grant another creature the ability to use a technique you know, as long as that technique is no more than two levels higher than their level, even if they lack training in the relevant skill.",
      );

      #techniqueEntry(
        level: 12,
        title: "Skeleton Crew",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "2 committed healing surges",
        keywords: ("Exploration", "Necromancy"),
        description: [You can transmute a number of corpses equal to your Arcana check result into skeletal sailors. They cannot fight, are minions, have defenses equal to your own, and make checks to operate a ship using your modifier. They will obey your commands to operate a ship to the best of their ability but will take no other actions.],
      );

      #techniqueEntry(
        level: 20,
        title: "Succor",
        time: "8 hours",
        duration: "Until discharged",
        cost: "4 healing surges and a focus (holy text) worth 5,000 gp",
        keywords: "Travel",
        description: [You must use this technique inside a shrine, temple, or holy site of your deity. The technique links the focus to the place in which it is used. Any creature holding the focus can activate it as a standard action. At the end of their next turn, they and up to eight willing creatures they can see teleport to the linked holy site, at any distance including across planes, and the technique is discharged. If an effect prevents the teleportation, the technique is not discharged.],
      );

      #colbreak();
      #theme.subSectionTitle(title: "Necromancy");
      #techniqueEntry(
        level: 7,
        title: "Spirit Idol",
        time: "1 hour",
        duration: "Permanent",
        cost: "1 healing surge, and a focus worth 150 gp (small statue of the target)",
        keywords: ("Divination", "Restoration"),
        description: [If the adjacent deceased target is willing, bind their soul to the focus, preventing its passage to the afterlife and preserving their corpse as if affected by the Gentle Repose technique. Once per day, you can ask the bound soul a single question, as if using the Speak with Dead technique.

          Additionally, Raise Dead and similar techniques count only the time before this technique was used when determining whether the corpse can be returned to life. If the focus is destroyed, the soul is released to the afterlife and this technique ends.
        ],
      );

      #techniqueEntry(
        level: 8,
        title: "Raise Dead",
        time: "8 hours",
        duration: "Instantaneous",
        cost: "500 gp for a heroic-tier target, 5,000 gp for a paragon-tier target, or 50,000 gp for an epic-tier target",
        keywords: "Restoration",
        description: [You must have part of the corpse of a willing creature that died no more than 30 days ago, wasn’t petrified, and didn’t die of old age. The target is returned to life, gaining the benefits of an extended rest and ending any temporary conditions suffered at the time of death.

          However, the target takes a -1 death penalty to all attack rolls, saving throws, skill checks, and ability checks until they reach three milestones. Effects that trap the soul or direct divine intervention can prevent this technique from functioning correctly.
        ],
      );
    ]

    #pagebreak();
    #theme.subPageTitle(title: "Physical Techniques")
    #columns(2)[
      #theme.subSectionTitle(title: "Agility");
      #techniqueEntry(
        level: 1,
        title: "Vigilant Spotter",
        time: "1 minute",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: ("Exploration", "Sentinel"),
        description: "You coordinate and direct your allies, ready to assist them if they lose their balance. Whenever an ally within 2 squares fails a Skill Check to balance, they stop moving but don’t fall.",
      )

      #techniqueEntry(
        level: 2,
        title: "Easy Hop",
        time: "1 minute",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Exploration"),
        description: "You treat falls you deliberately choose to take as 20 feet shorter, landing on your feet (and potentially continuing your movement) if this reduces the height of the fall to 0.",
      )

      #techniqueEntry(
        level: 4,
        title: "Unchained Speed",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: "You make a Skill Check to slip free of physical restraints such as manacles. You may use this technique even if you’ve already failed a check to escape those restraints, and failure doesn’t prevent you from trying again. (Note: the usage time is shorter than the usual 5 minutes to escape manacles.)",
      )

      #techniqueEntry(
        level: 5,
        title: "Reliable Balance",
        time: "5 minutes",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: ("Arete", "Exploration"),
        description: "You focus on your center of balance and your footing, allowing you to take 10 on Skill Checks to balance or move across narrow or unsteady surfaces.",
      )

      #techniqueEntry(
        level: 6,
        title: "Escape Artist",
        time: "10 minutes",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: "You and up to eight of your allies can squeeze into and through any gap no smaller than your heads.",
      )

      #techniqueEntry(
        level: 8,
        title: "Agile Climber",
        time: "10 minutes",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: ("Arete", "Exploration"),
        description: "You gain a climb speed of 2. On any turn you use a move action to move with your climb speed, you can’t use actions except to move with your climb speed.",
      )

      #techniqueEntry(
        level: 11,
        title: "Graceful Stance",
        time: "1 minute",
        duration: "Until discharged or dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Exploration"),
        description: "You have perfect balance, and can stand or run on things too narrow or weak to support you normally, with no chance of falling or breaking through. Such surfaces often count as difficult terrain.",
      )

      #techniqueEntry(
        level: 12,
        title: "Ace Dive",
        time: "10 minutes",
        duration: "Until discharged or dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Exploration", "Storm"),
        description: "If you’re flying at least 100 feet above the ground when you start to fall, and you have a fly speed, instead you fall 100 feet and stop falling, discharging this technique.",
      )

      #techniqueEntry(
        level: 15,
        title: "Feather Foot Style",
        time: "1 minute",
        duration: "Until you stop running",
        cost: "1 healing surge",
        keywords: ("Arete", "Exploration"),
        description: "You lighten your step and perfect your balance, allowing you to run across fluid, unstable, and other dangerous surfaces without risk. The surface of water is solid beneath your feet, rice paper doesn’t break as you run across it, and even lava doesn’t burn you so long as you remain in motion.",
      )

      #techniqueEntry(
        level: 16,
        title: "Heroic Landing",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Exploration"),
        description: [When you fall, you take no damage and land on your feet. Ruin a square of terrain around where you land for every 20 points of damage prevented this way (40 points on stone, 60 points on metal or harder terrain), creating difficult terrain and potentially having other effects at the DM’s discretion.],
      )

      #techniqueEntry(
        level: 23,
        title: "Spider Foot Style",
        time: "1 minute",
        duration: "Special",
        cost: "1 healing surge per minute",
        keywords: ("Arete", "Exploration"),
        description: "You can run up walls, stand upside down on horizontal surfaces, and even lay flat against ceilings. The focus required to maintain this technique is intense, and so if you make an attack or use a power it ends immediately.",
      )
      #theme.subSectionTitle(title: "Might");
      #techniqueEntry(
        level: 1,
        title: "Desperate Conversion",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "None (see text)",
        keywords: "Restoration",
        description: "You expend any number of your unused daily arcane powers and regain the same number of expended healing surges. You can’t expend powers of items this way.",
      )

      #techniqueEntry(
        level: 1,
        title: "Make Whole",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "20% of the target’s value",
        keywords: "Creation",
        description: "Through surpassing skill, you swiftly and completely repair a single object, restoring it to perfect condition.",
      )

      #techniqueEntry(
        level: 1,
        title: "Mighty Leap",
        time: "1 minute",
        duration: "1 round",
        cost: "1 healing surge",
        keywords: ("Arete", "Exploration"),
        description: "You carefully prepare yourself, gauging angles and distances, then jump with the grace of a striking hawk. Divide your Skill Check result by 2 instead of 5 or 10 to determine the number of feet (for a high jump) or squares (for a long jump) you clear.",
      )

      #techniqueEntry(
        level: 5,
        title: "Uncanny Might",
        time: "5 minutes",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: ("Arete", "Exploration"),
        description: "You call upon hidden reserves, allowing you to take 10 on Strength Skill Checks to move or break objects or terrain.",
      )

      #techniqueEntry(
        level: 6,
        title: "Sea Dog’s Intuition",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Divination", "Storm"),
        description: "While aboard a ship, you have an intuitive sense of the locations and natures of static underwater hazards within five miles.",
      )

      #techniqueEntry(
        level: 6,
        title: "Seamless Joining",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Creation",
        description: "You join two nonliving objects together permanently, and as smoothly and unnoticeably as possible. If the two objects could fit together naturally—two blocks of stone, two planks of wood, the hilt and blade of a broken sword—the join is perfectly seamless.",
      )

      #techniqueEntry(
        level: 8,
        title: "First Ascent",
        time: "1 minute",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Exploration", "Sentinel"),
        description: "You can identify handholds, pointing out the best routes. Your allies climbing up the same path after you get a +5 power bonus to Skill Checks to climb.",
      )

      #techniqueEntry(
        level: 10,
        title: "Racing Hare Method",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Exploration", "Travel"),
        description: "Your out-of-combat overland speed is tripled. During combat, you cannot give this technique the focus it requires, and you slow to your normal speed until the end of combat.",
      )

      #techniqueEntry(
        level: 14,
        title: "Deck-Strider",
        time: "1 minute",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Exploration", "Storm"),
        description: "While aboard a ship (including airships, spelljammers, and similar exotic vessels), you can move across its deck and rigging without risk of falling, regardless of the environmental conditions or even if the ship is under attack. You can commit an additional healing surge, if you are the captain of the ship, to share the benefits with your crew.",
      )

      #techniqueEntry(
        level: 16,
        title: "Guide the Pack",
        time: "5 minutes",
        duration: "8 hours",
        cost: "2 healing surges",
        keywords: ("Arete", "Exploration", "Travel"),
        description: "This technique functions as Racing Hare Method, except as above and that it increases the speed of an entire group you lead.",
      )
      #theme.subSectionTitle(title: "Sneaking");
      #techniqueEntry(
        level: 1,
        title: "Fog Guardian",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Exploration", "Sentinel"),
        description: "Choose an ally. So long as you remain within 5 squares of the chosen ally, they make Skill checks as if trained in Stealth.",
      )

      #techniqueEntry(
        level: 2,
        title: "Move Silently",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Deception", "Exploration"),
        description: "Creatures take an additional -2 penalty to Perception checks to notice you if they don’t have line of sight to your square.",
      )

      #techniqueEntry(
        level: 6,
        title: "Student of Shadows",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Deception", "Exploration"),
        description: [ "Spend the usage time of this technique scouting an area no larger than 100 squares on a side, then make a Skill check and gain your check result as a pool of points. Spend those points before making Stealth and Thievery checks in the area to exploit the bolt-holes and blind-spots you’ve uncovered, gaining a power bonus on the check equal to the points spent." ],
      )

      #techniqueEntry(
        level: 7,
        title: "Invisible Statue",
        time: "10 minutes",
        duration: "Until you move or attack",
        cost: "1 healing surge",
        keywords: ("Arete", "Deception"),
        description: "You remain perfectly still, blending into the background. You are invisible to sight, though can still be detected by other senses.",
      )

      #techniqueEntry(
        level: 10,
        title: "Easily Overlooked Presence",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Deception"),
        description: [ "You hide in plain sight, remaining unnoticed simply by blending in. Characters automatically fail to notice you until you take some kind of overt action; rolling initiative, displays of heroic prowess, and the like. This effect also fails against any of the following:",
          "• Characters who intend to stop everyone who passes, as for example a checkpoint.",
          "• Characters who know your identity using magical effects to search for you specifically.",
          "• Magical effects that identify “danger,” from a source you pose a direct threat to."
        ],
      )

      #techniqueEntry(
        level: 14,
        title: "Blurred Form",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Deception"),
        description: "Outside of combat, you can make Skill checks to hide without cover or concealment, so long as you are standing still or moving slowly—you simply blend with your surroundings.",
      )

      #techniqueEntry(
        level: 26,
        title: "Fateless Evasion",
        time: "5 minutes",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Deception", "Warding"),
        description: [ "You can hide from Fate itself. Any effect that attempts to obtain information from Fate about you or your activities instead informs the user that no such individual exists. Any effect that relies on Fate to locate its target cannot target you. This technique may also provide similar protections against similar effects, at the DM’s discretion." ],
      )

      #theme.subSectionTitle(title: "Thievery");
      #techniqueEntry(
        level: 2,
        title: "Use Rope",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Binding", "Exploration"),
        description: [
          When tying a creature up, use this technique to get a +10 power bonus to the Skill check to determine the DC to escape.
          Alternatively, you can use this technique to get a +5 power bonus to any check involving a grappling hook, regardless of the skill or ability involved.
        ],
      )

      #techniqueEntry(
        level: 3,
        title: "Ward Campsite",
        time: "30 minutes",
        duration: "8 hours",
        cost: "1 healing surge",
        keywords: "Warding",
        description: [
          You fill an area up to 10 squares by 10 squares with traps and alarms; whenever a creature enters the area who you didn’t previously inform of the trap pattern, you and your allies in the area are instantly awakened and cannot be surprised.
        ],
      )

      #techniqueEntry(
        level: 6,
        title: "Letter Within a Letter",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "2 healing surges",
        keywords: ("Deception", "Linguistics"),
        description: [
          You can embed a hidden message in a document as you write it, choosing a specific familiar character to be able to read it easily as you make subtle allusions only they will recognize.
          The cover document must be at least twice as long as the hidden message.
          Only techniques and magic can recognize the cipher, and even then, a skill check with a DC equal to your skill check result + 10 is required to actually read the hidden message.
        ],
      )

      #techniqueEntry(
        level: 8,
        title: "Lock-Opening Touch",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Exploration",
        description: [
          This technique modifies a Skill check to open a lock.
          If the check fails, the lock opens anyway, but at some other cost—a trap sprung, tools damaged, or unwanted noise made, at the DM’s discretion.
        ],
      )

      #techniqueEntry(
        level: 16,
        title: "Magpie's Talon",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Deception",
        description: [
          You move with imperceptible speed, making a Skill check to pickpocket a creature with a +5 bonus, and doing so at a range of up to 3 squares.
        ],
      )

      #techniqueEntry(
        level: 30,
        title: "Thief of Names",
        time: "1 minute",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Binding", "Deception"),
        description: [
          With a successful Skill check to pickpocket a creature, you can steal their name.
          As long as you commit the healing surge, only you can speak, think, or write their name.
        ],
      )
    ]

    #pagebreak();

    #theme.subPageTitle(title: "Social Techniques")
    #columns(2)[
      #theme.subSectionTitle(title: "Deception")
      #techniqueEntry(
        level: 1,
        title: "Glibness",
        time: "1 minute",
        duration: "10 minutes or until you roll initiative",
        cost: "1 healing surge",
        keywords: ("Arete", "Bard", "Deception"),
        description: [
          You assemble a framework of fabrications in your mind, sprinkling in enough truth to make everything plausible. By focusing on this framework, you can keep your lies consistent, preventing you from being easily caught out; while the duration lasts, when you make a Skill Check to convince characters to believe what you’re saying is true, you roll the check twice and use either result.
        ],
      )

      #techniqueEntry(
        level: 6,
        title: "Subtle Speech",
        time: "1 minute",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Bard", "Deception"),
        description: [
          You can converse in a way that communicates ideas entirely different from the meanings of your words. You and any number of creatures that you choose can speak freely with each other, while your conversation is apparently on an entirely different topic; your discussion of petty politics might hide the details of your heist plans. You must still share a language to communicate this way.
        ],
      )

      #techniqueEntry(
        level: 8,
        title: "Alter Ego",
        time: "1 hour",
        duration: "24 hours or until dismissed",
        cost: "1 committed healing surge",
        keywords: "Deception",
        description: [
          You drastically alter the appearance of yourself or an ally, adjusting facial and physical features, modifying apparent height and weight by up to 10%, and disguising gender, age, and even species (to other humanoids only). Make a Skill Check with a +5 bonus; the check result is the check DC to pierce the disguise. If you or your ally is impersonating a specific creature, and interacting with someone familiar with that creature, they get a +10 bonus to the check.
        ],
      )

      #techniqueEntry(
        level: 8,
        title: "Feign Death",
        time: "10 minutes",
        duration: "24 hours or until dismissed",
        cost: "1 committed healing surge",
        keywords: "Deception",
        description: [
          You enter a deep trance, appearing unconscious or dead as your heartbeat and breathing slow to imperceptibility. You can perceive your surroundings, and end the trance as a free action, but can take no other actions. Make a Skill Check; the check result + 10 is the DC of the check to realize you’re alive.
        ],
      )

      #techniqueEntry(
        level: 11,
        title: "Spurious Presence",
        time: "1 minute",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Deception"),
        description: [
          Your sheer confidence makes it difficult to question your presence. As long as your gear and behavior are normal for the circumstances, characters will not consider your presence suspicious; even if your gear or behavior deviates from expectations, you get a +5 bonus to Skill Checks to establish your right to be there.
        ],
      )

      #techniqueEntry(
        level: 14,
        title: "Stolen Hand",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "2 healing surges",
        keywords: ("Deception", "Linguistics"),
        description: [
          You write a message and leave it unsigned, but echo the writing style of another. Any casual reader will automatically assume the text is written by another character of your choice; only a character who chooses to carefully study the text can make an Insight check opposed by your Skill Check result to realize their error. (This does not necessarily mean that characters will automatically believe the document is genuine; a character who sees through a forgery but not through the Stolen Hand technique may find themselves wondering why the commander would give someone a fake pass instead of a real one!)
        ],
      )

      #techniqueEntry(
        level: 15,
        title: "Second First Impression",
        time: "1 minute",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Bard", "Deception"),
        description: [
          As you begin interacting with someone, you can make a Skill Check against their passive Insight to start the interaction off with a blank slate, dealing with them without any context of your previous interactions. Only when the duration ends do they recall that they have seen you before, and must at that point reconcile their perceptions of your prior interactions with their new impression.
        ],
      )

      #techniqueEntry(
        level: 18,
        title: "Instant Ruse",
        time: "1 second",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Deception",
        description: [
          You make a Skill Check to create a disguise as normal, except you need neither materials nor any appreciable amount of time to do so.
        ],
      )

      #techniqueEntry(
        level: 20,
        title: "Nondescription",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: "Deception",
        description: [
          You can disguise yourself as nobody at all; characters whose checks fail to exceed your Skill Check cannot identify or recall any meaningful details about your appearance.
        ],
      )

      #techniqueEntry(
        level: 21,
        title: "Soul-snaring Pitch",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Bard", "Deception"),
        description: [
          You make a Skill Check to convince a creature that a particular object is its heart’s desire; if you exceed its passive Insight, it becomes certain that it must attain that object by any means necessary. This check is not penalized by the claim or circumstances.
        ],
      )

      #techniqueEntry(
        level: 24,
        title: "Venomous Rumors",
        time: "10 minutes",
        duration: "3 days",
        cost: "1 committed healing surge",
        keywords: ("Bard", "Deception"),
        description: [
          You speak to a group, accusing one of their members of violating the group’s norms and standards. Make a Skill Check; for each creature in the group whose passive Insight you exceed, they believe you so thoroughly as to alter their own perceptions of the slandered creature. When that creature interacts with them, it takes a -5 penalty to Skill Checks like Bluff, Diplomacy, Insight, Intimidate, and Streetwise; any check it fails by 5 or more has results that seemingly prove your accusations.
        ],
      )

      #techniqueEntry(
        level: 28,
        title: "Thousand-Faced Hero",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: "Deception",
        description: [
          You superimpose multiple disguises atop each other, creating different views from different angles. This technique functions as Alter Ego, except the disguised creature is given two different appearances, and can decide which disguise each witness sees.
        ],
      )
      #theme.subSectionTitle(title: "Diplomacy")
      #techniqueEntry(
        level: 1,
        title: "Small Manners",
        time: "1 minute",
        duration: "1 day",
        cost: "1 healing surge",
        keywords: ("Arete", "Bard", "Divination", "Hospitality"),
        description: [
          You adapt to the expectations of an unfamiliar culture, reflexively following its customs and behaving appropriately. You don’t take penalties to Skill Checks for unfamiliarity with the local cultural expectations and group dynamics, and you realize immediately before you’d commit a major faux pas.
        ],
      )

      #techniqueEntry(
        level: 2,
        title: "Irresistible Salesman",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Deception"),
        description: [
          Your mercantile pressure is impossible to ignore. When you make Skill Checks to bargain or convince a character to accept the value you place on something, roll twice and take the higher result.
        ],
      )

      #techniqueEntry(
        level: 3,
        title: "Calm Emotions",
        time: "1 minute",
        duration: "10 minutes",
        cost: "2 healing surges",
        keywords: "Deception",
        description: [
          You must speak uninterrupted for the whole usage time of this technique. Nonhostile humanoid creatures (including you) within 5 squares of you become calm and reasonable, and Skill Checks against affected creatures gain a +2 power bonus. Any violent act within sight or earshot of any affected creature ends the technique, including rolling initiative.
        ],
      )

      #techniqueEntry(
        level: 3,
        title: "Speech Without Words",
        time: "1 minute",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: ("Bard", "Communication", "Linguistics"),
        description: [
          You can communicate nonverbally with a nonhostile creature with Intelligence 4 or higher that you can see, even if you don’t share a common language. Sufficiently complex communications may require a skill challenge, at the DM’s discretion; this technique trivially allows using pantomime to discuss where a monster went, but explaining the precise details of trebuchet design to a giant may be harder.
        ],
      )

      #techniqueEntry(
        level: 10,
        title: "Friend of a Friend",
        time: "10 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Bard", "Deception"),
        description: [
          When you try to persuade someone to inaction, if you reference a strong mutual connection to an individual or culture you share with them, you can make a Skill Check even without any substantive argument for why they should reconsider their plans.
        ],
      )

      #techniqueEntry(
        level: 11,
        title: "Unpleasant Proposal",
        time: "1 minute",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Bard", "Deception"),
        description: [
          You frame your arguments cautiously, ensuring that at worst your offers sound like a necessary evil. Regardless of what persuasion you attempt, it will not damage your reputation among your targets or bystanders, nor ruin any relations you might have with them. This does not guarantee success at persuasion; it merely mitigates the consequences of failure.
        ],
      )

      #techniqueEntry(
        level: 12,
        title: "Potential Revealed",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Bard", "Exploration", "Training"),
        description: [
          This technique enhances an attempt to convince an ordinary, unremarkable, mortal creature to take up heroic pursuit, granting a +5 bonus on any applicable Skill Check. Additionally, a success allows the target to instantly redefine their fundamental motivations to be heroic in nature (though the details are entirely up to them). Furthermore, it ensures that in an amount of time ranging (as dramatically and logistically necessary) from instantaneously to a month at the most, they achieve capability equivalent to 1st level in an adventuring class, and can proceed to advance and otherwise function as a player character from there.
        ],
      )

      #techniqueEntry(
        level: 14,
        title: "Diplomat’s Guile",
        time: "1 minute",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Bard", "Hospitality"),
        description: [
          You cannot be surprised by a creature you’re interacting with socially suddenly becoming violent or hostile, even if you didn’t know the creature was armed or otherwise dangerous.
        ],
      )

      #techniqueEntry(
        level: 21,
        title: "Erode Reason",
        time: "1 hour",
        duration: "1 day",
        cost: "1 healing surge",
        keywords: ("Bard", "Deception"),
        description: [
          To use this technique, the target must debate or otherwise converse with you for the entire hour, as your arguments are carefully designed not to persuade them but to sunder their logic entirely. In the end, the target suffers a nervous breakdown, casting reason aside entirely and acting entirely on emotion for the duration. A creature with passive Insight exceeding your Skill Check result can recognize this technique’s use before it completes.
        ],
      )

      #theme.subSectionTitle(title: "Deduction");
      #techniqueEntry(
        level: 1,
        title: "Humble Approach",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Bard", "Divination", "Hospitality"),
        description: [
          When you make a Skill Check to determine what a creature wants from you, you can roll twice and use either result.
        ],
      )

      #techniqueEntry(
        level: 2,
        title: "Read the Room",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Bard", "Deception"),
        description: [
          When you or one of your allies says something or Skill Check check that worsens a creature’s attitude to indifferent or unfriendly, or gives an accumulated failure in a skill challenge, you can roll your Skill Check contradicting or walking back what was just said twice and use either result.
        ],
      )

      #techniqueEntry(
        level: 5,
        title: "Breach Disguise",
        time: "1 minute",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Divination", "Sentinel"),
        description: [
          You or an ally of your choice focuses on seeing when creatures are not as they appear to be, gaining a +2 power bonus to Insight and Perception checks to see through disguises and disguise-like illusions, and making such checks as if trained.
        ],
      )

      #techniqueEntry(
        level: 6,
        title: "Scent of Guilt",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Divination", "Finding"),
        description: [
          By examining a group of people, or multiple individuals in succession, you can automatically determine which of them is suffering from the strongest feelings of guilt. This technique does not determine in any way the source of the guilt, but it cannot be deceived without the use of another technique.
        ],
      )

      #techniqueEntry(
        level: 8,
        title: "Sagacious Reader",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Divination", "Linguistics"),
        description: [
          You examine a text carefully, reading not only the words but the author. Make an Skill Check for deductive reading; on a success, you learn what strong emotions, principles, or personal connections the author had that informed their writing, if any. Additionally, you gain a +5 bonus to Will defense against any attacks made against you through the writing.
        ],
      )

      #techniqueEntry(
        level: 11,
        title: "Psychometric Touch",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Divination",
        description: [
          You can touch an object and make an Skill Check to gauge the emotional state of the character who last touched it at the time they did. You take a -2 penalty to this check for every day elapsed since then.
        ],
      )

      #techniqueEntry(
        level: 24,
        title: "Soul’s Price",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "2 healing surges",
        keywords: "Divination",
        description: [
          You choose a specific task and make a deductive Skill Check. If you succeed, you learn their price—what would motivate them to be willing to undertake the task—without them realizing you’ve done so. This could be money, the recovery of a lost possession, mere flattery, or anything else.
        ],
      )

      #theme.subSectionTitle(title: "Intimidation");
      #techniqueEntry(
        level: 1,
        title: "Browbeat",
        time: "30 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Divination",
        description: [
          You seek out information aggressively, taking shortcuts and making enemies. Make an Intimidate Skill Check and treat the check result as though you’d spent an hour making a Streetwise check to gather information. After the check, the settlement becomes unfriendly to you, or hostile if it’s already unfriendly.
        ],
      )

      #techniqueEntry(
        level: 2,
        title: "Run Interference",
        time: "1 minute",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Deception", "Sentinel"),
        description: [
          When your allies within 10 squares make a Skill Check to conceal an activity you’re not involved in from people who are aware of your presence, they gain a +2 power bonus to the check.
        ],
      )

      #techniqueEntry(
        level: 3,
        title: "Voice of Thunder",
        time: "10 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Bard", "Communication", "Warfare"),
        description: [
          You can shout loudly enough that everyone can clearly hear you 150 squares away.
        ],
      )

      #techniqueEntry(
        level: 4,
        title: "Ruious Filibuster",
        time: "1 minute",
        duration: "Until you stop speaking",
        cost: "1 healing surge",
        keywords: ("Bard", "Binding"),
        description: [
          Your voice commands attention, bringing any bureaucratic, administrative, business, research, or similar peaceful tasks within earshot to a complete standstill. No meaningful progress can be made towards anything until your monologue or conversation ends.
        ],
      )

      #techniqueEntry(
        level: 8,
        title: "Havoc Festival",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "2 healing surges",
        keywords: ("Bard", "Binding"),
        description: [
          You whip up a crowd into a frenzy to riot or party, at your choice. Make a Skill check and choose up to one of the following for every 10 points of your check result:
          - Nobody can tell you started it.
          - You’re able to slip away before things get going.
          - You can choose someone specific and prevent them from getting out before it’s over without a skill check with DC equal to 10 + your check result.
          - Any evidence you want destroyed is.
          - The venue is demolished.
          - The chaos doesn’t end until after the next sunrise.
        ],
      )

      #techniqueEntry(
        level: 21,
        title: "Hypnotic Fury",
        time: "1 minute",
        duration: "Until complete",
        cost: "1 committed healing surge",
        keywords: ("Bard", "Binding"),
        description: [
          You command a creature’s will with the sheer force of your presence. Make a Skill check against the target’s Will defense. On a success, the target becomes catatonic for an instant, in which you can speak a single short, clear sentence; the target will carry out the command to the best of their ability, then forget having done so. On a failure, the target still doesn’t remember you attempted to use this technique, but suffers no effect and cannot be targeted again for a week.
        ],
      )

      #theme.subSectionTitle(title: "Society");
      #techniqueEntry(
        level: 1,
        title: "Guise of Vulnerability",
        time: "5 minutes",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: "Deception",
        description: [
          You adopt a manner that makes you appear to be the perfect target for a type of crime of your choice; confidence artists will see you as an easy mark, gamblers will try to invite you to a game, thugs will try to rob you, or so forth.
        ],
      )

      #techniqueEntry(
        level: 1,
        title: "Guise of Familiarity",
        time: "5 minutes",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: "Deception",
        description: [
          You adopt a manner that makes you appear—to criminal types—to be a fellow outlaw; a possible supplier for their vices, a reasonable candidate for recruitment into their organization, or some similar scoundrel.
        ],
      )

      #techniqueEntry(
        level: 5,
        title: "Prey Upon Uncertainty",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Bard", "Deception", "Divination"),
        description: [
          When someone catches you in a place in which you are not permitted, you immediately become aware of a gap in their knowledge (if any exists) which offers you an exploitable opportunity. If a soldier is expecting a messenger, you might intuit they’ve never seen that messenger before; if an instructor doesn’t know the names of all of their students, you realize as much. This technique does not guarantee any success at exploiting the opportunity, merely opens up the possibility.
        ],
      )

      #techniqueEntry(
        level: 5,
        title: "Tongues",
        time: "1 minute",
        duration: "10 minutes",
        cost: "1 healing surge",
        keywords: "Communication",
        description: [
          You or one ally gains the ability to speak and understand all languages. Creatures that can hear the target understand what he or she says as if he or she were speaking their native language. If the target can hear another creature that is speaking a language, he or she understands what that creature says as if it were speaking the target's native language.
        ],
      )
    ]

    #pagebreak();
    #theme.subPageTitle(title: "Medical Techniques")
    #columns(2)[
      #techniqueEntry(
        level: 2,
        title: "Share Vitality",
        time: "5 minutes",
        duration: "Instantaneous",
        cost: "Any number of healing surges",
        keywords: "Restoration",
        description: [
          One participant in the ritual gains all but one of the healing surges spent, up to the limit of their usual maximum.
        ],
      )

      #techniqueEntry(
        level: 4,
        title: "Delay Affliction",
        time: "1 hour",
        duration: "Instantaneous",
        cost: "1 healing surge and 50 gp (in salves and medicines)",
        keywords: "Restoration",
        description: [
          Delay a charm, confusion, curse, domination, fear, insanity, poison, polymorph, or petrification effect from taking effect on a single creature, including all its side effects. Make a Skill Check to cure or heal with a penalty equal to the level of the effect or the creature that caused it, and use the result to determine the duration of the delay:
          - 1–9: one day
          - 10–19: three days
          - 20–29: a week
          - 30 or higher: two weeks
        ],
      )

      #techniqueEntry(
        level: 6,
        title: "Cure Disease",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "150 gp (in salves and medicines)",
        keywords: "Restoration",
        description: [
          Entirely remove a disease from a single creature, including all its side effects and symptoms. This technique draws heavily on the target’s own vitality and may seriously harm them; make a Skill check, with a penalty equal to the level of the disease. The result of this Skill check determines how much damage the target takes:
          - 0 or lower: The target does not survive the procedure.
          - 1–9: The target takes damage equal to their maximum hit points.
          - 10–19: The target takes damage equal to their bloodied value.
          - 20–29: The target takes damage equal to their healing surge value.
          - 30 or higher: The target takes no damage.
          You learn the level of the target disease when you begin the technique and can choose not to expend any components or continue the technique when you do.
        ],
      )

      #techniqueEntry(
        level: 8,
        title: "Remove Affliction",
        time: "1 hour",
        duration: "Instantaneous",
        cost: "250 gp (in salves and medicines)",
        keywords: "Restoration",
        description: [
          Completely remove a charm, confusion, curse, domination, fear, insanity, poison, polymorph, or petrification effect from a single creature, including all its side effects. This technique draws heavily on the target’s own vitality and may seriously harm them.
          Make a Skill Check, with a penalty equal to the level of the effect or the creature that caused it. The result of the Skill Check determines how much damage the target takes:
          - 0 or lower: The target did not survive the procedure.
          - 1–9: The target takes damage equal to their maximum hit points.
          - 10–19: The target takes damage equal to their bloodied value.
          - 20–29: The target takes damage equal to their healing surge value.
          - 30 or higher: The target takes no damage.
          You learn the level of the target’s affliction when you begin the technique and can choose not to expend any components or continue the technique if desired.
          You can use this technique on an unwilling subject, but you will need to restrain or incapacitate them for the hour necessary to perform the procedure.
        ],
      )

      #techniqueEntry(
        level: 18,
        title: "Mind Surgery",
        time: "1 hour",
        duration: "Permanent",
        cost: "7,000 gp (in salves and medicines)",
        keywords: ("Binding", "Restoration"),
        description: [
          Erase a single memory from either a willing creature or a helpless creature whose Will defense is less than or equal to your Skill Check result. This technique draws heavily on the target’s own vitality and may seriously harm them.
          Make a Skill Check and the result determines how much damage the target takes:
          - 14 or lower: The target did not survive the procedure.
          - 15–24: The target takes damage equal to their maximum hit points.
          - 25–34: The target takes damage equal to their bloodied value.
          - 35–44: The target takes damage equal to their healing surge value.
          - 45 or higher: The target takes no damage.
        ],
      )

      #techniqueEntry(
        level: 21,
        title: "Instant Treatment",
        time: "2 full rounds",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Restoration",
        description: [
          This technique functions as Cure Disease or Remove Affliction, at the user’s choice, except as described above.
        ],
      )
    ]

    #pagebreak();
    #theme.subPageTitle(title: "Lore Techniques")
    #columns(2)[
      #techniqueEntry(
        level: 1,
        title: "Panoply Lore",
        time: "1 full round",
        duration: "Instantaneous",
        cost: "1 healing surge (see text)",
        keywords: "Divination",
        description: [
          You identify a magic item as if you’d spent a rest examining it. Additionally, you learn either a previous user or the creator of the item (at the DM’s choice), and any cultural significance or value it may have. Additional uses of Panoply Lore after the first each day have no cost.
        ],
      )

      #techniqueEntry(
        level: 2,
        title: "Heraldic Lore",
        time: "5 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Arete", "Divination"),
        description: [
          You focus your knowledge of nobility and peerage. For the duration, you can take 10 on Skill Checks to identify nobles, their names, crests, signets, and other associated symbology.
        ],
      )

      #techniqueEntry(
        level: 4,
        title: "High Ground Stratagem",
        time: "10 minutes",
        duration: "Until dismissed or initiative is rolled",
        cost: "1 committed healing surge",
        keywords: ("Deception", "Warfare"),
        description: [
          You recall classic techniques for forcing the enemy onto terrain of your choosing. Whenever you make Skill checks to secure favorable terrain to fight on, you can roll those checks twice and take the higher result.
        ],
      )

      #techniqueEntry(
        level: 6,
        title: "Decipher Script",
        time: "10 minutes per page",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Divination", "Linguistics"),
        description: [
          You can use this technique to read any text you study, even if you don’t know the relevant language; this also applies to most secret, ancient, and other normally untranslatable languages. This does not protect you from any magical or cognitive dangers of reading the text.
          Additionally, you can use this technique to attempt to read ciphered text; when you do, you automatically succeed at breaking ordinary (Caesar, Atbash, etc.) ciphers, gain a +2 power bonus to Skill Checks opposing any check involved in creating more advanced ciphers, and with a Skill check result of 30 or higher, you reduce the time required to use the ritual to 1 minute per page.
        ],
      )

      #techniqueEntry(
        level: 8,
        title: "Whirling Brush",
        time: "Special (up to one day)",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Creation", "Linguistics"),
        description: [
          You write with superhuman speed—penning a letter in seconds, transcribing a conversation in real time, copying a book in a single day. This technique applies to a single document, regardless of its size; an additional healing surge must be spent to write or copy another.
        ],
      )

      #techniqueEntry(
        level: 14,
        title: "Discerning Eye",
        time: "10 minutes",
        duration: "1 hour",
        cost: "1 healing surge",
        keywords: ("Divination", "Linguistics"),
        description: [
          You can reconstruct by eye writing that was once readable but has since been damaged or erased. Worn-away monuments, faded inks, and water-damaged books are all readable to the master historian. Only inscriptions crushed to sand or papers burnt to ashes are beyond your ability to study.
        ],
      )

      #techniqueEntry(
        level: 28,
        title: "Unbreakable Fascination",
        time: "1 hour",
        duration: "Instantaneous",
        cost: "2 healing surges",
        keywords: ("Binding", "Linguistics"),
        description: [
          You can write a document that ensnares its reader; with a successful skill check against the Will defense of a character that reads even a single line of it, they must continue reading for 5 minutes, until they finish the document, or until they’re in direct physical danger—whichever comes first.
        ],
      )

      #techniqueEntry(
        level: 30,
        title: "Doom of Cycles",
        time: "1 week",
        duration: "1 year",
        cost: "Focus (a library or other repository of knowledge) worth at least 50,000 gp",
        keywords: ("Binding", "Divination"),
        description: [
          You spend a week studying the history of a region in great detail, then conclude it is on the precipice of some great calamity. Make a skill check, and the DM will choose a calamity that you have realized is about to befall the region based on the check result:
          - 29 or lower: no calamity occurs
          - 30 or higher: a relatively ordinary natural disaster, like a flash flood that washes out roads or a drought that ruins crops
          - 40 or higher: a true calamity, like a tsunami that devastates a nation’s ports or a volcanic eruption that obliterates a city
          - 50 or higher: an apocalyptic doom, like a falling star that wreaks region-wide destruction or an army of undead rising from the ground
          The calamity you predict will begin within 1 week after you make your prediction, and its effects will bring ruin to the region for at least a year.
        ],
      )
    ]

    #pagebreak();
    #theme.subPageTitle(title: "Observation Techniques")
    #columns(2)[
      #techniqueEntry(
        level: 1,
        title: "Tracker’s Eye",
        time: "10 minutes",
        duration: "Instantaneous, and until you take an extended rest",
        cost: "1 healing surge",
        keywords: ("Divination", "Finding"),
        description: [
          You closely examine a set of tracks and make a Skill check. Based on your result, you learn the following information:
          - 10 or higher: Species, numbers, and travel direction of any natural humanoids.
          - 20 or higher: Species, numbers, and travel direction of any natural creatures.
          - 30 or higher: Pace, species, numbers, and travel direction of all creatures.
          - 40 or higher: Whether the creatures were encumbered, injured, or under other effects altering their movement.
        ],
      )

      #techniqueEntry(
        level: 2,
        title: "Frugal Analysis",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: "Divination",
        description: [
          You instantly determine the quality and condition of any goods or objects within your sight. This technique reveals the current state and craftsmanship but does not tell you the market value or intended use unless you already know it.
        ],
      )

      #techniqueEntry(
        level: 4,
        title: "Feeling the Air",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Exploration"),
        description: [
          When visibility is poor, you rely on your heightened sense of touch and the movement of air currents to guide your vision. As long as there is even the faintest light (such as sparks from clashing blades), you gain darkvision.
        ],
      )

      #techniqueEntry(
        level: 5,
        title: "Thorough Search",
        time: "1 hour",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Divination", "Finding"),
        description: [
          You scour a room for secrets and clues, gaining a +20 bonus to your Skill check to search the room. Extremely large areas may require this technique to be used in each sub-area, at the DM's discretion.
        ],
      )

      #techniqueEntry(
        level: 6,
        title: "Reasonable Paranoia",
        time: "1 hour",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Arete", "Divination", "Sentinel"),
        description: [
          You always know whether you are being watched.
        ],
      )

      #techniqueEntry(
        level: 6,
        title: "Tampering Detection",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Divination", "Finding"),
        description: [
          You carefully examine a single object, determining whether it has been tampered with in the past year—whether someone attempted to pick a lock, crack a safe, rummage through a drawer, forge a signature, or so forth. This technique determines whether tampering occurred and how, but not who, when, or why.
        ],
      )

      #techniqueEntry(
        level: 8,
        title: "Inquisitive’s Eyes",
        time: "10 minutes",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Divination", "Finding"),
        description: [
          You carefully examine the area around you, reconstructing how it must have looked at a previous time, up to a number of hours ago equal to your Skill check result. You can observe the scene as if you were there at that time, but cannot affect or interact with anything. For example, if there was a previously closed box there, you cannot open it and look inside.
        ],
      )

      #techniqueEntry(
        level: 10,
        title: "Light Sleeper",
        time: "1 hour",
        duration: "8 hours",
        cost: "1 healing surge",
        keywords: ("Arete", "Exploration", "Sentinel"),
        description: [
          You take no penalties to Skill checks while asleep or otherwise unconscious. If you succeed on a Skill check to notice an enemy or other source of danger, you awaken instantly and are immediately ready to act.
        ],
      )

      #techniqueEntry(
        level: 11,
        title: "Crafty Profiling",
        time: "1 hour",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Divination", "Finding"),
        description: [
          You can sort through physical evidence or possessions to construct a psychological profile of the character responsible, even if they are not present. Make a Skill check opposed by their passive Bluff. On a success, you gain a general understanding of their mentality, and you will automatically notice when you encounter a character or evidence that fits the profile.
        ],
      )

      #techniqueEntry(
        level: 21,
        title: "Ingenious Palate",
        time: "1 minute",
        duration: "Instantaneous",
        cost: "1 healing surge",
        keywords: ("Arete", "Divination"),
        description: [
          With a single bite of a meal or sip of a drink, you can analyze the emotions that went into its preparation. Make a Skill check (with the bonus from Keen Taste & Smell, if applicable) and use the check result as if it were an Insight check against the chef.
        ],
      )

      #techniqueEntry(
        level: 23,
        title: "Dedicated Ear",
        time: "8 hours",
        duration: "Until dismissed",
        cost: "1 committed healing surge",
        keywords: ("Divination", "Sentinel"),
        description: [
          When a creature you know personally and well speaks and addresses their words to you, you can hear all they wish to say to you, no matter how far away you are. The only restriction is that you must be on the same plane of existence as the speaker.
        ],
      )

      #techniqueEntry(
        level: 28,
        title: "Unerring Eye",
        time: "1 minute",
        duration: "1 round",
        cost: "1 healing surge",
        keywords: ("Binding", "Divination"),
        description: [
          You scan an area out to 20 squares away, making both magical and mundane stealth impossible. You see through solid walls and other opaque objects, dissolving fog and smoke under the intensity of your gaze, rendering invisible or out-of-phase things visible, melting away magical and mundane disguises, and forcing shapeshifters back into their true form. Make a Skill check to determine the effectiveness of the scan.
        ],
      )
    ]
  ]
}
