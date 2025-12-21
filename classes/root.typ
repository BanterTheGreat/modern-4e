#import "../helpers/theme.typ" as theme;


#import "./cleric.typ";
#import "./artificer.typ";
#import "./wizard.typ";
#import "./fighter.typ";

#let classesPage() = {
  let _getLeaderPages() = {
    return (
      cleric.clericPage(),
      artificer.artificerPage(),
    ).join(pagebreak())
  }

  let _getControllerPages() = {
    return (
      wizard.wizardPage(),
    ).join(pagebreak())
  }

  let _getStrikerPages() = {
    return (
      fighter.fighterPage(),
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
  ]
}


