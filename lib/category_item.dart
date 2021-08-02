import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'food_page.dart';
class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FoodPage(category: this.category),
        ));
      },
      splashColor: Colors.deepPurple,
      child: Container(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(this.category.content, style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'Ttim'),)
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  this.category.color.withOpacity(0.8),
                  this.category.color
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomRight
            ),
            color: this.category.color,
            borderRadius: BorderRadius.all(
                const Radius.circular(10)
            )
        ),
      ),
    );
  }
}