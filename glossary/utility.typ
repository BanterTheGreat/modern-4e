#import "../helpers/theme.typ" as theme;
#import "../helpers/powers.typ";

#import "./utility/utility-strength.typ" as strength;
#import "./utility/utility-dexterity.typ" as dexterity;
#import "./utility/utility-constitution.typ" as constitution;
#import "./utility/utility-intelligence.typ" as intelligence;
#import "./utility/utility-wisdom.typ" as wisdom;
#import "./utility/utility-charisma.typ" as charisma;

#let utilityPage() = {
  return [
    #theme.pageTitle(title: "Utility Powers");
    These Utility powers are free to choose for any character, as long as they meet the prerequisite ability score and level.
    #columns(2)[
      = Strength
      #strength.strengthUtilities();
      = Dexterity
      #dexterity.dexterityUtilities();
      = Constitution
      #constitution.constitutionUtilities();
      = Intelligence
      #intelligence.intelligenceUtilities();
      = Wisdom
      #wisdom.wisdomUtilities();
      = Charisma
      #charisma.charismaUtilities();
    ]
    #pagebreak();

    = Level 6
    #columns(3)[
      HISTORY!
    ]
  ]
}
