import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivary_app/constrants/colors.dart';
import 'package:food_delivary_app/models/food.dart';
import 'package:food_delivary_app/screen/home/widgets/food_quantity.dart';

class FoodDetail extends StatelessWidget {
  FoodDetail(this.food);
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kbackground,
      child: Column(
        children: [
          Text(
            food.name,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildIconText(
                  Icons.access_time_outlined, Colors.blue, food.waitTime),
              _buildIconText(
                  Icons.star_outline, Colors.amber, food.score.toString()),
              _buildIconText(
                  Icons.local_fire_department_outlined, Colors.red, food.cal)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          FoodQuantity(food),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'Ingredients',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            food.ingrediant[index].values.first,
                            width: 50,
                          ),
                          Text(food.ingrediant[index].keys.first),
                        ],
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: food.ingrediant.length),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            food.about,
            style: TextStyle(wordSpacing: 1.2, height: 1.5, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
