#import "../helpers/shared.typ";


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
    #shared.pageTitle(title: "Classes")
    #image("../images/classes_parent.jpg", width: 100%);
    #pagebreak();

    #shared.subPageTitle(title: "Leaders")
    #pagebreak();
    #_getLeaderPages();

    #shared.subPageTitle(title: "Controllers")
    #pagebreak();
    #_getControllerPages();
  ]
}


