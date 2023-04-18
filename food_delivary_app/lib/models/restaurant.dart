import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);
  static Restaurant generateRestaurant() {
    return Restaurant('Restaurant', '15-20 min', '2.4 km', 'Restaurant',
        'assets/images/res_logo.png', 'Orange sandwiches is delicious ', 4.7, {
      'Recommended': Food.genarateRecommendedFoods(),
      'Popular': Food.generatePopularFoods(),
      'Noodles': [],
      'Pizza': [],
    });
  }
}
