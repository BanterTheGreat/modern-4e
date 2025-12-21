#import "../helpers/theme.typ" as theme;


#import "./cleric.typ";
#import "./artificer.typ";
#import "./wizard.typ";

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

  return [
    #theme.pageTitle(title: "Classes")
    #image("../images/classes_parent.jpg", width: 100%);
    #pagebreak();

    #theme.subPageTitle(title: "Leaders")
    #pagebreak();
    #_getLeaderPages();

    #theme.subPageTitle(title: "Controllers")
    #pagebreak();
    #_getControllerPages();
  ]
}


