
#import "./helpers/shared.typ": centerColor, edgeColor, headerColor, pageTitle;

#import "./ancestries/root.typ" as ancestries;
#import "./classes/root.typ" as classes;

#import "glossary/themes.typ";
#import "glossary/equipment.typ";
#import "glossary/feats.typ";
#import "glossary/backgrounds.typ";
#import "glossary/utility.typ";
#import "glossary/creation & advancement.typ" as creationAndAdvancement;
#import "glossary/skill_checks.typ" as skillChecks;

#let showPages(pages: (())) = {
  pages.join(pagebreak())
}

#set page(
  paper: "a4",
  numbering: "1",
  margin: (top: 1cm, rest: 2cm),
  fill: rgb("#F0E3C7"),
  background: {
    place(top + left, rect(width: 100%, height: 15%, fill: gradient.linear(edgeColor, centerColor, angle: 90deg)))
    place(bottom + left, rect(width: 100%, height: 15%, fill: gradient.linear(
      centerColor,
      edgeColor,
      angle: 90deg,
    )))
    place(top + left, rect(width: 15%, height: 100%, fill: gradient.linear(edgeColor, centerColor, angle: 0deg)))
    place(top + right, rect(width: 15%, height: 100%, fill: gradient.linear(centerColor, edgeColor, angle: 0deg)))
  },
)

#show heading.where(level: 1): it => box(align(center)[#box(
  it,
  width: 100%,
  inset: 6pt,
  fill: headerColor,
)]);

#show heading.where(level: 2): it => box(align(center)[#box(
  it,
  width: 100%,
  inset: 6pt,
  fill: headerColor,
)]);

#outline(target: heading.where(numbering: "1."));
#pagebreak();

#showPages(
  pages: (
    creationAndAdvancement.creationAndAdvancementPage(),
    ancestries.ancestriesPage(),
    classes.classesPage(),
    backgrounds.backgroundPage(),
    equipment.equipmentPage(),
    themes.themesPage(),
    feats.featsPage(),
    utility.utilityPage(),
    skillChecks.skillChecksPage(),
  ),
);