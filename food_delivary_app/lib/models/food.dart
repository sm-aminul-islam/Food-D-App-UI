class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingrediant;
  String about;
  bool hightLight;
  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingrediant, this.about,
      {this.hightLight = false});

  static List<Food> genarateRecommendedFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'No1 in sales',
          'Soba Soup',
          '50 min',
          4.5,
          '325 kcal',
          85,
          1,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            }
          ],
          'Simply put,ramen is a japanies noddle soup',
          hightLight: true),
      Food(
        'assets/images/dish2.png',
        'Low fat',
        'Sai Ua Phirai',
        '50 min',
        4.8,
        '320 kcal',
        95,
        2,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          }
        ],
        'Simply put,ramen is a japanies noddle soup',
      ),
      Food(
        'assets/images/dish3.png',
        'Tasty Food',
        'Orange Sandwaiches',
        '50 min',
        4.5,
        '325 kcal',
        85,
        1,
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {
            'Shrimp': 'assets/images/ingre2.png',
          },
          {
            'Egg': 'assets/images/ingre3.png',
          },
          {
            'Scallion': 'assets/images/ingre4.png',
          }
        ],
        'Simply put,ramen is a japanies noddle soup',
        hightLight: true,
      ),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/dish4.png',
          'Most Popular',
          'Tomato Checken',
          '50 min',
          4.8,
          '325 cal',
          110,
          0,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            }
          ],
          'simply put ,ramen is a Japanese noodle soup ',
          hightLight: true)
    ];
  }
}
