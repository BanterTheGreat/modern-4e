
#import "./helpers/shared.typ": center-color, edge-color, header-color, pageTitle;

#import "./classes/cleric.typ";

#import "./ancestries/goblin.typ";
#import "./ancestries/halfling.typ";
#import "./ancestries/dragonborn.typ";
#import "./ancestries/dwarf.typ";
#import "./ancestries/elf.typ";
#import "./ancestries/kobold.typ";
#import "./ancestries/human.typ";
#import "./ancestries/goliath.typ";

#import "glossary/themes.typ";
#import "glossary/equipment.typ";
#import "glossary/feats.typ";
#import "glossary/backgrounds.typ";
#import "glossary/utility.typ";
#import "glossary/creation & advancement.typ" as creationAndAdvancement;

#let showPages(pages: (())) = {
  pages.join(pagebreak())
}

#let getAncestryPages() = {
  return (
    goliath.goliathPage(),
    human.humanPage(),
    kobold.koboldPage(),
    elf.elfPage(),
    dwarf.dwarfPage(),
    dragonborn.dragonbornPage(),
    halfling.halflingPage(),
    goblin.goblinPage(),
  ).join(pagebreak());
}

#set page(
  paper: "a4",
  numbering: "1",
  margin: (top: 1cm, rest: 2cm),
  fill: rgb("#F0E3C7"),
  background: {
    place(top + left, rect(width: 100%, height: 15%, fill: gradient.linear(edge-color, center-color, angle: 90deg)))
    place(bottom + left, rect(width: 100%, height: 15%, fill: gradient.linear(
      center-color,
      edge-color,
      angle: 90deg,
    )))
    place(top + left, rect(width: 15%, height: 100%, fill: gradient.linear(edge-color, center-color, angle: 0deg)))
    place(top + right, rect(width: 15%, height: 100%, fill: gradient.linear(center-color, edge-color, angle: 0deg)))
  },
)

#show heading.where(level: 1): it => box(align(center)[#box(
  it,
  width: 100%,
  inset: 6pt,
  fill: header-color,
)]);

#outline(target: heading.where(numbering: "1."));
#pagebreak();

#showPages(
  pages: (
    getAncestryPages(),
    creationAndAdvancement.creationAndAdvancementPage(),
    utility.utilityPage(),
    backgrounds.backgroundPage(),
    feats.featsPage(),
    equipment.equipmentPage(),
    themes.themesPage(),
    cleric.classPage(),
  ),
);