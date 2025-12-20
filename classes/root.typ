#import "../helpers/shared.typ";


#import "./cleric.typ";

#let classesPage() = {
  let _getLeaderPages() = {
  return (
    cleric.clericPage(),
  ).join(pagebreak())
}

  return [
    #shared.pageTitle(title: "Classes")
    #image("../images/classes_parent.jpg", width: 100%);
    #pagebreak();

    #shared.subPageTitle(title: "Leaders")
    #pagebreak();
    #_getLeaderPages();
  ]
}


