import 'package:flutter/material.dart';
import 'package:foodapp/categories_page.dart';
import 'package:foodapp/food_page.dart';
void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app cau toi',
      // initialRoute: '/',
      // routes: {
      //   '/FoodPage': (context) =>  FoodPage(),
      //   '/CategoriesPage': (context) =>  CategoriesPage(),
      // },
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Danh sach mon an', style: TextStyle(fontFamily: 'Ttim', fontSize: 20),),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: CategoriesPage(),
          ),
        )
      ),
    );
  }
}



