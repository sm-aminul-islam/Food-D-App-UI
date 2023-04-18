import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivary_app/constrants/colors.dart';
import 'package:food_delivary_app/models/restaurant.dart';
import 'package:food_delivary_app/screen/home/widgets/custom_appbar.dart';
import 'package:food_delivary_app/screen/home/widgets/food_list.dart';
import 'package:food_delivary_app/screen/home/widgets/food_view_list.dart';
import 'package:food_delivary_app/screen/home/widgets/restaurant_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          RestautantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
              child: FoodListView(
            selected,
            (int index) {
              setState(() {
                selected = index;
              });
            },
            pageController,
            restaurant,
          )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                      width: 10,
                      height: 10,
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10)),
                  activeDotDecoration: DotDecoration(
                      width: 10,
                      height: 10,
                      color: kbackground,
                      borderRadius: BorderRadius.circular(8),
                      dotBorder: DotBorder(
                        width: 10,
                        padding: 2,
                        color: kprimaryColor,
                      ))),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
            height: 60,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kprimaryColor,
        elevation: 2,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 35,
        ),
      ),
    );
  }
}
