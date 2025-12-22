#import "../helpers/theme.typ" as theme;

#import "./cleric.typ";
#import "./artificer.typ";
#import "./wizard.typ";
#import "./fighter.typ";
#import "./warlord.typ";
#import "./invoker.typ";
#import "./warlock.typ";
#import "./runepriest.typ";
#import "./rogue.typ";
#import "./warden.typ";
#import "./ranger.typ";
#import "./sorcerer.typ";
#import "./shaman.typ";
#import "./paladin.typ";
#import "./swordmage.typ";

#let classesPage() = {
  let _getLeaderPages() = {
    return (
      artificer.artificerPage(),
      cleric.clericPage(),
      shaman.shamanPage(),
      runepriest.runePriestPage(),
      warlord.warlordPage(),
    ).join(pagebreak())
  }

  let _getControllerPages() = {
    return (
      invoker.invokerPage(),
      wizard.wizardPage(),
    ).join(pagebreak())
  }

  let _getStrikerPages() = {
    return (
      ranger.rangerPage(),
      rogue.roguePage(),
      sorcerer.sorcererPage(),
      warlock.warlockPage(),
    ).join(pagebreak())
  }

  let _getDefenderPages() = {
  return (
    fighter.fighterPage(),
    paladin.paladinPage(),
    swordmage.swordmagePage(),
    warden.wardenPage(),

  ).join(pagebreak())
}

  return [
    #theme.pageTitle(title: "Classes")
    #image("../images/classes_parent.jpg", width: 100%);
    #pagebreak();

    #theme.subPageTitle(title: "Leaders")
    #align(center)[#image("../images/leader_parent.png", width: 80%)];
    #pagebreak();
    #_getLeaderPages();
    #pagebreak();

    #theme.subPageTitle(title: "Controllers")
    #pagebreak();
    #_getControllerPages();
    #pagebreak();

    #theme.subPageTitle(title: "Strikers")
    #align(center)[#image("../images/striker_parent.jpg", width: 95%)];
    #pagebreak();
    #_getStrikerPages();
    #pagebreak();

    #theme.subPageTitle(title: "Defenders")
    #pagebreak();
    #_getDefenderPages();
    #pagebreak();
  ]
}


