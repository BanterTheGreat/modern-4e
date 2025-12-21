#import "../helpers/theme.typ" as theme;


#import "./goblin.typ";
#import "./halfling.typ";
#import "./dragonborn.typ";
#import "./dwarf.typ";
#import "./elf.typ";
#import "./kobold.typ";
#import "./human.typ";
#import "./goliath.typ";
#import "./warforged.typ";
#import "./revenant.typ";
#import "./orc.typ";
#import "./tiefling.typ";

#let ancestriesPage() = {
  let _getAncestryPages() = {
  return (
    dragonborn.dragonbornPage(),
    dwarf.dwarfPage(),
    elf.elfPage(),
    goblin.goblinPage(),
    goliath.goliathPage(),
    halfling.halflingPage(),
    kobold.koboldPage(),
    human.humanPage(),
    orc.orcPage(),
    revenant.revenantPage(),
    tiefling.tieflingPage(),
    warforged.warforgedPage(),
  ).join(pagebreak())
}

  return [
    #theme.pageTitle(title: "Ancestries")
    #image("../images/ancestries_parent.png", width: 100%);
    #pagebreak();
    #_getAncestryPages();
  ]
}


