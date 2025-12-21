#import "../helpers/theme.typ" as theme;

#let creationAndAdvancementPage() = {
  return [
    #theme.pageTitle(title: "Character Creation & Advancement");
    = Character Creation
  A character can be created in 6 simple steps:

    == 1. Choose an Ancestry
    Choose a ancestry from Ancestries, this will give you 2 passive abilities and an encounter power.

    == 2. Create a Background for your Character and write a Title.
    Think of your character’s Backgrounds and write some of his prior experiences down. You have 6 points to assign total, with a maximum of 5 in a single background entry. Make sure to make it evocative and not too broad. For your title, write down a short piece of text which would be used to refer to your legend in a way. Once again, make sure it is not too broad.

    == 3. Choose a Class
    Choose a class from Classes, this will decide your main playstyle during combat. Make sure you write down any choices you make during class selection, such as powers selected.

    == 4. Gather your Equipment
    Choose your starting equipment from Equipment. Make sure to write down any choices you make during equipment selection, such as weapon types. You may select a weapon, an armor, a shield and if proficient an implement.

    == 5. Choose a Theme
    Themes are a kind subtrack you can pick which come with some benefits. You may choose one.

    == 6. Choose a Feat
    You may choose 1 Feat from either your Ancestry, Class or the general Feats list.

    #pagebreak()
    = Character Advancement
    When your character levels up, you gain new features & abilities. In this table you can find what you get.

    #table(
    columns: (0.5fr, 1fr, 1fr, 0.75fr, 0.75fr, 1fr),
    stroke: 0.5pt + rgb("#D4C4A0"),
    align: left,
    fill: (col, row) => theme.defaultTableStyle()(col, row),
    inset: 8pt,
    [*Level*], [*Ability Increases*], [*Powers and Features*], [*Feats*], [*Techniques*], [*Total Powers (A/E/D/U)*],

    [1st], [See class], [class features; racial traits; gain 1 feat; gain 6 background points; gain 2 at-will attack powers; gain 1 encounter attack power; gain 1 daily attack power], [1], [0], [2/1/2/0],
    [2nd], [—], [gain 1 utility power; gain 1 feat; gain 1 technique], [2], [1], [2/1/2/1],
    [3rd], [—], [gain 1 encounter attack power], [2], [1], [2/2/2/1],
    [4th], [+1 to non-main], [gain 1 feat; gain 1 technique], [3], [2], [2/2/2/1],
    [5th], [—], [gain 1 daily attack power], [3], [2], [2/2/3/1],
    [6th], [—], [gain 1 utility power; gain 1 feat; gain 1 background point; gain 1 technique], [4], [3], [2/2/3/2],
    [7th], [—], [gain 1 encounter attack power], [4], [3], [2/3/3/2],
    [8th], [+1 to main], [gain 1 feat; gain 1 technique], [5], [4], [2/3/3/2],
    [9th], [—], [replace 1 daily attack power], [5], [4], [2/3/3/2],
    [10th], [—], [gain 1 utility power; gain 1 feat; gain 1 technique], [6], [5], [2/3/3/3],
    [11th], [—], [#block("paragon path features; gain 1 paragon path encounter attack power; gain 1 feat; gain 1 background point", breakable: false)], [7], [5], [2/4/3/3],
    [12th], [+1 to non-main], [gain 1 paragon path utility power; gain 1 feat; gain 1 technique], [8], [6], [2/4/3/4],
    [13th], [—], [gain 1 encounter attack power], [8], [6], [2/4/4/4],
    [14th], [—], [gain 1 feat; gain 1 technique], [9], [7], [2/4/4/4],
    [15th], [—], [replace 1 daily attack power], [9], [7], [2/4/4/4],
    [16th], [+1 to all], [paragon path feature; gain 1 feat; gain 1 background point; gain 1 technique], [10], [8], [2/4/4/5],
    [17th], [—], [gain 1 utility power; gain 1 feat], [10], [8], [2/4/4/5],
    [18th], [—], [gain 1 feat; gain 1 technique], [11], [9], [2/4/4/5],
    [19th], [—], [replace 1 daily attack power], [11], [9], [2/4/4/5],
    [20th], [+1 to main], [gain 1 paragon path daily attack power; gain 1 feat; gain 1 technique], [12], [10], [2/4/4/5],
    [21st], [—], [epic destiny feature; gain 1 feat; gain 1 background point], [13], [10], [2/4/4/5],
    [22nd], [—], [gain 1 utility power; gain 1 feat; gain 1 technique], [13], [11], [2/4/4/6],
    [23rd], [—], [replace 1 encounter attack power], [14], [11], [2/4/4/6],
    [24th], [+1 to non-main], [epic destiny feature; gain 1 feat; gain 1 technique], [14], [12], [2/4/4/6],
    [25th], [—], [replace 1 daily attack power], [15], [12], [2/4/4/6],
    [26th], [—], [gain 1 epic destiny utility power; gain 1 feat; gain 1 background point; gain 1 technique], [15], [13], [2/4/4/6],
    [27th], [—], [gain 1 encounter attack power], [16], [13], [2/4/4/6],
    [28th], [+1 to main], [gain 1 feat; gain 1 technique], [16], [14], [2/4/4/6],
    [29th], [—], [replace 1 daily attack power], [17], [14], [2/4/4/6],
    [30th], [—], [epic destiny feature; gain 1 feat; gain 1 technique], [18], [15], [2/4/4/7],
  )
  ]
}



