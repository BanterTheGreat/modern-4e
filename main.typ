#import "helpers/theme.typ" as theme;

#import "./ancestries/root.typ" as ancestries;
#import "./classes/root.typ" as classes;

#import "glossary/themes.typ";
#import "glossary/equipment.typ";
#import "glossary/feats.typ";
#import "glossary/backgrounds.typ";
#import "glossary/utility.typ";
#import "glossary/creation & advancement.typ" as creationAndAdvancement;
#import "glossary/skill_checks.typ" as skillChecks;
#import "glossary/techniques.typ" as techniques;

#let showPages(pages: ()) = {
  pages.join(pagebreak())
}

#set page(
  paper: "a4",
  numbering: "1",
  margin: (top: 1cm, rest: 2cm),
  fill: rgb("#F0E3C7"),
  background: {
    place(top + left, rect(width: 100%, height: 15%, fill: gradient.linear(
      theme.edgeColor,
      theme.centerColor,
      angle: 90deg,
    )))
    place(bottom + left, rect(width: 100%, height: 15%, fill: gradient.linear(
      theme.centerColor,
      theme.edgeColor,
      angle: 90deg,
    )))
    place(top + left, rect(width: 15%, height: 100%, fill: gradient.linear(
      theme.edgeColor,
      theme.centerColor,
      angle: 0deg,
    )))
    place(top + right, rect(width: 15%, height: 100%, fill: gradient.linear(
      theme.centerColor,
      theme.edgeColor,
      angle: 0deg,
    )))
  },
)

#show table: it => theme.transparentBlock(content: it); 

#show heading.where(level: 1): it => theme.transparentBlock(above: 12pt, below: 6pt, content: [
  #box(align(center)[#box(
    it,
    width: 100%,
    inset: 6pt,
    fill: theme.headerColor,
  )])]);

#show heading.where(numbering: "1.", level: 2): it => theme.transparentBlock(spacing: 12pt, content: [
  #box(align(center)[#box(
    it,
    width: 100%,
    inset: 6pt,
    fill: theme.headerColor,
  )])]);

#show heading.where(numbering: "1.", level: 3): it => theme.transparentBlock(below: 3pt, content: [#box(align(
  center,
)[#box(
  it,
  width: 100%,
  inset: 6pt,
  fill: theme.headerColor,
)])]);


#align(center)[
  #text([== *Trimmed Fourth Edition*], size: 32pt)];
#image("./images/cover.jpg");
#pagebreak();

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
    techniques.techniquesPage(),
  ),
);
