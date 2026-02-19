import 'product_model.dart';

class Data {
  static List<ProductModel> generateProducts(){
    return [
      ProductModel(
          1,
          "assets/alcohol_1.png",
          "Absolut Vodka",
          "Vodka",
          "Absolut Vodka is known as one of the world's best Swedish vodkas. Made exclusively from natural ingredients with no added sugar, it showcases subtle flavours of grain and dried fruit. On the palate, it is full, rich and as smooth as vodka can be. Enjoy straight or in one of your favourite cocktails, like the Vodka Soda.",
          31.95
      ),
      ProductModel(
          2,
          "assets/alcohol_2.png",
          "Absolut Citron Vodka",
          "Vodka",
          "Originally launched in the 80's and made exclusively from natural ingredients; it is clear in colour with subtle aromas of fresh lemon and lime. These flavours carry through on the palate with an added nuance of lemon peel that makes for a refreshing finish; perfect for a cosmopolitan.",
          28.85
      ),
      ProductModel(
          3,
          "assets/alcohol_3.png",
          "Vodka 45 Supreme",
          "Vodka",
          "Vodka 45 is a supreme vodka at 45 alc./vol. Produced in the pure Slavic tradition and filtered by a sophisticated innovative process, this vodka is distinguished by its incomparable purity, strength and smoothness. It is best enjoyed neat or on the rocks, but also in many cocktails.",
          45.50
      ),
      ProductModel(
          4,
          "assets/alcohol_4.png",
          "Dalmore 40 Year Old",
          "Whiskey",
          "This limited-edition Dalmore has been aged for an astonishing four decades. It’s the latest in a series of super-premium whiskies from the famous distillery, and, like its forebears, it comes presented in a gorgeous display case.",
          12629.85
      ),
      ProductModel(
          5,
          "assets/alcohol_5.png",
          "Bowmore 26 Year Old",
          "Whisky",
          "Bowmore 'Vintner’s Trilogy’ French Oak Barrique 26 Year Old Single Malt Scotch Whisky Islay, Scotland is available for purchase. It has become increasingly popular relative to other wines, spirits and beers over the last ten years, with offers from merchants from Aug 2020 to Jul 2022.",
          749.1
      ),
      ProductModel(
          6,
          "assets/alcohol_6.png",
          "Johnnie Walker Blue Label",
          "Whisky",
          "This is an authentic re-creation of an original, 19th century blend that includes some 60-year-old malt whisky, and was sold only to their most valued customers at the time. Each bottle has its own serial number and comes in a silk-lined box.",
          359.95
      ),
      ProductModel(
          7,
          "assets/alcohol_7.png",
          "Canadian Club 45 Year Old",
          "Scotch",
          "The fifth release in the Chronicles series from Canadian Club has robust aromas of pear, baking spices, caramel and oak. With enticing flavours of sweet toffee, hints of aged leather and a lengthy finish this previous award winner continuous the tradition of excellence. Enjoy with your after-dinner espresso and butter tart.",
          499.95
      ),
      ProductModel(
          8,
          "assets/alcohol_8.png",
          "Nikka Whisky Miyagikyo Single Malt",
          "Whisky",
          "This elegant Japanese single malt is aged in Sherry casks, contributing to its intriguing flavour profile. You'll effortlessly notice banana, licorice, honey, oak, chocolate and baking spice notes. It's full-bodied and complex with a long finish. Add a splash to peanut brittle ice cream for an adult-inspired dessert.",
          94.95
      ),
      ProductModel(
          9,
          "assets/alcohol_9.png",
          "Aultmore 18 Year",
          "Scotch",
          "Primarily used by John Dewar's and Sons for their blends, Aultmore rarely sees the market as a single malt, other than the occasional independent bottling. The distillery prides itself over the pristine source of their water from the Auchinderran burn that filters through the foggie moss. This expression launched in 2015, following the success of Aultmore's 12, 21, and 25-year releases the prior year. It's available at select international markets and Duty Free retail outlets. Bottled at 46% ABV.",
          153.85
      ),
      ProductModel(
          10,
          "assets/alcohol_10.png",
          "Bumbu Craft Rum",
          "Rum",
          "This craft spirit is made in small batches at a 19th century distillery in Barbados, using a 400-year-old recipe. Rumoured to be a favourite of sailors and seaside merchants in the colonial West Indies, its tropical fruit and spicy notes give it a distinctively Caribbean character.",
          58.65
      ),

    ];
  }

  static List<ProductModel> generateCategories(){
    return [
      ProductModel(
          1,
          "assets/vodka.jpg",
          "Vodka",
          "Vodka",
          "men shoes",
          99.56
      ),
      ProductModel(
          2,
          "assets/tequila.jpg",
          "Tequila",
          "Tequila",
          "men shoes",
          137.56
      ),
      ProductModel(
          3,
          "assets/gin.jpg",
          "Gin",
          "Gin",
          "men shoes",
          99.56
      ),
      ProductModel(
          4,
          "assets/alcohol_10.png",
          "Rum",
          "Rum",
          "men shoes",
          212.56
      ),
      ProductModel(
          5,
          "assets/alcohol_7.png",
          "Whiskey",
          "Whiskey",
          "men shoes",
          212.56
      ),
      ProductModel(
          6,
          "assets//alcohol_9.png",
          "Brandy",
          "Brandy",
          "men shoes",
          212.56
      ),
    ];
  }
}