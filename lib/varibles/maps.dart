import 'package:flutter/material.dart';
import 'package:shawarma_master/varibles/strings.dart';

Map<dynamic, dynamic> mainItemShawarma = {
  "title": "Shawarma",
  "titleColor": Colors.deepOrange,
  "content": txtThreeTypeShawarma,
  "image": imgPlateShawarma,
  "buttonVisiblity": false,
  // "backgroundColors": [Colors.purpleAccent, Colors.red],
  "backgroundColors": [
    Colors.purpleAccent.withAlpha(200),
    Colors.red.withAlpha(100)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> mainItemShawaya = {
  "title": "Shawaya",
  "titleColor": Colors.orange,
  "content": txtTypesOfShawaya,
  "image": imgRedShawaya,
  "buttonVisiblity": false,
  "backgroundColors": [Colors.cyan.withAlpha(200), Colors.red.withAlpha(200)],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> subItemWhiteShawarma = {
  "title": "Arabic Shawarma",
  "titleColor": Colors.white70,
  "content": txtArabicShawarma,
  "image": imgWhiteShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> subItemRedShawarma = {
  "title": "Mexican Shawarma",
  "titleColor": Colors.redAccent,
  "content": txtMexicanShawarma,
  "image": imgRedShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.redAccent.withAlpha(200),
    Colors.redAccent.withAlpha(100)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> subItemYellowShawarma = {
  "title": "Yellow Shawarma",
  "titleColor": Colors.yellow[600],
  "content": txtYellowShawarma,
  "image": imgYellowShawarma,
  "buttonVisiblity": true,
  // "backgroundColors": [Colors.yellow, Colors.yellowAccent.withAlpha(100)],
  "backgroundColors": [
    Colors.orange.withAlpha(200),
    Colors.orangeAccent.withAlpha(100)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> subItemRedSpicyShawaya = {
  "title": "Red Spicy Shawaya",
  "titleColor": Colors.red[700],
  "content": txtRedSpicyShawaya,
  "image": imgRedShawaya,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.red.withAlpha(200),
    Colors.redAccent.withAlpha(100)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> subItemYellowShawaya = {
  "title": "Yellow Shawaya",
  "titleColor": Colors.yellow[600],
  "content": txtYellowShawaya,
  "image": imgYellowShawaya,
  "buttonVisiblity": true,
  // "backgroundColors": [Colors.yellow, Colors.yellowAccent.withAlpha(100)],
  "backgroundColors": [
    Colors.orange.withAlpha(200),
    Colors.orangeAccent.withAlpha(100)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> subItemFlavouredShawaya = {
  "title": "Flavoured Shawaya",
  "titleColor": Colors.grey,
  "content": txtFlavouredShawaya,
  "image": imgNormalShawaya,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemSpRumaliRoll = {
  "title": "SP Rumali Shawarma",
  "titleColor": Colors.white70,
  "content": txtSpRumaliShawarma,
  "image": imgSpRumaliShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemRumaliRoll = {
  "title": "Rumali Shawarma",
  "titleColor": Colors.white70,
  "content": txtRumaliShawwarma,
  "image": imgRumaliShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemRumaliPlate = {
  "title": "Rumali Plate",
  "titleColor": Colors.white70,
  "content": "AAAAAAAAAAAA",
  "image": imgRumaliShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemKuboosRoll = {
  "title": "Kuboos Shawarma",
  "titleColor": Colors.white70,
  "content": txtKuboosShawarma,
  "image": imgPitaShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemKuboosPlate = {
  "title": "Kuboos Plate",
  "titleColor": Colors.white70,
  "content": "BBBBBBBBBBBB",
  "image": imgPlateShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemPorottaRoll = {
  "title": "Porotta Roll Shawarma",
  "titleColor": Colors.white70,
  "content": txtPorottaShawarma,
  "image": imgPorottaShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemAldanRoll = {
  "title": "Al-Dan Shawarma",
  "titleColor": Colors.white70,
  "content": txtAldanShawarma,
  "image": imgAldanShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemAldanPlate = {
  "title": "Al-Dan Plate",
  "titleColor": Colors.white70,
  "content": "CCCCCCCCCCCCCCCCC",
  "image": imgAldanShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemBunShawarma = {
  "title": "Bun Shawarma",
  "titleColor": Colors.white70,
  "content": txtBunShawarma,
  "image": imgBunShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemSamoonShawarma = {
  "title": "Samoon Shawarma",
  "titleColor": Colors.white70,
  "content": txtSamoonShawarma,
  "image": imgSamoonShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemBreadShawarma = {
  "title": "Bread Shawarma",
  "titleColor": Colors.white70,
  "content": txtBreadShawarma,
  "image": imgBreadShawarma,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> sidesItemCheeseShawarma = {
  "title": "Cheese Shawarma",
  "titleColor": Colors.white70,
  "content": txtCheeseShawarma,
  "image": imgCheese,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.pinkAccent.withAlpha(100),
    Colors.pink.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> sidesItemButterShawarma = {
  "title": "Butter Shawarma",
  "titleColor": Colors.white70,
  "content": txtButterShawarma,
  "image": imgButter,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.black26, Colors.black12],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> sidesItemFriesShawarma = {
  "title": "Fries Shawarma",
  "titleColor": Colors.white70,
  "content": txtFriesShawrma,
  "image": imgFries,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.greenAccent.withAlpha(100),
    Colors.green.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> sidesItemFullMeetShawarma = {
  "title": "Full Meet \nShawarma",
  "titleColor": Colors.white70,
  "content": txtFullmeetShawarma,
  "image": imgFullMeet,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.orangeAccent.withAlpha(100),
    Colors.orange.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> sidesItemSaladsShawarma = {
  "title": "Shawarma \nSalad Items",
  "titleColor": Colors.white70,
  "content": txtSaladItems,
  "image": imgAllSalad,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.purpleAccent.withAlpha(100),
    Colors.purple.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> sidesItemMixedSaladShawarma = {
  "title": "Shawarma \nMixed Salad",
  "titleColor": Colors.white70,
  "content": txtMixedSalad,
  "image": imgMixedSalad,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.blueAccent.withAlpha(100),
    Colors.blue.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemWhiteMayonise = {
  "title": "White Mayonnaise",
  "titleColor": Colors.white70,
  "content": txtWhiteMayonnaise,
  "image": imgWhiteMayonnaise,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.blueAccent.withAlpha(100),
    Colors.blue.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemGreenChatni = {
  "title": "Green Chatni",
  "titleColor": Colors.white70,
  "content": "DDDDDDDDDDDDDDDDD",
  "image": imgGreenChatnee,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.green.withAlpha(100), Colors.green.withAlpha(50)],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemRedChatni = {
  "title": "Red Chatni",
  "titleColor": Colors.white70,
  "content": "EEEEEEEEEEEEEE",
  "image": imgRedChatnee,
  "buttonVisiblity": true,
  "backgroundColors": [Colors.pink.withAlpha(100), Colors.red.withAlpha(50)],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemShawayMasala = {
  "title": "Shawaya Masala",
  "titleColor": Colors.white70,
  "content": txtShawayaMasala,
  "image": imgShawayaMasala,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.orange.withAlpha(100),
    Colors.orange.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemBeetrootChatnee = {
  "title": "Beetroot Chatnee",
  "titleColor": Colors.white70,
  "content": txtBeetrootChatnee,
  "image": imgBeetrootChatnee,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.pink.withAlpha(100),
    Colors.pinkAccent.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemPothinaChatnee = {
  "title": "Pothina Chatnee",
  "titleColor": Colors.white70,
  "content": txtPothinaChatnee,
  "image": imgPothinaChatnee,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.green.withAlpha(100),
    Colors.greenAccent.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemTomatoChatnee = {
  "title": "Tomato Chatnee",
  "titleColor": Colors.white70,
  "content": txtTomatoChatnee,
  "image": imgTomatoChatnee,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.deepOrange.withAlpha(100),
    Colors.deepOrangeAccent.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemGreenMayonnaise = {
  "title": "Green Mayonnaise",
  "titleColor": Colors.white70,
  "content": txtGreenMayonnaise,
  "image": imgGreenMayonnaise,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.lightGreen.withAlpha(100),
    Colors.lightGreenAccent.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemRedMayonnaise = {
  "title": "Red Mayonnaise",
  "titleColor": Colors.white70,
  "content": txtRedMayonnaise,
  "image": imgRedMayonnaise,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.orange.withAlpha(100),
    Colors.orangeAccent.withAlpha(50)
  ],
  "buttonFunction": () {},
};

Map<dynamic, dynamic> additionalItemSweetChillySuace = {
  "title": "Sweet Chilly Sauce",
  "titleColor": Colors.white70,
  "content": txtRedChillySauce,
  "image": imgSweetChillySauce,
  "buttonVisiblity": true,
  "backgroundColors": [
    Colors.red.withAlpha(100),
    Colors.redAccent.withAlpha(50)
  ],
  "buttonFunction": () {},
};

////////////////////////////////

List<Map<dynamic, String>> floatingImagesAndTextsList = [
  {
    "image": imgFriesPoster,
    "content": "",
  },
  {
    "image": imgFriesBasket,
    "content": "",
  },
  {
    "image": imgMayonnaiseBowl,
    "content": "",
  },
  {
    "image": imgSpRumaliHd,
    "content": "",
  },
  {
    "image": imgRulamiShawarmaStack,
    "content": "",
  },
  {
    "image": imgMixedSaladBowl,
    "content": "",
  },
  {
    "image": imgPitaShawarmaServed,
    "content": "",
  },
  {
    "image": imgRumaliRollServed,
    "content": "",
  },
  {
    "image": imgShawarmaAndMechine,
    "content": "",
  },
  {
    "image": imgThreeKuboosPlate,
    "content": "",
  },
  {
    "image": imgPlateShawarma,
    "content": txtThreeTypeShawarma,
  },
  {
    "image": imgRedShawarmaFull,
    "content": txtMexicanShawarma2,
  },
  {
    "image": imgWhiteShawarmaFull,
    "content": txtArabicShawarma2,
  },
  {
    "image": imgYellowShawarmaFull,
    "content": txtYellowShawarma2,
  },
  {
    "image": imgRedShawaya,
    "content": txtRedSpicyShawaya2,
  },
  {
    "image": imgYellowShawaya,
    "content": txtYellowShawaya2,
  },
  {
    "image": imgNormalShawaya,
    "content": txtFlavouredShawaya2,
  },
  {
    "image": imgSpRumaliShawarma,
    "content": txtSpRumaliShawarma,
  },
  // {
  //   "image": imgRumaliShawarma,
  //   "content": txtRumaliShawwarma,
  // },
  // {
  //   "image": imgPitaShawarma,
  //   "content": txtKuboosShawarma,
  // },
];
