import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodapp/models/fake_data.dart';
import 'category_item.dart';
class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return GridView(
       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
         // max toi da cac o duong cheo
         maxCrossAxisExtent: 200,
         //ti le chieu rong dai
         childAspectRatio: 3/3,
         crossAxisSpacing: 10,
         mainAxisSpacing: 10
       ),
       children:
          FAKE_DATA.map((e) => CategoryItem(category: e)).toList(),
     );
  }
}